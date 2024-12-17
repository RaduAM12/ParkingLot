package com.parking.parkinglot.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.OneToOne;

@Entity
public class CarPhoto {
    private Long id;
    String filename;
    String fileType;
    byte[] filecontent;
    Car car;

@Id
@GeneratedValue
    public Long getId(){
            return id;
    }
@OneToOne
    public Car getCar(){
    return car;
    }

    public String getFilename() {
        return filename;
    }

    public String getFileType() {
        return fileType;
    }

    public byte[] getFilecontent() {
        return filecontent;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public void setFileType(String fileType) {
        this.fileType = fileType;
    }

    public void setFilecontent(byte[] filecontent) {
        this.filecontent = filecontent;
    }

    public void setCar(Car car) {
        this.car = car;
    }
}
