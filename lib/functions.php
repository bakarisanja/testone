<?php

function returnError($errorMessage = '')
{
	$errorArray = array(
		'error'			=> true,
		'error_message' => $errorMessage,
		'message_date' 	=> date('m/d/Y H:i:s'),
		'post'			=> $_POST
		);
	$encodedJSN = json_encode($errorArray);
	header('Content-Type: application/json; charset=utf-8');
	echo $encodedJSN;
	exit();
}