import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChange;
  const CustomTextField({super.key, this.onChange});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: SizedBox(
        height: 40,
        child: TextField(
          onChanged: onChange,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade300,
              border: InputBorder.none,
              prefixIcon: const Icon(CupertinoIcons.search),
              hintText: 'Search....',
              hintStyle: const TextStyle(fontSize: 15)),
        ),
      ),
    );
  }
}
