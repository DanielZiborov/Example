import 'package:flutter/material.dart';

class TwoString {
  final String text1;
  final String text2;
  TwoString({
    required this.text1,
    required this.text2,
  });
}

class Example extends StatelessWidget {
  final List<TwoString> textData = [
    TwoString(text1: "1", text2: "first"),
    TwoString(text1: "2", text2: "two"),
    TwoString(text1: "world", text2: "red"),
    TwoString(text1: "1wfw", text2: "f1fgde243"),
    TwoString(text1: "qffwefwe", text2: "342"),
    TwoString(text1: "wewfwefwfw", text2: "grgre")
  ];

  Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: textData
          .map(
            (data) => TextWrapper(
              data: data,
            ),
          )
          .toList(),
    );
  }
}

class TextWrapper extends StatelessWidget {
  final TwoString data;
  const TextWrapper({
    super.key,
    required this.data
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          data.text1,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        const Spacer(),
        Text(
          data.text2,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
