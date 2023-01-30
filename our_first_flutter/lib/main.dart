import 'package:flutter/material.dart';

void main() 
{
  print("Nu tester vi klasser"); 

  TestClass t = TestClass();

  print('Id: ${t.id }  Name: ${t.name}');
  //print(t.ident);

  Test3 t3 = Test3();
  t3.id = 1000; // Kald af property
}

class TestClass
{
  int id = 0;
  String? name;
  //String ident;
  TestClass({int id = 0 , String? name}) // : ident = "Id: $id  Name: $name"
  {
    this.id =  id ?? 1000; //Hvis id ikke er null lægges den ind i this.id og ellers 1000
    this.id = id;
    this.name = name;
  }
}

class Test2   // Constructor parametre er fields/property direkte
{
  int? id;
  String? name;

  Test2({this.id = 0, this.name = "Michael"});
}

class Test3
{
  // Property
  //int? id;    // id er en public property
  //Field
  int? _id;      // _id er en private field
  String? name;

  Test3(int id){  // Der kan ikke stå properties som parameter f.eks. this.id
    this.id = id;  // Tilskriver property fra parameter.
  }

   //Property
  int? get id{return _id;}
  set id(int? id){_id = id;}


}