import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StudentForm(),
  ));
}

class StudentForm extends StatefulWidget {
  @override
  _StudentFormState createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  final _formKey = GlobalKey<FormState>();
  late String _name;
  late String _email;
  late String _course;
  late String _city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Form'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email ID'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email ID';
                  }
                  // You can add additional email validation here if needed
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Course'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your course';
                  }
                  return null;
                },
                onSaved: (value) {
                  _course = value!;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'City'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your city';
                  }
                  return null;
                },
                onSaved: (value) {
                  _city = value!;
                },
              ),
              SizedBox(height: 16.0),
              // RaisedButton(
              //   onPressed: () {
              //     if (_formKey.currentState.validate()) {
              //       _formKey.currentState.save();
              //       // Process the form data, e.g., send it to a server
              //       // or save it locally
              //       print('Name: $_name');
              //       print('Email ID: $_email');
              //       print('Course: $_course');
              //       print('City: $_city');
              //     }
              //   },
              //   child: Text('Submit'),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

