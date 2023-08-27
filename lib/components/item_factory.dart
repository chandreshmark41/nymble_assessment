import 'package:flutter/cupertino.dart';
import 'package:nymble_assessment/components/box_item_widget.dart';
import 'package:nymble_assessment/components/circular_item_widget.dart';
import 'package:nymble_assessment/factory/horizontal_list.dart';

class ItemFactory {

  static Widget getItemWidget(Item item){
    if(item.type == "circular_item"){
      return CircularItemWidget(item: item);
    }
    return BoxItemWidget(item: item);
  }
}