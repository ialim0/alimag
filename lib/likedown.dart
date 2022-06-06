import 'package:flutter/material.dart';

class likedownWidget extends StatefulWidget {
  const likedownWidget({Key? key}) : super(key: key);

  @override
  State<likedownWidget> createState() => _likedownWidgetState();
}

class _likedownWidgetState extends State<likedownWidget> {
  bool _isLikedDown = false;
  int _likeDownCount = 35;
  void _toggleLikeDown() {
    setState(() {
      if (_isLikedDown) {
        _isLikedDown = false;
        _likeDownCount -= 1;
      } else {
        _isLikedDown = true;
        _likeDownCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: _isLikedDown
              ? Icon(Icons.thumb_down)
              : Icon(Icons.thumb_down_off_alt),
          color: Colors.red,
          onPressed: _toggleLikeDown,
        ),
        Text(
          '$_likeDownCount',
        )
      ],
    );
  }
}
