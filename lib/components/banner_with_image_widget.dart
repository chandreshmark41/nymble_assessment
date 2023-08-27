import 'package:flutter/material.dart';
import 'package:nymble_assessment/models/banner_with_image.dart';

class BannerWithImageWidget extends StatefulWidget{

  const BannerWithImageWidget({super.key, required this.bannerWithImage});
  final BannerWithImage bannerWithImage;

  @override
  State<BannerWithImageWidget> createState() => _BannerWithImageWidgetState();
}

class _BannerWithImageWidgetState extends State<BannerWithImageWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      padding: EdgeInsets.all(10),
      height: 140,
      width: 240,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        image: DecorationImage(image: NetworkImage(widget.bannerWithImage.image!), fit: BoxFit.fill),
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
                  child: Text(widget.bannerWithImage.headerText!, style: const TextStyle(color: Colors.white, fontSize: 16),),
                ),
                Container(
                  height: 25,
                  width: 160,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20.0)),
                      color: Colors.black.withOpacity(0.50)
                  ),
                  child: Text(widget.bannerWithImage.footerText!, style: const TextStyle(color: Colors.white, fontSize: 13),),
                ),
              ],
            ),
          ]
      ),
    );

      Stack(
      children: [
        Container(
          height: 140,
          width: 240,
          decoration:  BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            image: DecorationImage(image: NetworkImage(widget.bannerWithImage.image!)),
          ),
        ),
        Expanded(child:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          verticalDirection: VerticalDirection.down,
          children: [
            Container(
              height: 30,
              width: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Text(widget.bannerWithImage.headerText!, style: const TextStyle(color: Colors.white,),),
            ),
            Text(widget.bannerWithImage.footerText!)
          ],
        ), ),

      ],
    );
  }

}
