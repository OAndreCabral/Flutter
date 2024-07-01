import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomDropdownButton extends StatefulWidget {
  final String text;

  const CustomDropdownButton({
    super.key,
    required this.text,
  });

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: DropdownButton<String>(
            isExpanded: true,
            hint: Text(widget.text),
            icon: const FaIcon(FontAwesomeIcons.arrowDown),
            value: dropdownValue,
            style: const TextStyle(color: Colors.black),
            underline: const AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: 1,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>["US", "USP", "Mackenzie"].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Row(
                  children: [
                    Text(value),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}