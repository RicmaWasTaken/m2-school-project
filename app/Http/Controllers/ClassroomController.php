<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Classroom;

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
            $student->last_name = strtoupper($student->last_name);
        }

        // Return a view with the classroom data
        return view('classrooms.show', compact('classroom', 'randomQuote'));
    }
}
