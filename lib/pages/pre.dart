import 'package:flutter/material.dart';

class PreWidget extends StatefulWidget {
  const PreWidget({Key? key}) : super(key: key);

  @override
  _PreWidgetState createState() => _PreWidgetState();
}

class _PreWidgetState extends State<PreWidget> {
  final List<String> data = ["Card 1", "Card 2", "Card 3", "Card 4"];
  int focusedIndex = 0;

  void _handleSwipe(DragUpdateDetails details) {
    setState(() {
      focusedIndex = (focusedIndex - (details.primaryDelta!.sign.toInt()))
          .clamp(0, data.length - 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: _handleSwipe,
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            final isFocused = focusedIndex == index;
            final borderColor = isFocused ? Colors.red : Colors.blue;

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: borderColor, width: 2),
                ),
                child: Center(child: Text(data[index])),
              ),
            );
          },
        ),
      ),
    );
  }
}
