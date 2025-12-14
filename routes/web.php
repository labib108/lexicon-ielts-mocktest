<?php

use App\Http\Controllers\AdminMocktestController;
// Frontend Controller
use App\Http\Controllers\HomeController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

// Backend Controller

Auth::routes();
Route::get('/', function () {
    return redirect()->route('login');
});

Route::middleware(['auth', 'user-access:Admin'])->group(function () {

    // mock test start -------------
    Route::get('admin/mocktests', [AdminMocktestController::class, 'mocktests'])->name('admin.mocktests');

    // user info
    Route::get('admin/mocktests/{mockTest}/user-info', [AdminMocktestController::class, 'userInfoShow'])->name('userInfoShow');
    Route::post('admin/mocktests/{mockTest}/user-info', [AdminMocktestController::class, 'userInfoSave'])->name('userInfoSave');

    // identify which mocktest is going
    Route::get('admin/test/dashboard/{mockTest}', [AdminMocktestController::class, 'identifyMocktest'])->name('admin.test.deshboard');

    // listening show and store
    Route::get('admin/listening/{mockTest}', [AdminMocktestController::class, 'showListeningQuestion'])->name('admin.listening.show');
    Route::post('admin/listening/{mockTest}', [AdminMocktestController::class, 'storeListeningQuestion'])->name('admin.listening.store');
    Route::get('admin/listening/result/{mockTest}', [AdminMocktestController::class, 'showListeningResult'])->name('admin.listening.result.show');

    // reading show and store
    Route::get('admin/reading/{mockTest}', [AdminMocktestController::class, 'showReadingQuestion'])->name('admin.reading.show');
    Route::post('admin/reading/{mockTest}', [AdminMocktestController::class, 'storeReadingQuestion'])->name('admin.reading.store');
    Route::get('admin/reading/result/{mockTest}', [AdminMocktestController::class, 'showReadingResult'])->name('admin.reading.result.show');

    // writing show and store
    Route::get('admin/writing/{mockTest}', [AdminMocktestController::class, 'showWritingQuestion'])->name('admin.writing.show');
    Route::post('admin/writing/{mockTest}', [AdminMocktestController::class, 'storeWritingAnswers'])->name('admin.writing.store');

    //Result
    Route::get('admin/result/{mockTest}', [AdminMocktestController::class, 'showResult'])->name('admin.result.show');
    Route::get('admin/writing/{mockTest}/show', [AdminMocktestController::class, 'showWritingAnswer'])->name('admin.writingAnswer.show');
    Route::get('admin/mocktest-result', [AdminMocktestController::class, 'mocktestResult'])->name('mocktest.result');
    
    Route::get('admin/mocktest/score/update', [AdminMocktestController::class, 'showUserForm'])->name('mocktest.score.show');
    Route::post('admin/mocktest/score/update', [AdminMocktestController::class, 'mocktestResultUpdate'])->name('mocktest.score.update');


    //Student List
    Route::get('admin/student-list', [AdminMocktestController::class, 'studentList'])->name('student.list');


    //email
    Route::get('admin/mocktest/result', [AdminMocktestController::class, 'showResultToSend'])->name('mocktest.result.send');
    Route::post('result/{user}/send-mail', [AdminMocktestController::class, 'sendResultMail'])->name('mocktest.result.sendMail');

});

Route::middleware(['auth'])->group(function () {
    Route::resource('users', UserController::class);
    Route::put('profile-update/{id}', [UserController::class, 'profileUpdate']);
    Route::put('/profile-password-reset/{id}', [UserController::class, 'updatePassword'])->name('profile.password.reset');

    Route::get('dashboard', [HomeController::class, 'dashboard']);

});
