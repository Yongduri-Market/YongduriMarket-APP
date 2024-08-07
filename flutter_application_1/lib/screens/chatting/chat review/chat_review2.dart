// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class ChatReview2Page extends StatelessWidget {
  final List<String> selectedImages;

  const ChatReview2Page({super.key, required this.selectedImages});

  @override
  Widget build(BuildContext context) {
    final List<String> _texts = [
      '제가 있는 곳까지 와서 거래했어요',
      '시간 약속을 잘 지켜요',
      '친절하고 매너가 좋아요',
      '응답이 빨라요',
      '적당한 가격에 구매했어요',
    ];

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 184, 224, 247),
      appBar: AppBar(
        title: const Center(
          child: Text(
            '거래 후기 보내기',
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(
            color: Color.fromARGB(255, 175, 217, 240),
            height: 2.0,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Row(
                children: selectedImages.map((path) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(
                      path,
                      width: 50,
                      height: 50,
                    ),
                  );
                }).toList(),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Divider(
                color: Color.fromARGB(255, 215, 240, 245),
                thickness: 1.0,
                height: 30,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                '어떤 점이 최고였나요?',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: List.generate(_texts.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 184, 224, 247),
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(color: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          _texts[index],
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 30.0,
              ),
              child: Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 184, 224, 247),
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.white),
                ),
                child: const Center(
                  child: Text(
                    'Additional Information',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 166, 206, 227),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      '후기 보내기',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
