import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget textFormField(String hintText, Icon prefixIcon, double fontSize,
    {controller,
      validationFunction,
      TextInputType? inputType,
      labeltext,
      inputFormatters,
      int? maxLength}) {
  return TextFormField(
    // inputFormatters: [FilteringTextInputFormatter.allow(inputFormatters)],
    maxLength: maxLength,
    style: TextStyle(color: Colors.black),
    autofillHints: [AutofillHints.email, AutofillHints.telephoneNumber],
    validator: validationFunction,
    controller: controller,
    textAlign: TextAlign.start,
    keyboardType: inputType,
    decoration: InputDecoration(
      filled: true,

      fillColor: Colors.grey.shade200,
      hintText: hintText,
      labelText: labeltext,
      prefixIcon: prefixIcon,
      // suffixIcon: Icon(Icons.visibility_off),
      hintStyle: TextStyle(fontSize: fontSize),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 3.0)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.grey.shade300, width: 3.0)),
    ),
  );
}

Widget passwordTextFormField(String hintText, Icon prefixIcon, double fontSize,
    {controller, validationFunction, suffixIcon, labeltext, obscureText}) {
  return TextFormField(
    validator: validationFunction,
    controller: controller,
    obscureText: obscureText,
    textAlign: TextAlign.start,
    style: TextStyle(color: Colors.black),
    decoration: InputDecoration(

        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        labelText: labeltext,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(fontSize: fontSize, color: Colors.black),
        labelStyle:  TextStyle(fontSize: fontSize, color: Colors.black),



        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.grey.shade300, width: 3.0)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide(color: Colors.grey.shade300, width: 3.0))),
  );
}

Widget searchTextFormField(
    String hintText, Icon prefixIcon, double fontSize, controller) {
  return TextFormField(
    style: TextStyle(color: Colors.black),
    controller: controller,
    textAlign: TextAlign.start,
    keyboardType: TextInputType.text,
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.only(top: 10, left: 10, right: 20),
      isDense: true,
      filled: true,
      fillColor: Colors.black,
      hintText: hintText,
      prefixIcon: prefixIcon,
      // suffixIcon: Icon(Icons.visibility_off),
      hintStyle: TextStyle(fontSize: fontSize),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.grey.shade50, width: 3.0)),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide(color: Colors.grey.shade200, width: 3.0)),
    ),
  );
}
