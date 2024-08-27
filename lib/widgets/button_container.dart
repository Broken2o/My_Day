import 'package:flutter/material.dart';

class ButtonContainer extends StatelessWidget {
  const ButtonContainer({super.key, required this.onTap});

  final Function() onTap;



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration:  BoxDecoration(
              color: Colors.brown.shade300
          ),
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height*0.08,

          child:
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const Text(
                  "My Day",
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'cross origin',
                  ),
                ),
                const SizedBox(width:10,),
                Icon(
                  Icons.favorite,
                  color: Colors.black26,
                  size: 24.0,
                ),
              ]
          )
      ),
    );}}