import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

class CustomVerifyOtp extends StatefulWidget {
  const CustomVerifyOtp({super.key});

  @override
  State<CustomVerifyOtp> createState() => _CustomVerifyOtpState();
}

class _CustomVerifyOtpState extends State<CustomVerifyOtp> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  @override
  Widget build(BuildContext context) {
    return OtpPinField(
      key: _otpPinFieldController,

      autoFillEnable: false,

      textInputAction: TextInputAction.done,

      onSubmit: (text) {},
      onChange: (text) {},
      onCodeChanged: (code) {},

      otpPinFieldStyle: OtpPinFieldStyle(
        showHintText: true,
        fieldBorderRadius: 50,
        activeFieldBorderGradient: LinearGradient(
          colors: [const Color(0xFF919191), const Color(0xFF919191)],
        ),
        filledFieldBorderGradient: LinearGradient(
          colors: [const Color(0xFF919191), const Color(0xFF919191)],
        ),
        defaultFieldBorderGradient: LinearGradient(
          colors: [const Color(0xFF919191), const Color(0xFF919191)],
        ),
      ),
      showCursor: true,
      cursorColor: Colors.black,

      mainAxisAlignment: MainAxisAlignment.center,
      otpPinFieldDecoration: OtpPinFieldDecoration.roundedPinBoxDecoration,
    );
  }
}
