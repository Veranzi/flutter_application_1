import 'package:flutter/material.dart';

class TakeATest5Page extends StatefulWidget {
  const TakeATest5Page({super.key});

  @override
  State<TakeATest5Page> createState() => _TakeATest5PageState();
}

class _TakeATest5PageState extends State<TakeATest5Page> {
  bool? isCheckbox = false;
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var gender;
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text('Depression test- self quiz'),
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
        child: Column(
          children: [
            const Text(
              "9. Thoughts that you would be better off dead, or of hurting yourself?",
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
              "10. If you've had any days with issues above, how difficult have these problems made it for you at work, home, school, or with other people? ?",
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
                      return const TakeATest5Page();
                    },
                  ),
                );
              },
              child: const Text('PREDICT'),
            ),
          ],
        ),
      ),
    );
  }
}
