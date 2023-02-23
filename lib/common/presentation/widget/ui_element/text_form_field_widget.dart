import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dream_soft/common/shared/sizes.dart';

class CustomTextFormField extends StatefulWidget {
  final String? prefixIcon;
  final TextEditingController? controller;
  final String? hintText;
  final String? suffixIcon;
  final void Function()? suffixOnTap;
  final bool? obscureText;
  final int? maxLine;
  final String? Function(String?)? validator;
  final AutovalidateMode? validateType;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final bool? enabled;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final EdgeInsetsGeometry? contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign? textAlign;
  final Widget? suffixWidget;

  const CustomTextFormField({
    Key? key,
    this.prefixIcon,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.suffixOnTap,
    this.obscureText,
    this.maxLine,
    this.validator,
    this.validateType,
    this.keyboardType,
    this.readOnly,
    this.enabled,
    this.onChanged,
    this.contentPadding,
    this.inputFormatters,
    this.onTap,
    this.textAlign,
    this.suffixWidget,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      keyboardType: widget.keyboardType,
      enabled: widget.enabled,
      textAlign: widget.textAlign ?? TextAlign.start,
      onChanged: widget.onChanged,
      onTap: widget.onTap,
      validator: widget.validator,
      readOnly: widget.readOnly ?? false,
      autovalidateMode: widget.validateType ?? AutovalidateMode.onUserInteraction,
      obscureText: widget.obscureText ?? false,
      // obscuringCharacter: '-',
      maxLines: widget.maxLine ?? 1,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
        hintText: widget.hintText,
        contentPadding: widget.contentPadding,
        prefixIcon: widget.prefixIcon != null
            ? Container(
                width: MySizes.buttonHeight,
                height: MySizes.buttonHeight,
                margin: const EdgeInsetsDirectional.only(start: MySizes.defaultPadding * .25),
                padding: const EdgeInsets.all(MySizes.defaultPadding * .9),
                child: SvgPicture.asset(
                  widget.prefixIcon!,
                  color: _focusNode.hasFocus
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              )
            : null,
        suffixIcon: widget.suffixWidget ??
            (widget.suffixIcon != null
                ? InkWell(
                    onTap: widget.suffixOnTap,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    child: Container(
                      width: MySizes.buttonHeight,
                      height: MySizes.buttonHeight,
                      padding: const EdgeInsets.all(MySizes.defaultPadding * .9),
                      margin: const EdgeInsetsDirectional.only(end: MySizes.defaultPadding * .25),
                      child: SvgPicture.asset(
                        widget.suffixIcon!,
                        color: _focusNode.hasFocus
                            ? Theme.of(context).colorScheme.primary
                            : Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  )
                : null),
      ),
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
    );
  }
}
