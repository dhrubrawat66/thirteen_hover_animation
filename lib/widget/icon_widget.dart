import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({
    Key? key,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final Color color;

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  double btmPosition = 0;
  bool movedUp = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (a) {
          setState(() {
            btmPosition = 30;
            movedUp = true;
          });
        },
        onExit: (a) {
          setState(() {
            btmPosition = 0;
            movedUp = false;
          });
        },
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              bottom: btmPosition,
              left: 5,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset:
                          movedUp ? const Offset(7, 21.5) : const Offset(4, 6),
                      blurRadius: 10,
                      spreadRadius: 0.5,
                    )
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              bottom: btmPosition + 10,
              left: 15,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),
            ),
            AnimatedPositioned(
              child: FaIcon(
                widget.icon,
                size: 40,
                color: Colors.white,
              ),
              duration: const Duration(milliseconds: 300),
              bottom: btmPosition + 30,
              left: 39,
            ),
          ],
        ),
      ),
    );
  }
}
