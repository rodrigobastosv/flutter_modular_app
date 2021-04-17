import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'sign_in_controller.dart';

class SignInWidget extends StatelessWidget {
  SignInWidget({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final isLoading = context.watch<SignInController>().isLoading;
    return Scaffold(
      body: Center(
        child: isLoading
            ? CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.all(18),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Login/E-mail',
                        ),
                        validator: (login) =>
                            login!.isEmpty ? 'Login é obrigatório' : null,
                        onSaved: (login) {
                          context.read<SignInController>().setLogin(login!);
                        },
                      ),
                      SizedBox(height: 12),
                      TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Senha',
                        ),
                        validator: (password) =>
                            password!.isEmpty ? 'Senha é obrigatório' : null,
                        onSaved: (password) {
                          context
                              .read<SignInController>()
                              .setPassword(password!);
                        },
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          final form = _formKey.currentState;
                          if (form?.validate() ?? false) {
                            form!.save();
                            final isUserSigned = await context
                                .read<SignInController>()
                                .signInUser();
                            if (isUserSigned) {
                              Navigator.of(context).pushNamed('marketplace');
                            }
                          }
                        },
                        child: Text(
                          'Login',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
