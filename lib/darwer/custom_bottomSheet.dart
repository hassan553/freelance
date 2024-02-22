import 'package:flutter/material.dart';
import 'package:freelance/darwer/confirm_button.dart';
import 'package:freelance/darwer/custom_text_field.dart';

class CustomBottomModalSheet extends StatefulWidget {
  final String title;
  final bool? isSearchExit;
  final List icons;
  final List titles;
  final dynamic Function(String)? onChange;
  final void Function()? onTap;
  final void Function()? onConfirm;
  const CustomBottomModalSheet(
      {super.key,
      required this.title,
      required this.titles,
      required this.icons,
      required this.onTap,
      this.onConfirm,
      this.isSearchExit = false,
      this.onChange});

  @override
  State<CustomBottomModalSheet> createState() => _CustomBottomModalSheetState();
}

class _CustomBottomModalSheetState extends State<CustomBottomModalSheet> {
  String selectedRadioValue = '';

  void handleRadioValueChanged(String value) {
    setState(() {
      selectedRadioValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsetsDirectional.all(16),
        height: 350,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text(widget.title,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 16),
                child: Divider()),
            const SizedBox(height: 10),
            if (widget.isSearchExit == true) ...[
              CustomTextField(onChange: widget.onChange),
              const SizedBox(height: 10),
            ],
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: widget.titles.length,
                        itemBuilder: (context, index) => _customListTile(
                            widget.titles[index], Icons.person, widget.onTap)),
                  ),
                  const SizedBox(height: 15),
                  ConfirmButton(onTap: widget.onConfirm),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _customListTile(String title, IconData? icon, void Function()? onTap) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        onTap: () => handleRadioValueChanged(title),
        leading: Icon(icon, size: 30, color: Colors.blue),
        title: Text(title),
        trailing: Radio.adaptive(
          value: title,
          groupValue: selectedRadioValue,
          onChanged: (value) {
            handleRadioValueChanged(value ?? '');
          },
        ),
      ),
    );
  }
}
