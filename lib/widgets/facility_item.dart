import 'package:cozy_app/thema.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  FacilityItem(
      {required this.name, required this.imageUrl, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        SizedBox(
          height: 4,
        ),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleTextStyle,
            children: [
              TextSpan(
                text: ' $name',
                style: greyTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
