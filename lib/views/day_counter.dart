import 'package:flutter/material.dart';
import 'package:my_day/constants/counterlist.dart';
import 'package:my_day/widgets/day_widget.dart';

class MYList extends StatelessWidget {
  const MYList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(
        backgroundColor:  Colors.brown.shade300,
        title: const Text("My List" ,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,fontFamily: 'cross origin'),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.brown.shade100,
                Colors.brown.shade300,
                Colors.brown.shade500,
                Colors.brown.shade700,
              ],
            )),
        child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children:[
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context,index ){ return ListRow(counteritem: counterList[index] );},
                separatorBuilder: (context,index) => const SizedBox(height: 20,) ,
                itemCount: counterList.length,
              ),],),
        ),
      ),
    );
  }
}
//
//
