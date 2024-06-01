<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;
use App\Models\Classroom;
use Illuminate\Support\Carbon;

class StudentController extends Controller
{
    // Display all students
    public function index(){
        $students = Student::with('class')->get();
        $mytime = Carbon::today();
        foreach ($students as $student) {
            if (!empty($student->birthdate)) {
                $birthdate = Carbon::createFromFormat('Y-m-d', $student->birthdate);
                $ageInt = (int)$birthdate->diffInYears($mytime);
                $student->studentAge = "$ageInt years old";
            } else {
                $student->studentAge = 'Unknown';
            }
        }
        return view('students.index', compact('students', 'mytime'));
    }

    // Show students of a chosen classroom
    public function showByClassroom($classroomId){
        $classroom = Classroom::findOrFail($classroomId);
        $students = $classroom->students;
        return view('students.by_classroom', compact('classroom', 'students'));
    }

    // Show form to add a student
    public function create(){
        $classes = Classroom::all();
        return view('students.create', compact('classes'));
    }

    // Store a new student
    public function store(Request $request){
        $validatedData = $request->validate([
            'first_name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'birthdate' => 'required|date',
            'address' => 'required|string|max:255',
            'class_id' => 'required|exists:classes,id' // Ensure the class_id exists in the classes table
        ]);

        // Create a new student record with the validated data
        Student::create($validatedData);
    }
}
