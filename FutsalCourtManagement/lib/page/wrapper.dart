import "package:flutter/material.dart";
import '../dashboard.dart';

//Wrapper mean this widget listen for authentication 

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


//return either Home or Authenticate widgets
return Dashboard();
  }
}