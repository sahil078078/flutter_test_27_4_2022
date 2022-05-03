import 'package:flutter/material.dart';

class TextFormFieldGenerator extends StatefulWidget {
  const TextFormFieldGenerator({
    Key? key,
    required this.val,
  }) : super(key: key);

  final List<TextEditingController> val;

  @override
  State<TextFormFieldGenerator> createState() => _TextFormFieldGeneratorState();
}

class _TextFormFieldGeneratorState extends State<TextFormFieldGenerator> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.val.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.only(
            left: 10,
            right: 5,
            top: 5,
            bottom: 5,
          ),
          margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey.withOpacity(0.2),
          ),
          child: TextFormField(
            controller: widget.val[index],
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter Value";
              }
              return null;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter Your Email',
              suffixIcon: index >= 1
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          if (index >= 1) {
                            widget.val.removeAt(index);
                          }
                        });
                      },
                      child: const Icon(Icons.delete),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        );
      },
    );
  }
}
