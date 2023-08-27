import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nymble_assessment/models/horizontal_list.dart';

class NonExistItemWidget extends StatefulWidget {

  final Item item;

  const NonExistItemWidget({super.key, required this.item});

  @override
  State<NonExistItemWidget> createState()  => _NonExistItemWidgetState();

}

class _NonExistItemWidgetState extends State<NonExistItemWidget>{

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

            )
          ],
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,
              alignment: Alignment.center,
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

              ),
              child: const Text("Not exist", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
            ),
            SizedBox(
              height: 35,
            ),
            //Text(widget.item.text!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    );

  }
}

