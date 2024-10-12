import 'package:flutter/material.dart';

class YieldPredictionScreen extends StatefulWidget {
  const YieldPredictionScreen({Key? key}) : super(key: key);

  @override
  _YieldPredictionScreenState createState() => _YieldPredictionScreenState();
}

class _YieldPredictionScreenState extends State<YieldPredictionScreen> {

  final _formKey = GlobalKey<FormState>();
  String? _location;
  String? _soilType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Location',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a location';
                  }
                  return null;
                },
                onSaved: (value) {
                  _location = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Soil Type',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a soil type';
                  }
                  return null;
                },
                onSaved: (value) {
                  _soilType = value;
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Location: $_location, Soil Type: $_soilType'),
                      ),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}