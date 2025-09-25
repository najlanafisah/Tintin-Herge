import 'package:flutter/material.dart';
import 'package:tintin_app/utils/consts.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  final List<String> language = ["French", "English", "Dutch", "Spanish"];
  String? selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Language Edition", style: TextStyle(color: textColor)),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: primaryBackground,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DropdownButton<String>(
                  value: selectedLanguage,
                  hint: Text("Select language"),
                  isExpanded: true,
                  underline: SizedBox(),
                  items: language.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedLanguage = value;
                    });
                  },
                  dropdownColor: primaryBackground,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
