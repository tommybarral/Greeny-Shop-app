import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {

  final String title;

  const TitleSection({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
        TextButton(
          onPressed: () {},
          child: Text('See all', style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.green.withOpacity(0.6),),),
        ),
      ],
    );
  }
}
