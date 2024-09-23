<?php


use App\Models\User;
use Tests\TestCase;

use Illuminate\Foundation\Testing\RefreshDatabase;


//    use RefreshDatabase;

it('returns a successful response', function () {
    $response = $this->get('/');

    $response->assertStatus(200);
});



it('dashboard returns successful response', function () {
    $user = User::factory()->create();

    $response = $this->actingAs($user)->get('/dashboard');

    $response->assertStatus(200);
});


it('example-dashboard returns successful response', function () {
    $user = User::factory()->create();

    $response = $this->actingAs($user)->get('/example-dashboard');

    $response->assertStatus(200);
});
