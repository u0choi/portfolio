import 'package:flutter/material.dart';
import 'package:portfolio/src/skills.dart';
import 'package:typewritertext/typewritertext.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            floating: true,
            expandedHeight: 400,
            flexibleSpace: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 154, 135, 231),
                  Color.fromARGB(255, 126, 102, 222),
                  Color(0xFF7C1CF7),
                ],
              )),
              child: Container(
                width: double.infinity,
                // color: Colors.blue,

                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TypeWriterText(
                        text: Text(
                          'Thank you for visiting !',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25),
                        ),
                        duration: Duration(milliseconds: 200),
                      ),
                    ]),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((_, int i) {
            return Column(children: const [
              Skills(),
            ]);
          }, childCount: 1))
        ],
      ),
    );
  }
}
