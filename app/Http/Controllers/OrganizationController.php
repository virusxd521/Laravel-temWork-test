<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Organization;


class OrganizationController extends Controller
{
    //
    public function getting_number()
    {
        $organization = new Organization;

        $data = [
            'number' => $organization->number_organization()
        ];
        return json_encode($data);
    }

    
    public function showing_advertisment()
    {
        $organization_advertisement = Organizaion::with(["advertisement"]);
    }
}
