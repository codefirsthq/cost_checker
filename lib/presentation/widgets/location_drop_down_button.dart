import 'package:flutter/material.dart';

class LocationDropDownButton<T> extends StatelessWidget {
  const LocationDropDownButton(
      {Key? key,
      required this.label,
      required this.itemData,
      required this.onChanged,
      required this.hintText,
      this.validator})
      : super(key: key);

  final String label;
  final List<DropdownMenuItem<T>> itemData;
  final ValueChanged<T> onChanged;
  final String hintText;
  final FormFieldValidator<T>? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        DropdownButtonFormField<T>(
          isExpanded: true,
          items: itemData,
          validator: validator,
          onChanged: (e) => onChanged(e!),
          decoration: InputDecoration(
            hintText: hintText,
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.circular(4)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(4)),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            floatingLabelBehavior: FloatingLabelBehavior.never,
          ),
        ),
      ],
    );
  }
}
