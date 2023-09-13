import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_validator/form_validator.dart';
import 'package:techtestvascomm/const/color.dart';
import 'package:techtestvascomm/const/textstyle.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.controller,
    required this.label,
    this.helperText,
    this.hintText,
    this.readOnly = false,
    this.onChanged,
    this.isRequired = false,
    this.validator,
    this.inputFormatters,
    this.onTap,
    this.suffixIcon,
    this.backgroundColor,
    this.multiLine = false,
    this.inputType,
    this.isObscure = false,
  }) {
    if (isRequired && !readOnly) {
      validator ??= ValidationBuilder().required().build();
    }
  }

  final TextEditingController controller;
  final String label;
  final String? hintText;
  final String? helperText;
  final bool readOnly;
  final ValueChanged<String>? onChanged;
  bool isRequired;
  FormFieldValidator<String>? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? inputType;
  final GestureTapCallback? onTap;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final bool multiLine;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: formlabelTextStyle,
            children: <TextSpan>[
              TextSpan(text: isRequired ? "*" : "", style: TextStyle(color: Colors.red)),
            ],
          ),
        ),
        SizedBox(
          height: helperText != null ? 16 : 8,
        ),
        helperText != null ? Text(helperText ?? "") : SizedBox(),
        SizedBox(
          height: helperText != null ? 16 : 0,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: lightGreyColor.withOpacity(0.16),
                blurRadius: 24,
                offset: Offset(0, 16), // Shadow position
              ),
            ],
          ),
          child: TextFormField(
            minLines: multiLine ? 3 : 1,
            maxLines: multiLine ? null : 3,
            onTap: onTap,
            enabled: onTap != null ? true : !readOnly,
            controller: controller,
            readOnly: readOnly,
            onChanged: onChanged,
            validator: validator,
            keyboardType: inputType,
            inputFormatters: inputFormatters,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontSize: 16,
                  color: Colors.black,
                  // fontWeight: FontWeight.w600,
                ),
            obscureText: isObscure,
            decoration: InputDecoration(
              fillColor: backgroundColor ?? (onTap != null || !readOnly ? whiteColor : neutralColor),
              //jika ontap!=null, maka state "active". jika bukan readyonly, maka state "active". Jika readonly dan ontap == null maka state "inactive"
              suffixIcon: suffixIcon,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              hintText: hintText ?? label,
              hintStyle: hintTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
