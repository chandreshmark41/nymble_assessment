import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nymble_assessment/factory/horizontal_list.dart';

class BoxItemWidget extends StatefulWidget {

  final Item item;

  const BoxItemWidget({super.key, required this.item});

  @override
  State<BoxItemWidget> createState()  => _BoxItemWidgetState();

}

class _BoxItemWidgetState extends State<BoxItemWidget>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(padding: EdgeInsets.fromLTRB(10.0, 2.0, 10.0, 2.0),
    child: Container(
      margin: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
      height: 180,
      width: 120,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3.0,
              spreadRadius: 1,
              // offset: Offset(
              //   2,
              //   2,
              // ),
            )
          ],
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
          //shape: BoxShape.rectangle,
          color: Colors.white,
        //image: DecorationImage(image: NetworkImage(widget.items.image!), fit: BoxFit.fill)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            //padding: const EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
            //padding: EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
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
                //shape: BoxShape.rectangle,
                image: DecorationImage(image: NetworkImage(widget.item.image!), fit: BoxFit.fill)
            ),
          ),
          SizedBox(
            height: 35,
          ),
          Text(widget.item.text!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
        ],
      ),
    ),
    );

  }
}

