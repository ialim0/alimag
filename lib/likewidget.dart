import 'package:flutter/material.dart';

class likeWidget extends StatefulWidget {
  const likeWidget({Key? key}) : super(key: key);

  @override
  State<likeWidget> createState() => _likeWidgetState();
}

class _likeWidgetState extends State<likeWidget> {
  bool _isLiked = false;
  int _likeCount = 75;
  void _toggleLike() {
    setState(() {
      if (_isLiked) {
        _isLiked = false;
        _likeCount -= 1;
      } else {
        _isLiked = true;
        _likeCount += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: _isLiked ? Icon(Icons.thumb_up) : Icon(Icons.thumb_up_off_alt),
          color: Colors.red,
          onPressed: _toggleLike,
        ),
        Text(
          '$_likeCount',
        )
      ],
    );
  }
}
