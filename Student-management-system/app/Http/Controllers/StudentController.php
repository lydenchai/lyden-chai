<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Student;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function studentInfo()
    {
        $students = Student::latest()->get();
        return response()->json([
            'Message' => 'Student data',
            'data' => $students,
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function createAndUpdate(Request $request)
    {
        $request->validate([
            'user_id' => 'required',
            'first_name' => 'required',
            'last_name' => 'required',
            'class' => 'required',
            'phone' => 'required',
            'gender' => 'required',
            'image' => 'nullable|image|mimes:jpg,jpeg,png,gif,jfif|max:1999'
        ]);
        $id = request('id');
        if ($id) {
            $student = Student::findOrFail($id);
            $status = 200;
            $message = 'Updated';
        } else {
            $student = new Student();
            $status = 201;
            $message = "Created";
        }
        $request->file('image')->store('public/images');
        $student->user_id = $request->user_id;
        $student->first_name = $request->first_name;
        $student->last_name = $request->last_name;
        $student->class = $request->class;
        $student->phone = $request->phone;
        $student->gender = $request->gender;
        $student->image = $request->file('image')->getClientOriginalName();
        $student->save();
        return response()->json([
            'Message' => $message,
            'data' => $student,
        ], $status);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return Student::findOrFail($id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $isDeleted = Student::destroy($id);
        if ($isDeleted == 1) {
            return response()->json(['massage' => 'Deleted'], 200);
        } else {
            return response()->json(['massage' => 'Not Found'], 404);
        }
    }
}
