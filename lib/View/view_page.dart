import 'package:flutter/material.dart';
import 'package:mvvm_app/ViewModel/view_model_page.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  ViewModelPageState createState() => ViewModelPageState();
}

class ViewModelPageState extends State<ViewPage> {
  var viewModel = ViewModelPage();

  final TextEditingController _textEditingController = TextEditingController();
  bool isInputConfirmed = false;

  void _confirmInput() {
    viewModel.setName(_textEditingController.text);
    setState(() {
      isInputConfirmed = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Prikaz unosa"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: 'Unesite ime i prezime',
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: _confirmInput,
              child: const Text('Potvrdi unos'),
            ),

            if (isInputConfirmed)
              Text(
                'Pozdrav, ${viewModel.name}!',
                style: const TextStyle(fontSize: 18),
              ),
          ],
        ),
      ),
    );
  }
}
