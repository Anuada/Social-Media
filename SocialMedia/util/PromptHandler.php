<?php

class PromptHandler {

    public function unauthorizedAccess() {
        return "Unauthorized Access";
    }

    public function invalidCredentials() {
        return "Invalid Email or Password";
    }

    public function welcomeUser($name) {
        return "Welcome " . $name . "!";
    }

    public function loginFirst(){
        return "User must login first";
    }

    public function emptyFields() {
        return "Fill out the missing fields";
    }

    public function logout($name){
        return "Goodbye " . $name . "!";
    }

    public function passwordMatch(){
        return "Passwords do not match";
    }

    public function successfulRegister(){
        return "User successfully registered";
    }
    public function errorRegister(){
        return "No user was registered";
    }

    public function noPosts(){
        return "No posts available";
    }

    public function postCreate(){
        return "Post Successfully Created";
    }

    public function noPostCreate(){
        return "No Post Was Created";
    }

    public function postUpdate(){
        return "Post Successfully Updated";
    }

    public function noPostUpdate(){
        return "No Post Was Updated";
    }

    public function postDelete(){
        return "Post Successfully Deleted";
    }

    public function noPostDelete(){
        return "No Post Was Deleted";
    }

    public function noPost(){
        return "No post found";
    }

    public function noComment(){
        return "No comments found";
    }

    public function successComment( ){
        return "User Successfully commented";
    }

    public function errorComment( ){
        return "No comment was made";
    }

    public function successAccount(){
        return "Account successfully updated";
    }

    public function errorAccount(){
        return "Account was not updated";
    }

    public function notMatch(){
        return "Passwords do not match";
    }

    public function successChangePass(){
        return "User successfully changed password";
    }

    public function errorChangePass( ){
        return "user did not change password";
    }

    public function successDeleteAcc(){
        return "Account Successfully delete";
    }

    public function errorDeleteAcc(){
        return "Error deleting account";
    }

}