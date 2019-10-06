<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', "ExampleController@test");



$router->group(['prefix' => 'api'], function () use ($router) {
	//用户
	$router->get('/users', "UserController@getUserList");
	$router->get('/user/info/{id}', "UserController@getUserInfo");
	$router->post('/user', "UserController@createUser");
	$router->post('/user/edit/{id}', "UserController@editUser");


	//角色管理



});

