import 'package:flutter/material.dart';
import 'package:onboarding/main.dart';
import 'package:onboarding/pages/sign_in/sign_in_controller.dart';
import 'package:onboarding/pages/sign_in/sign_in_widget.dart';
import 'package:onboarding/repository/repository.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => SignInController(
        appInjector.get<ISignInRepository>(),
      ),
      child: SignInWidget(),
    );
  }
}
