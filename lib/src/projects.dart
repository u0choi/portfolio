import 'dart:html' as html;
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/vscode_icons.dart';
import 'package:portfolio/src/components/title.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  bool _hovering = false;
  SystemMouseCursor cursor = SystemMouseCursors.zoomIn;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 300,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            subTitle('Projects'),
            const SizedBox(height: 70),
            Wrap(
              alignment: WrapAlignment.center,
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 20,
              spacing: 20,
              children: [
                // mysound
                AnimatedContainer(
                  constraints: const BoxConstraints(maxWidth: 220),
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 15,
                          offset: Offset(5.0, 5.0),
                          color: Color.fromARGB(40, 0, 0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: 40,
                        height: 40,
                        child: Image.asset('asset/icon/mysound_icon.png'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'MySound',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Row(children: const [
                      Iconify(
                        VscodeIcons.file_type_flutter,
                        size: 18,
                      ),
                      Text('사용자 취향 분석 음악 어플')
                    ]),
                    const SizedBox(height: 10),
                    MouseRegion(
                      cursor: cursor,
                      onEnter: (e) => _mouseEnter(true),
                      onHover: (e) {
                        cursor = SystemMouseCursors.grab;
                        // var clickableArea =
                        //     document.getElementById("flutter_container");

                        // clickableArea?.style.cursor = "pointer";
                      },
                      onExit: (e) => _mouseEnter(false),
                      child: GestureDetector(
                        onTap: () {
                          const url =
                              'https://play.google.com/store/apps/details?id=com.binternational.bi_whitenoise';

                          html.window.open(url, '마이사운드');
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey,
                                    style: BorderStyle.solid)),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.android,
                                color: Color(0xff3DDC84),
                              ),
                              SizedBox(width: 5),
                              Text('PlayStore'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    MouseRegion(
                      cursor: cursor,
                      onEnter: (e) => _mouseEnter(true),
                      onHover: (e) {
                        cursor = SystemMouseCursors.grab;
                        // var clickableArea =
                        //     document.getElementById("flutter_container");

                        // clickableArea?.style.cursor = "pointer";
                      },
                      onExit: (e) => _mouseEnter(false),
                      child: GestureDetector(
                        onTap: () {
                          const url =
                              'https://apps.apple.com/kr/app/%EB%A7%88%EC%9D%B4%EC%82%AC%EC%9A%B4%EB%93%9C/id1591576246';

                          html.window.open(url, '마이사운드');
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey,
                                    style: BorderStyle.solid)),
                          ),
                          child: Row(
                            children: const [
                              Iconify(VscodeIcons.file_type_applescript,
                                  color: Colors.black),
                              SizedBox(width: 5),
                              Text('AppStore')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),

                AnimatedContainer(
                  constraints: const BoxConstraints(maxWidth: 220),
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 15,
                          offset: Offset(5.0, 5.0),
                          color: Color.fromARGB(40, 0, 0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: 40,
                        height: 40,
                        child: Image.asset('asset/icon/myscore_icon.jpg'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'MyScore',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Row(children: const [
                      Iconify(
                        VscodeIcons.file_type_flutter,
                        size: 18,
                      ),
                      Text(' 악보 월정기구독 어플'),
                    ]),
                    const SizedBox(height: 10),
                    MouseRegion(
                      cursor: cursor,
                      onEnter: (e) => _mouseEnter(true),
                      onHover: (e) {
                        cursor = SystemMouseCursors.grab;
                        // var clickableArea =
                        //     document.getElementById("flutter_container");

                        // clickableArea?.style.cursor = "pointer";
                      },
                      onExit: (e) => _mouseEnter(false),
                      child: GestureDetector(
                        onTap: () {
                          const url =
                              'https://play.google.com/store/apps/details?id=com.upgradrum.myscore';

                          html.window.open(url, 'Myscore');
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey,
                                    style: BorderStyle.solid)),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.android,
                                color: Color(0xff3DDC84),
                              ),
                              SizedBox(width: 5),
                              Text('PlayStore'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    MouseRegion(
                      cursor: cursor,
                      onEnter: (e) => _mouseEnter(true),
                      onHover: (e) {
                        cursor = SystemMouseCursors.grab;
                        // var clickableArea =
                        //     document.getElementById("flutter_container");

                        // clickableArea?.style.cursor = "pointer";
                      },
                      onExit: (e) => _mouseEnter(false),
                      child: GestureDetector(
                        onTap: () {
                          const url =
                              'https://apps.apple.com/kr/app/%EB%A7%88%EC%9D%B4%EC%8A%A4%EC%BD%94%EC%96%B4-myscore/id1607231481';

                          html.window.open(url, 'Myscore');
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    width: 1.0,
                                    color: Colors.grey,
                                    style: BorderStyle.solid)),
                          ),
                          child: Row(
                            children: const [
                              Iconify(VscodeIcons.file_type_applescript,
                                  color: Colors.black),
                              SizedBox(width: 5),
                              Text('AppStore')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                //
                AnimatedContainer(
                  width: 220,
                  height: 200,
                  constraints: const BoxConstraints(maxWidth: 220),
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 15,
                          offset: Offset(5.0, 5.0),
                          color: Color.fromARGB(40, 0, 0, 0),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: 40,
                        height: 40,
                        child: Image.asset('asset/icon/barf_icon.png'),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'BarfDog',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Row(children: const [
                      Iconify(
                        VscodeIcons.file_type_reactjs,
                        size: 18,
                      ),
                      Text('강아지 사료 구독 쇼핑몰'),
                    ]),
                    const SizedBox(height: 10),
                    const Text('웹사이트 리뉴얼 진행중')
                    // MouseRegion(
                    //   cursor: cursor,
                    //   onEnter: (e) => _mouseEnter(true),
                    //   onHover: (e) {
                    //     cursor = SystemMouseCursors.grab;
                    //     // var clickableArea =
                    //     //     document.getElementById("flutter_container");

                    //     // clickableArea?.style.cursor = "pointer";
                    //   },
                    //   onExit: (e) => _mouseEnter(false),
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       const url =
                    //           'https://apps.apple.com/kr/app/%EB%A7%88%EC%9D%B4%EC%82%AC%EC%9A%B4%EB%93%9C/id1591576246';

                    //       html.window.open(url, '마이사운드');
                    //     },
                    //     child: Container(
                    //       decoration: const BoxDecoration(
                    //         border: Border(
                    //             bottom: BorderSide(
                    //                 width: 1.0,
                    //                 color: Colors.grey,
                    //                 style: BorderStyle.solid)),
                    //       ),
                    //       child: Row(
                    //         children: const [
                    //           Iconify(VscodeIcons.file_type_applescript,
                    //               color: Colors.black),
                    //           SizedBox(width: 5),
                    //           Text('AppStore')
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ]),
                ),
              ],
            ),
          ]),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}
