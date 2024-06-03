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
            // Convert last name to uppercase bc France lol
            $student->last_name = strtoupper($student->last_name);
            // Calculate student's current age (if statement is useless bc birthdate is required but security)
            if (!empty($student->birthdate)) {
                $birthdate = Carbon::createFromFormat('Y-m-d', $student->birthdate);
                $ageInt = (int)$birthdate->diffInYears($mytime);
                $student->studentAge = "$ageInt years old";
            } else {
                $student->studentAge = 'Immortal';
            }
        }
        return view('students.index', compact('students', 'mytime'));
    }

    //Fetches all available class names and returns them to the view for the dropdown
    public function create(){
        $classes = Classroom::all();
        return view('students.create', compact('classes'));
    }

    // Yeet a new student into the db
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
