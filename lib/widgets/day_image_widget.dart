import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' ;

class DayImageWidget extends StatelessWidget{
  const DayImageWidget ({super.key});

  @override
  Widget build (BuildContext context){
    return Center(
      child: SizedBox(
          height: MediaQuery.of(context).size.height*0.5,
          width: MediaQuery.of(context).size.width*0.85,
          child: const Image(
              image: AssetImage('assets/images/Day.png'),),),
    );
  }
}



