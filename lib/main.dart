import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'AutoFill Demonstration';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(appTitle),
          ),
          body: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: const MyCustomForm(),
          )),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: AutofillGroup(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                autofillHints: const [AutofillHints.name],
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              TextFormField(
                autofillHints: const [AutofillHints.password],
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                validator: (value) {
                  Pattern pattern =
                      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                  RegExp regex = RegExp(pattern.toString());
                  if (!regex.hasMatch(value!)) {
                    return 'Enter a valid email';
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                autofillHints: const [AutofillHints.telephoneNumber],
                decoration: const InputDecoration(
                  hintText: 'Phone Number',
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  Pattern pattern =
                      r'^(?:\+?1[-.●]?)?\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$';
                  RegExp regex = RegExp(pattern.toString());
                  if (!regex.hasMatch(value!)) {
                    return 'Enter a valid phone number';
                  } else {
                    return null;
                  }
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: const Text('Submit Form'),
                ),
              ),
            ],
          ),
        ));
  }
}
