import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nymble_assessment/models/banner_with_color.dart';

class BannerWithColorWidget extends StatefulWidget{

  const BannerWithColorWidget({super.key, required this.bannerWithColor});
  final BannerWithColor bannerWithColor;

  @override
  State<BannerWithColorWidget> createState() => _BannerWithColorWidgetState();


}

class _BannerWithColorWidgetState extends State<BannerWithColorWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(10),
      height: 140,
      width: 240,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.blue,
        //image: DecorationImage(image: NetworkImage(widget.bannerWithImage.image!), fit: BoxFit.fill),
      ),
      child: Stack(
          children:[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              verticalDirection: VerticalDirection.down,
              children: [
                Container(
                  height: 30,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.black.withOpacity(0.50)
                  ),
                  child: Text(widget.bannerWithColor.headerText!, style: const TextStyle(color: Colors.white, fontSize: 16),),
                ),
                Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Container(
                      height: 25,
                      width: 160,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                          color: Colors.black.withOpacity(0.50)
                      ),
                      child: Text(widget.bannerWithColor.footerText!, style: const TextStyle(color: Colors.white, fontSize: 13),),
                    ),

                    widget.bannerWithColor.footerIcon! ? Icon(Icons.arrow_forward, color: Colors.white,) : Text(""),
                  ],
                )
              ],
            ),
          ]
      ),
    );
  }
}