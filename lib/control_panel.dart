import 'package:flutter/material.dart';

import 'control_button.dart';
import 'direction.dart';

class ControlPanel extends StatelessWidget {
  const ControlPanel({
    Key? key,
    required this.onTapped,
  }) : super(key: key);
  final void Function(Direction direction) onTapped;
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
                    onTapped(Direction.left);
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
                    onTapped(Direction.up);
                  },
                ),
                SizedBox(
                  height: 75.0,
                ),
                ControlButton(
                  icon: Icon(Icons.arrow_drop_down_sharp),
                  onPressed: () {
                    onTapped(Direction.down);
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
                    onTapped(Direction.right);
                  },
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
