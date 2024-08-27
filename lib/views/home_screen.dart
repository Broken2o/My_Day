import 'package:flutter/material.dart';
import 'package:my_day/views/day_counter.dart';
import 'package:my_day/widgets/button_container.dart';
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  Colors.brown.shade300,
        title: const Text("My List" ,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,fontFamily: 'cross origin'),
        ),
        centerTitle: true,
        leading: const Icon(Icons.view_list_sharp),
      ),
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/day.png'),
              fit: BoxFit.cover,
            ),
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                    ButtonContainer(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=> const MYList()));
                        },
                    ),
            ],
          )
      ),
    );
  }
}
