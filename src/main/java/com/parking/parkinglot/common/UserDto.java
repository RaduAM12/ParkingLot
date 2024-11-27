package com.parking.parkinglot.common;

public class UserDto {

    String username;
    String email;
    Long id;




    public UserDto(String username, String email, Long id){

        this.username=username;
        this.email=email;
        this.id=id;


    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }
    public Long getId() {
        return id;
    }

}
