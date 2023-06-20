import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<FormModel>(
      create: (_) => FormModel(),
      child: MaterialApp(
        title: 'Form App',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => Form1Screen(),
          '/form2': (context) => Form2Screen(),
        },
      ),
    );
  }
}

class FormModel extends ChangeNotifier {
  String firstName = '';
  String lastName = '';
  bool newsletter = false;
  List<String> interests = [];

  void submitForm(String firstName, String lastName, bool newsletter,
      List<String> interests) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.newsletter = newsletter;
    this.interests = interests;
    notifyListeners();
  }
}

class Form1Screen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _interests = ['Cooking', 'Traveling', 'Hiking'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form 1')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'First Name'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Last Name'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your last name';
                  }
                  return null;
                },
              ),
              CheckboxListTile(
                title: Text('Subscribe to Newsletter'),
                value: false,
                onChanged: (value) {},
              ),
              Text('Interests:'),
              Column(
                children: _interests
                    .map(
                      (interest) => CheckboxListTile(
                        title: Text(interest),
                        value: false,
                        onChanged: (value) {},
                      ),
                    )
                    .toList(),
              ),
              RaisedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    // Form is valid, submit the data
                    final firstName = '';
                    final lastName = '';
                    final newsletter = false;
                    final interests = [];

                    Provider.of<FormModel>(context, listen: false)
                        .submitForm(firstName, lastName, newsletter, interests);

                    Navigator.pushNamed(context, '/form2');
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Form2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formModel = Provider.of<FormModel>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Form 2')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Name: ${formModel.firstName}'),
            Text('Last Name: ${formModel.lastName}'),
            Text('Subscribe to Newsletter: ${formModel.newsletter}'),
            Text('Interests: ${formModel.interests.join(", ")}'),
          ],
        ),
      ),
    );
  }
}
