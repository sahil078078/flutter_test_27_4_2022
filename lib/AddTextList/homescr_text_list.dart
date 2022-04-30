import 'package:flutter/material.dart';
import 'package:flutter_test_27_4_2022/AddTextList/submit_button.dart';
import 'package:flutter_test_27_4_2022/AddTextList/text_form_field_generator.dart';

class HomeScrTxList extends StatefulWidget {
  const HomeScrTxList({Key? key}) : super(key: key);

  @override
  State<HomeScrTxList> createState() => _HomeScrTxListState();
}

class _HomeScrTxListState extends State<HomeScrTxList> {
  List<dynamic> data = ['sahil@123gmail.com'];
  List<TextFormField> myTextFormField = [TextFormField()];
  late List<TextEditingController> val =
      List.generate(myTextFormField.length, (index) => TextEditingController());
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTextField();
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        elevation: 0.0,
        title: const Text('AddList', textAlign: TextAlign.center),
      ),
      body: Form(
        key: _globalKey,
        child: Column(
          children: [
            Expanded(
              child: TextFormFieldGenerator(
                  myTextFormField: myTextFormField, val: val),
            ),
            SubmitButtom(globalKey: _globalKey, value: val),
          ],
        ),
      ),
    );
  }

  addTextField() {
    setState(() {
      val.add(TextEditingController());
      myTextFormField.add(
        TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Enter Your Email',
          ),
        ),
      );
    });
  }
}
