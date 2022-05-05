import 'package:flutter/material.dart';
import 'package:portfolio/src/components/hover_btn.dart';
import 'package:show_up_animation/show_up_animation.dart';

import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/vscode_icons.dart';

import 'components/title.dart';

class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);
  Widget _skillItem(Widget icon, String text) {
    return HoverButton(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                offset: Offset(5.0, 5.0),
                color: Color.fromARGB(30, 0, 0, 0)),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(width: 5),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      // alignment: Alignment.center,
      child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            subTitle('Skills'),
            const SizedBox(height: 70),
            Wrap(
              children: [
                ShowUpAnimation(
                    delayStart: const Duration(milliseconds: 500),
                    animationDuration: const Duration(milliseconds: 500),
                    curve: Curves.bounceIn,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: _skillItem(
                        const Iconify(
                          VscodeIcons.file_type_flutter,
                        ),
                        'Flutter')),
                ShowUpAnimation(
                    delayStart: Duration(seconds: 1),
                    animationDuration: Duration(seconds: 1),
                    curve: Curves.bounceIn,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: _skillItem(
                        const Iconify(VscodeIcons.file_type_html), 'HTML')),
                ShowUpAnimation(
                    delayStart: Duration(milliseconds: 1500),
                    animationDuration: Duration(milliseconds: 1500),
                    curve: Curves.bounceIn,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: _skillItem(const Iconify(VscodeIcons.file_type_css),
                        'CSS')), // widget // widget
                ShowUpAnimation(
                    delayStart: Duration(seconds: 2),
                    animationDuration: Duration(seconds: 2),
                    curve: Curves.bounceIn,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: _skillItem(
                        const Iconify(VscodeIcons.file_type_js_official),
                        'JavaScript')),
              ],
            ),
          ]),
    );
  }
}
