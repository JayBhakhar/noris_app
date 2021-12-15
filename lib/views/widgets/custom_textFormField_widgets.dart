import 'package:flutter/material.dart';

Widget customTextFormFieldForEmail({
  required final TextEditingController controller,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
    child: TextFormField(
      cursorColor: Colors.green,
      style: TextStyle(
        color: Colors.green,
      ),
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        // labelText: 'логин',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.green,
            width: 1.5,
          ),
        ),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.green,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.green,
            width: 1.5,
          ),
        ),
      ),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Пожалуйста, введите адрес электронной почты';
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return 'Please a valid Email';
        }
        return null;
      },
    ),
  );
}

Widget customTextFormFieldForPassword({
  required final TextEditingController controller,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
    child: TextFormField(
      cursorColor: Colors.green,
      style: TextStyle(
        color: Colors.green,
      ),
      obscureText: true,
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        // labelText: 'пароль',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.green, width: 1.5),
        ),
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(
            color: Colors.green,
            width: 1.5,
          ),
        ),
      ),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'пожалуйста введите пароль';
        }
        return null;
      },
    ),
  );
}
