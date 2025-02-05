import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1, this.onsaved});
  final String hint;
  final int maxLines;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            //logic
            onSaved: onsaved,
            validator: (value){
                    //if ( value?.isEmpty ??true)
                    //or
                   if (value == null || value.isEmpty) {
                  return 'Please, This field is required';
                }
                return null;
            },
            maxLines: maxLines,
            cursorColor: kPrimaryColor,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: kPrimaryColor),
              border: buildBorder(),
              enabledBorder: buildBorder(),
              focusedBorder: buildBorder(kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
