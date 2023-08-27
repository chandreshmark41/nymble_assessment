import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nymble_assessment/factory/horizontal_list.dart';

class CircularItemWidget extends StatefulWidget {

  final Item item;

  const CircularItemWidget({super.key, required this.item});

  @override
  State<CircularItemWidget> createState()  => _CircularItemWidgetState();

}

class _CircularItemWidgetState extends State<CircularItemWidget>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
        padding: EdgeInsets.fromLTRB(7.5, 0, 7.5, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              //padding: const EdgeInsets.fromLTRB(0, 0, 10.0, 0),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 1.0,
                      spreadRadius: 1,
                      offset: Offset(
                        2,
                        2,
                      ),
                    )
                  ],
                  shape: BoxShape.circle,
                  image: DecorationImage(image: NetworkImage(widget.item.image!), fit: BoxFit.fill)
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(widget.item.text!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
          ],
        ),
      );

  }
}

