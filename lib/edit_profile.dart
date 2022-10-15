import 'package:flutter/material.dart';
import 'package:prima_jaya/model/user.dart';

class EditProfilePage extends StatefulWidget {
  final String editedField;
  const EditProfilePage({super.key, required this.editedField});

  @override
  _EditProfilePage createState() => _EditProfilePage(editedField: editedField);
}

class _EditProfilePage extends State<EditProfilePage> {
  String editedField;
  _EditProfilePage({required this.editedField});
  String initialVal() {
    if (editedField == "Name") {
      return user.name;
    } else if (editedField == "Email") {
      return user.email;
    } else {
      return user.phone;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Text(
                'Edit $editedField',
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Colors.black,
          leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.pop(context, 'refresh')),
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextFormField(
                initialValue: initialVal(),
                decoration: InputDecoration(
                  hintText: 'Edit your  here...',
                  labelText: 'Your ',
                ),
                onChanged: (String value) {
                  setState(() {
                    if (editedField == "Name") {
                      user.name = value;
                    } else if (editedField == "Email") {
                      user.email = value;
                    } else {
                      user.phone = value;
                    }
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  Navigator.pop(context, 'refresh');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
