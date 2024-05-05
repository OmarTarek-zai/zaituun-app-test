import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:zaituun/core/router/app_router.dart';
import 'package:zaituun/ui/constants/app_colors.dart';
import 'package:zaituun/ui/constants/decorations.dart';
import 'package:zaituun/ui/widgets/buttons/transquishable_widget.dart';
import 'package:zaituun/ui/widgets/text/terms_of_service_text.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 31.spMin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                  child: Center(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 122.spMin,
                        height: 122.spMin,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          shape: BoxShape.circle,
                        ),
                      ),
                      Gap(24.spMin),
                      Text(
                        'Zaituun',
                        style: textTheme.headlineMedium!
                            .copyWith(color: Colors.white),
                      ),
                      Gap(70.spMin),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13.spMin),
                        child: Text(
                          "Join us and be part of the new revolution",
                          style: textTheme.titleLarge!
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Gap(19.spMin),
                      const Divider(color: AppColors.foregroundGrey),
                      Gap(19.spMin),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13.spMin),
                        child: Text(
                          "Introduce what's different",
                          style: textTheme.titleMedium!
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Gap(21.spMin),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.spMin),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TransquishableWidget(
                              onTap: () => const SignUpRoute().push(context),
                              child: Container(
                                height: 49.spMin,
                                decoration: Decorations.mainWhiteButton,
                                child: Center(
                                  child: Text(
                                    "Sign Up",
                                    style: textTheme.labelLarge!.copyWith(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Gap(21.spMin),
                            TransquishableWidget(
                              onTap: () => const LoginRoute().push(context),
                              child: Container(
                                  height: 49.spMin,
                                  decoration: Decorations.secondaryWhiteButton,
                                  child: Center(
                                    child: Text(
                                      "Login",
                                      style: textTheme.labelLarge!.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Gap(21.spMin),
                    ],
                  ),
                ),
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 23.spMin),
                child: const TermsOfServiceText(),
              ),
              Gap(20.spMin)
            ],
          ),
        ),
      ),
    );
  }
}
