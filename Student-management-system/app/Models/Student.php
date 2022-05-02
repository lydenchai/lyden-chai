<?php

namespace App\Models;

use Modules\Score\Entities\Score;
use Illuminate\Database\Eloquent\Model;
use Modules\Disciple\Entities\Disciple;
use Module\Permission\Entities\Permission;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Student extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'user_id',
        'first_name',
        'last_name',
        'class',
        'phone',
        'gender',
        'image'
    ];

    protected $casts = [
        'created_at' => 'date:D, d-F-Y h:i A',
        'updated_at' => 'date:D, d-F-Y h:i A'
    ];

    protected $appends = ['scores', 'permissions', 'disciples'];

    public function getPermissionsAttribute()
    {
        $student = Student::where('id', $this->id)->first();
        $permission = Permission::where('user_id', $this->user_id)->get();
        return $permission;
    }

    public function getScoresAttribute()
    {
        $student = Student::where('id', $this->id)->first();
        $scores = Score::where('user_id', $this->user_id)->get();
        return $scores;
    }

    public function getDisciplesAttribute()
    {
        $student = Student::where('id', $this->id)->first();
        $disciple = Disciple::where('user_id', $this->user_id)->get();
        return $disciple;
    }
}
