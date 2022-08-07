import 'package:flutter/material.dart';

class AuthTextField extends FormField<String> {
  AuthTextField({
    Key? key,
    required String labelText,
    String? hintText,
    Widget? icon,
    TextEditingController? controller,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    String initialValue = '',
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled,
    bool obscureText = false,
    // Function()? onEditingComplete,
  }) : super(
          key: key,
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          autovalidateMode: autovalidateMode,
          builder: (FormFieldState<String> state) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
                border: Border.all(
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: TextField(
                // onEditingComplete: onEditingComplete,
                onChanged: (value) {
                  state.didChange(value);
                },
                controller: controller,
                obscureText: obscureText,
                // cursorColor: HandeeColors.white,
                // style: const TextStyle(color: HandeeColors.white),

                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: labelText,
                  hintText: hintText,
                  suffixIcon: icon,
                ),
              ),
            );
          },
        );
}
