<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RegisterController extends Controller
{
	/**
	* Display details of the specified node.
	*/
	public function details()
	{
		// input validation
		/**
		* input must be all digit, no other characters allowed e.g. decimal point
		* input must be between 1-15
		* input must not start in 0 e.g. 01
		*/
		if (!filter_var($_GET['child'], FILTER_VALIDATE_INT, array("options" => array("min_range"=>1, "max_range"=>15))))
		{
			return response()->json([
				'status'	=> 'danger',
				'message' 	=> 'You entered an invalid input.',]);
		}
		// valid user input
		if ($_GET['child'] == 1) {
			return response()->json([
				'status'	=> 'success',
				'child' 	=> $_GET['child'],
				'parent' 	=> 'N/A',
				'position'	=> 'Root',]);
		}

		$node = ($this->isEven()) ? 'App\NodeEven' : 'App\NodeOdd';
		$position = $node::select('position')->where('child', $_GET['child'])->get();
		$post = $position[0]['position'];

		$res = array(
			'status'	=> 'success',
			'child' 	=> $_GET['child'],
			'parent' 	=> $this->parentFind(),
			'position' 	=> $this->postConvert($post),
		);
		return response()->json($res);
	}
	/**
	* Determine if user input is even or odd
	*/	
	private function isEven()
	{
		return $_GET['child'] % 2 == 0;
	}
	/**
	* Converts DB position, post, to string
	*/	
	private function postConvert($post)
	{
		switch ($post) {
			case "L":
				return 'Left';
			case "M":
				return 'Middle';
			case "R":
				return 'Right';
		}
	}
	/**
	* Looks for the parent node based on the tree pattern
	*/	
	private function parentFind()
	{
		if ($_GET['child'] == 2 || $_GET['child'] == 3) {
			return 1;
		} else {
			if ($this->isEven()) {
				return ($_GET['child'] < 10) ? 2 : 6;
			} else {
				return ($_GET['child'] < 11) ? 3 : 7;
			}
		}
	}
}

