<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;
    protected $table = 'students';
    
    protected $fillable = ['first_name', 'last_name', 'birthdate', 'address', 'class_id'];

    public function class()
    {
        return $this->belongsTo(Classroom::class, 'class_id');
    }
}