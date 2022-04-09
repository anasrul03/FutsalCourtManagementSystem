import "package:flutter/material.dart";
import 'package:testing/page/home_page.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {


//return either Home or Authenticate widgets
return home_page();
  }
}