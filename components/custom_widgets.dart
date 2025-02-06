import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget buildTextField({
    required String label,
    required TextEditingController controller,
    required TextInputType inputType,
    Function? onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.blue[50],
        ),
        keyboardType: inputType,
        onChanged: onChanged != null ? (value) => onChanged() : null,
      ),
    );
  }

  static Widget buildActionButton({
    required String label,
    required VoidCallback onPressed,
  }) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blueAccent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  static Widget buildTextButton({
    required String label,
    required VoidCallback onPressed,
  }) {
    return Center(
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
