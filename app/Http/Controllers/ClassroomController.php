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

    // Display details of a single classroom
    public function show($id){
        // Find the classroom by ID
        $classroom = Classroom::findOrFail($id);
        // Return a view with the classroom data
        return view('classrooms.class', compact('classroom'));
    }
    
    public function showByName($name)
    {
        // Find the classroom by its name
        $classroom = Classroom::where('name', $name)->firstOrFail();

        // Return a view with the classroom data
        return view('classrooms.show', compact('classroom'));
    }
}
