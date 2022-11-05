import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
    required this.logoUrl,
    this.onTap,
  }) : super(key: key);

  final String logoUrl;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        child: SizedBox(
          height: 55,
          width: 55,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                logoUrl,
                height: 30,
                width: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
