<?php

namespace App\Http\Controllers;

use App\Service\UserService;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public  $userService;

    public function __construct()
    {
        $this->userService = new UserService();
    }

    public function getUserList(Request $request)
    {

    	return $this->userService->queryUserList($request->toArray());
    }

    public function getUserInfo(Request $request, $id)
    {
		return $this->userService->getUserInfo($id);
    }


}
