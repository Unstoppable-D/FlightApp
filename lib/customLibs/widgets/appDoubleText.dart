import 'package:flight_app/customLibs/styleMedia/appStyle.dart';
import 'package:flutter/material.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({super.key, required this.bigText, required this.smallText});

  final String bigText;
  final String smallText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(bigText, style: AppStyles.headLineStyle2,),
          InkWell(
            onTap: (){},
            child: Text(smallText, style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),),
          )

        ],
      ),
    );
  }
}
