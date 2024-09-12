<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Inertia\Inertia;

class DashboardController extends Controller
{
    public function index()
    {
        $imageFiles = Storage::files('public/images');
        $imagePaths = array_map(function ($file) {
            return str_replace('public/', '', $file);
        }, $imageFiles);

        return Inertia::render('Dashboard', [
            'imagePaths' => $imagePaths
        ]);
    }
}
