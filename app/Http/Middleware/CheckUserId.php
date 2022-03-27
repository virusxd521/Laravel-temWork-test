<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Individual;
use App\Models\User;


class CheckUserId
{

    // Daniel --> custom middleware


    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        // if(Auth::id() === $user->id){
        //     return $next($request);
        // } else {
        //     return response()->json_encode(['error' => 'Unauthorized'], 403);
        // }
        
        
    }
}
