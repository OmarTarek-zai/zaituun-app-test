import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:zaituun/ui/constants/app_colors.dart';
import 'package:zaituun/ui/constants/decorations.dart';
import 'package:zaituun/ui/screens/coming_soon/coming_soon_screen.dart';
import 'package:zaituun/ui/screens/sign_up/sign_up_screen_states.dart';
import 'package:zaituun/ui/screens/sign_up/sign_up_view_model.dart';
import 'package:zaituun/ui/widgets/buttons/transquishable_widget.dart';
import 'package:zaituun/ui/widgets/text/terms_of_service_text.dart';
import 'package:zaituun/utils/validator.dart';

class SignUpScreen extends HookConsumerWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailTextController = useTextEditingController();
    final emailValid = useIsEmailValid(emailTextController);
    final passwordTextController = useTextEditingController();
    final passwordValid = useIsPasswordValid(passwordTextController);
    final passwordShown = useState(false);

    final vm = ref.read(SignUpViewModel.provider.notifier);
    final vmState = ref.watch(SignUpViewModel.provider);
    final isLoading = vmState is SignUpLoadingState;

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
                      'Sign up',
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          style: const TextStyle(color: Colors.black),
                          textInputAction: TextInputAction.done,
                          onSubmitted: (value) => vm.signUp(
                              emailTextController.text,
                              passwordTextController.text),
                        ),
                      ),
                      Gap(20.spMin),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 39.spMin),
                        child: Text(
                          'Password Requirements:\n • Must be at least 8 characters long.\n • Must contain at least one numeric digit.\n • Must contain at least one capital letter.',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(color: AppColors.fadedGrey),
                        ),
                      ),
                      Gap(20.spMin),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 39.spMin),
                          child: TransquishableWidget(
                              enabled: passwordValid.value &&
                                  emailValid.value &&
                                  !isLoading,
                              onTap: () => vm.signUp(emailTextController.text,
                                  passwordTextController.text),
                              child: Container(
                                  height: 49.spMin,
                                  decoration:
                                      passwordValid.value && emailValid.value
                                          ? Decorations.mainWhiteButton
                                          : Decorations.mainWhiteButtonDisabled,
                                  child: Center(
                                    child: !isLoading
                                        ? Text(
                                            'Register',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge!
                                                .copyWith(color: Colors.black),
                                          )
                                        : LoadingAnimationWidget.inkDrop(
                                            color: Colors.black,
                                            size: 25.spMin),
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
