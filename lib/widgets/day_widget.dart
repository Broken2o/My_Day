import 'package:flutter/material.dart';
import 'package:my_day/models/counter_item.dart';

class ListRow extends StatefulWidget {
  const ListRow({super.key, required this.counteritem});
  final CounterItem counteritem;

  @override
  State<ListRow> createState() => _ShopRowState();
}

class _ShopRowState extends State<ListRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          SizedBox(
    height: MediaQuery.of(context).size.height*0.15,
    width: MediaQuery.of(context).size.width*0.2,
    child: Image(image: AssetImage(widget.counteritem.image),),),
          const SizedBox(
            width: 20,),
          Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: widget.counteritem.color,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${widget.counteritem.count}',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
          const SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.counteritem.color,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.counteritem.text,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: widget.counteritem.color,
            ),
            child: IconButton(
              // color: Colors.blueGrey.shade200,
              onPressed: (){
                widget.counteritem.count++;
                setState(() {});
              },

              icon: const Icon(
                Icons.add_sharp,
                size: 30,
              ),
            ),
          ),
        ]
    );
  }
}




