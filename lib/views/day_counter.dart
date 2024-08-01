import 'package:flutter/material.dart';
import 'package:my_day/constants/counterlist.dart';
import 'package:my_day/widgets/day_image_widget.dart';
import 'package:my_day/widgets/day_widget.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade50,
        foregroundColor: Colors.blueGrey.shade600,
        leading: const Icon(Icons.home),
        centerTitle: true,
        title: const Text(
          "Home",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
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
          child:  Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                 const DayImageWidget(),
                      ElevatedButton(
                        child:
                        Wrap(
                          children: <Widget>[
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
                              color: Colors.blueGrey.shade900,
                              size: 24.0,
                            ),
                          ],
                        ),

                        onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context)=> const MYList()));
                          },
                ),
            ],
            ),
          )
      ),
    );
  }
}



class MYList extends StatelessWidget {
  const MYList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade100,
        foregroundColor: Colors.blueGrey,
        leading: const Icon(Icons.view_list_sharp),
        centerTitle: true,
        title: const Text(
          "My List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
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
    Column(
    children:[
      ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context,index ){ return ListRow(counteritem: counterList[index] );},
        separatorBuilder: (context,index) => const SizedBox(height: 20,) ,
        itemCount: counterList.length,
      ),],),
      ),
    );
  }
}
//
//
