<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Organization;


class OrganizationController extends Controller
{
    //
    public function getting_number(){
        $organization = new Organization;
        return $organization->number_organization();
    }

}
