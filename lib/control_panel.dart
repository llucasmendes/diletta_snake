import 'package:flutter/material.dart';

import 'control_button.dart';
import 'direction.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final void Function(Direction direction) onPressed;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0.0,
      right: 0.0,
      bottom: 50.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                ControlButton(
                  icon: Icon(Icons.arrow_left),
                  onPressed: () {
                    debugPrint("left");

                    onPressed(Direction.left);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ControlButton(
                  icon: Icon(Icons.arrow_drop_up_sharp),
                  onPressed: () {
                    debugPrint("up");

                    onPressed(Direction.up);
                  },
                ),
                SizedBox(
                  height: 75.0,
                ),
                ControlButton(
                  icon: Icon(Icons.arrow_drop_down_sharp),
                  onPressed: () {
                    debugPrint("down");

                    onPressed(Direction.down);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                ControlButton(
                  icon: Icon(Icons.arrow_right),
                  onPressed: () {
                    debugPrint("right");

                    onPressed(Direction.right);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
