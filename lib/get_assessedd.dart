import 'package:flutter/material.dart';
import 'package:flutter_application_1/takeatest.dart';

class GetAssessedPage extends StatefulWidget {
  const GetAssessedPage({super.key});

  @override
  State<GetAssessedPage> createState() => _GetAssessedPageState();
}

class _GetAssessedPageState extends State<GetAssessedPage> {
  bool? isCheckbox = false;
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text('Get Assessed'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/dep.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Depression Assessment App',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('Predict Dep');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const TakeATestPage();
                      // debugPrint('Predict Dep');
                    },
                    //child: const Text('Predict Dep'),
                  ),
                );
                //OutlinedButton(
                //onPressed: () {
                // debugPrint('Classify');
                //, child: null,);
              },
              child: const Text('Take Test'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('');
              },
              child: const Text(''),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Know your mental status');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.lightBlue,
                  ),
                  Text('facebook'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.lightBlue,
                  ),
                  Text('Twitter'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.lightBlue,
                  ),
                  Text('whatsapp'),
                ],
              ),
            ),
            Switch(
                value: isSwitch,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitch = newBool;
                  });
                }),
            Checkbox(
                value: isCheckbox,
                onChanged: (bool? newBool) {
                  setState(() {
                    isCheckbox = newBool;
                  });
                }),
            // Image.network(
            //     'https://www.google.com/imgres?imgurl=https%3A%2F%2Fww2.kqed.org%2Fapp%2Fuploads%2Fsites%2F13%2F2017%2F10%2Fdepression-1020x680.jpg&imgrefurl=https%3A%2F%2Fwww.kqed.org%2Ffutureofyou%2F435986%2Fcapturing-the-sound-of-depression-in-the-human-voice&tbnid=aFE2F7vvGuT-TM&vet=12ahUKEwi2yPuKv_35AhUGphoKHZhcCfkQMygAegUIARCLAQ..i&docid=MJzWgr8c7da11M&w=1020&h=680&q=depressed%20person&ved=2ahUKEwi2yPuKv_35AhUGphoKHZhcCfkQMygAegUIARCLAQ')
          ],
        ),
      ),
    );
  }
}
