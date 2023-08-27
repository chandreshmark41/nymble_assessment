import 'package:nymble_assessment/components/banner_with_color_widget.dart';
import 'package:nymble_assessment/models/custom_widgets.dart';
import 'package:flutter/material.dart';

class BannerWithColor extends CustomWidget {

  String? type;
  String? color;
  String? headerText;
  String? footerText;
  bool? footerIcon;



  BannerWithColor(
      {this.type,
        this.color,
        required this.headerText,
        required this.footerText,
        this.footerIcon});

  String? getType(){
    return type;
  }

  @override
  Widget buildWidget() {
    return BannerWithColorWidget(bannerWithColor: this);
  }

  BannerWithColor.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    color = json['color'];
    headerText = json['header_text'];
    footerText = json['footer_text'];
    footerIcon = json['footer_icon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['type'] = type;
    data['color'] = color;
    data['header_text'] = headerText;
    data['footer_text'] = footerText;
    data['footer_icon'] = footerIcon;
    return data;
  }

}