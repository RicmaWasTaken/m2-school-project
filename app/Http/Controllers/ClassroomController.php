<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Classroom;
use Illuminate\Support\Carbon;

class ClassroomController extends Controller
{
    // Display all classrooms
    public function index(){
        $classrooms = Classroom::withCount('students')->get();
        return view('classrooms.index', compact('classrooms'));
    }
    
    public function showByName($name){
        //Added a whole thing to generate a random quote in case there's no data in a class but they're all full lol
        $quotes = array("No data found", "Mmmwhat ?", "Oh, was there supposed to be content here ?", "GET OUT OF MY ROOM MOM !!!", "check dat url buddy", "Ernor 69 : Data not finded :(");
        $maxPoint = count($quotes) - 1;
        $randomPoint = mt_rand(0, $maxPoint);
        $randomQuote = $quotes[$randomPoint]; 
        // Find the classroom by its name
        $classroom = Classroom::where('name', $name)->firstOrFail();
        $students = $classroom->students;
        foreach ($students as $student) {
            //Capitalize last names bc france i guess
            $student->last_name = strtoupper($student->last_name);
            //Calculate student's age
            $mytime = Carbon::today();
            if (!empty($student->birthdate)) {
                $birthdate = Carbon::createFromFormat('Y-m-d', $student->birthdate);
                $ageInt = (int)$birthdate->diffInYears($mytime);
                $student->studentAge = "$ageInt years old";
            } else {
                $student->studentAge = 'Immortal';
            }
        }
        return view('classrooms.show', compact('classroom', 'randomQuote'));
    }
}
