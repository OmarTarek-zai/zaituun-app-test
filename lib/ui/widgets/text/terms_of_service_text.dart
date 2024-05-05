import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsOfServiceText extends StatelessWidget {
  const TermsOfServiceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
            text: "By using this app you agree to the ",
            style: textTheme.bodyLarge!,
          ),
          TextSpan(
              text: "Terms of Service",
              recognizer: TapGestureRecognizer()
                ..onTap = () => print('==> Terms of Service'),
              style: textTheme.bodyLarge!.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: Colors.white,
              )),
        ]));
  }
}
