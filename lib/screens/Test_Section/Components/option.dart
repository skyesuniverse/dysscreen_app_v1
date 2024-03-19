import 'package:dysscreen_app_v1/controllers/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class Option extends StatefulWidget {
  const Option({
    Key? key,
    required this.text,
    required this.index,
    required this.press,
  }) : super(key: key);

  final String text;
  final int index;
  final VoidCallback press;

  @override
  State<Option> createState() => _OptionState();
}

class _OptionState extends State<Option> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isSelected = true;
        });
        widget.press();
      },
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(color: _isSelected ? Colors.blue : Colors.black45),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                  fontSize: 16,
                  color: _isSelected ? Colors.blue : Colors.black,
                  fontWeight:
                      _isSelected ? FontWeight.bold : FontWeight.normal),
            ),
            if (_isSelected)
              Icon(
                Icons.done,
                color: Colors.blue,
              ),
          ],
        ),
        
      ),
    );
  }
}
