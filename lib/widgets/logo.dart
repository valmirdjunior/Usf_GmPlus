import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Image.asset('images/host.png', width: 200, height: 150),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: RichText(
            text: TextSpan(
              text: 'Universidade São Francisco',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 15),
              children: const [],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: RichText(
            text: TextSpan(
              text: 'GM',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 30),
              children: const [
                TextSpan(
                  text: '+',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: RichText(
            text: TextSpan(
              text: 'Game Memory',
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 15),
              children: const [],
            ),
          ),
        ),
      ],
    );
  }
}
