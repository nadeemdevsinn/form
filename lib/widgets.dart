import 'package:flutter/material.dart';




class CustomText extends StatelessWidget {
  var text,fontsize,fontweight,color;
  CustomText({this.text,this.color,this.fontsize,this.fontweight});
  

  @override
  Widget build(BuildContext context) {
    return  Text(text,style: TextStyle(color: color,fontSize: fontsize,fontWeight: fontweight),);
  }
}




class CustomIcons extends StatelessWidget {
  var icon,size,color;
  CustomIcons({this.icon,this.size,this.color});

  @override
  Widget build(BuildContext context) {
    return  Icon(icon,size: size,color: color,);
  }
}