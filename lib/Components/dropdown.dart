import 'package:flutter/material.dart';

String? dropdownValue;

/// This is the stateful widget that the main application instantiates.
class Dropdown extends StatefulWidget {
  final List<String> listt;
  final Function? callback;
  Dropdown({required this.listt, this.callback});

  @override
  State<Dropdown> createState() => _Dropdown();
}

class _Dropdown extends State<Dropdown> {
  String? dropdownValue;
  @override
  void initState() {
    //dropdownValue = widget.startname;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //dropdownValue = widget.startname;
    return FormField(builder: (FormFieldState<String> state) {
      return InputDecorator(
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(5.0))),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            hint: Text("Select Year"),
            value: dropdownValue,
            isDense: true,
            icon: const Icon(Icons.arrow_downward),
            iconSize: 24,
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
                widget.callback!(dropdownValue);
              });
            },
            items: widget.listt.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      );
    });
  }
}
