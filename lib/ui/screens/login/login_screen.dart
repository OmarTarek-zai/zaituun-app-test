import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zaituun/ui/constants/app_colors.dart';
import 'package:zaituun/ui/constants/decorations.dart';
import 'package:zaituun/ui/widgets/buttons/transquishable_widget.dart';
import 'package:zaituun/ui/widgets/text/terms_of_service_text.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final passwordShown = useState(false);
    final emailTextController = useTextEditingController();
    final passwordTextController = useTextEditingController();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: const CupertinoNavigationBar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
                child: Center(
                    child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 37.spMin),
                    child: Text(
                      'Log in',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                  Gap(12.spMin),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 31.spMin),
                    child: const Divider(color: AppColors.foregroundGrey),
                  ),
                  Gap(36.spMin),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 31.spMin),
                        child: TextField(
                          controller: emailTextController,
                          cursorColor: AppColors.fadedGrey,
                          decoration:
                              InputDecorations.getFormInputField('Email'),
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                      ),
                      Gap(12.spMin),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 31.spMin),
                        child: TextField(
                          controller: passwordTextController,
                          cursorColor: AppColors.fadedGrey,
                          obscureText: !passwordShown.value,
                          decoration:
                              InputDecorations.getFormInputField('Password')
                                  .copyWith(
                                      suffixIcon: IconButton(
                            onPressed: () =>
                                passwordShown.value = !passwordShown.value,
                            icon: Icon(
                              passwordShown.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: AppColors.fadedGrey,
                            ),
                          )),
                          keyboardType: TextInputType.visiblePassword,
                          style: TextStyle(color: Colors.black),
                          textInputAction: TextInputAction.done,
                          onSubmitted: (value) => print(
                              '==> Submit with values ${emailTextController.text} and ${passwordTextController.text}'),
                        ),
                      ),
                      Gap(61.spMin),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 39.spMin),
                          child: TransquishableWidget(
                              onTap: () => print(
                                  '==> Login with values ${emailTextController.text} and ${passwordTextController.text}'),
                              child: Container(
                                  height: 49.spMin,
                                  decoration: Decorations.mainWhiteButton,
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(color: Colors.black),
                                    ),
                                  )))),
                      Gap(34.spMin),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 31.spMin),
                        child: const Divider(
                          color: AppColors.foregroundGrey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ))),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 54.spMin, vertical: 3.spMin),
              child: TermsOfServiceText(),
            )
          ],
        ),
      ),
    );
  }
}
