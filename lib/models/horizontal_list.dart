import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nymble_assessment/components/box_item_widget.dart';
import 'package:nymble_assessment/components/circular_item_widget.dart';
import 'package:nymble_assessment/factory/item_factory.dart';
import 'package:nymble_assessment/models/custom_widgets.dart';


class HorizontalList extends CustomWidget {
  String? type;
  String? title;
  List<Item>? items;

  HorizontalList({this.type, this.title, this.items});

  HorizontalList.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    title = json['title'];
    if (json['items'] != null) {
      items = <Item>[];
      json['items'].forEach((v) {
        items!.add(new Item.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['title'] = this.title;
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  Widget buildWidget() {
    // TODO: implement buildWidget
    return
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title!, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),),
    SizedBox(height: 20,),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for(final item in items!)...[
            Column(
              children: [
                ItemFactory.getItemWidget(item),
                //BoxItemWidget(items: item),
                //SizedBox(width: 10,)
              ],
            )
          ]
        ],
      ),
    )


        ],
      );

  }
}

class Item {
  String? type;
  String? text;
  String? image;

  Item({this.type, this.text, this.image});

  Item.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    text = json['text'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['text'] = this.text;
    data['image'] = this.image;
    return data;
  }
}