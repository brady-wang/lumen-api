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

    //用户列表
    public function getUserList(Request $request)
    {

    	return $this->userService->queryUserList($request->toArray());
    }

    //用户信息
    public function getUserInfo(Request $request, $id)
    {
		return $this->userService->getUserInfo($id);
    }

    //用户新增
    public function createUser(Request $request)
    {
    	return $this->userService->createUser($request->toArray());
    }

    public function editUser(Request $request,$id)
    {
	    return $this->userService->editUser($request->toArray(),$id);
    }



}
