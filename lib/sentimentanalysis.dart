import 'package:flutter/material.dart';
//import 'package:flutter_application_1/takeatest2.dart';

class SentimentAnalysisPage extends StatefulWidget {
  const SentimentAnalysisPage({super.key});

  @override
  State<SentimentAnalysisPage> createState() => _SentimentAnalysisPage();
}

class _SentimentAnalysisPageState extends State<SentimentAnalysisPage> {
  bool? isCheckbox = false;
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var gender;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text('Depression Test'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {
              debugPrint('Actions');
            },
            icon: const Icon(
              Icons.info_outline,
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const Text(
            "1. Little interest or pleasure in doing things?",
            style: TextStyle(fontSize: 18),
          ),
          const Divider(),
          RadioListTile(
            title: const Text("Not at all"),
            value: "Not at all",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: const Text("Several days"),
            value: "Several days",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: const Text("More than half of the days"),
            value: "More than half of the days",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: const Text("Nearly every day"),
            value: "Nearly every day",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          const Text(
            "2. Feeling down, depressed, or hopeless ?",
            style: TextStyle(fontSize: 18),
          ),
          const Divider(),
          RadioListTile(
            title: const Text("Not at all"),
            value: "Not at all",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: const Text("Several days"),
            value: "Several days",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: const Text("More than half of the days"),
            value: "More than half of the days",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          RadioListTile(
            title: const Text("Nearly every day"),
            value: "Nearly every day",
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = value.toString();
              });
            },
          ),
          OutlinedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isSwitch ? Colors.black : Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const TakeATest2Page();
                  },
                ),
              );
            },
            child: const Text('Next'),
          ),
        ]),
      ),
    );
  }
}
