import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isSwitch = false;
  bool? isCheckbox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
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
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/customer.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(),
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: isSwitch ? Colors.green : Colors.blue,
              ),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is the row');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.green,
                  ),
                  Text('Row Widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: Colors.green,
                  ),
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
            Image.network(
                'https://pamperzone.co.za/wp-content/uploads/2020/08/call-centre.jpg')
          ],
        ),
      ),
    );
  }
}
