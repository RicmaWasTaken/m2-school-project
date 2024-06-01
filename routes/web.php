<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\ClassroomController;
use App\Models\Classroom;
use App\Models\Student;

Route::get('/', function () {
    return view('welcome');
});

// Student routes
Route::get('/students', [StudentController::class, 'index'])->name('students.index');
Route::get('/students/create', [StudentController::class, 'create'])->name('students.create');
Route::post('/students', [StudentController::class, 'store'])->name('students.store');

// Class-specific routes
Route::get('/classes', [ClassroomController::class, 'index'])->name('classrooms.index');
Route::get('/classes/{name}', [ClassroomController::class, 'showByName'])->name('classrooms.show');

//Testing bc laravel will be the end of me 
Route::get('/test', function () {
    return Classroom::all();
});
Route::get('/test-students', function () {
    return Student::all();
});