import 'package:flutter/material.dart';


class DoctorModel {
    String? name;
    String? category;
    String? description;
    String? location;
    double? fees;
    double? rating;
    double? Reviews;
    String? image;

  DoctorModel(
    {
        this.name,
        this.category,
        this.description,
        this.location,
        this.fees,
        this.rating,
        this.Reviews,
        this.image,
    });
    
    }