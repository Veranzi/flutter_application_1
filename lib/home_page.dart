import 'package:flutter/material.dart';
import 'package:flutter_application_1/get_assessedd.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const GetAssessedPage();
          }));
        },
        child: const Text('Get assessed'),
      ),
    );
  }
}
