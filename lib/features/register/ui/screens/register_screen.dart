import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/core/utilities/extensions.dart';
import 'package:e_shop/core/widgets/loading_popup.dart';
import 'package:e_shop/core/widgets/text_field_widget.dart';
import 'package:e_shop/features/register/ui/bloc/register_bloc.dart';
import 'package:e_shop/features/register/ui/bloc/register_events.dart';
import 'package:e_shop/features/register/ui/bloc/register_screen_state.dart';
import 'package:e_shop/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterationScreen extends StatelessWidget {
  const RegisterationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<RegisterBloc, RegisterScreenState>(
          listenWhen: (previous, current) {
            return previous.registerationResult != current.registerationResult;
          },
          listener: (context, state) {
            if (state.registerationResult is FormError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    context.localization.fillAllFields,
                  ),
                ),
              );
            } else if (state.registerationResult is DataIsLoading) {
              LoadingPopup(
                message: context.localization.registeringUser,
              ).show(context);
            } else if (state.registerationResult is DataCompleted) {
              GoRouter.of(context).pop();
              GoRouter.of(context).go('/products');
            } else if (state.registerationResult is DataError) {
              GoRouter.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(context.localization.registerError),
                ),
              );
            }
          },
          builder: (context, state) {
            return Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Assets.images.shoppingCartIllustration.svg(
                      width: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Assets.logo.appLogo.image(width: 50),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  context.localization.register,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            Container(
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.6,
                              ),
                              child: Text(
                                context.localization.registerDescription,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                TextFieldWidget(
                                  placeholder: context.localization.email,
                                  prefixIcon: Icons.mail_outline_outlined,
                                  height: 50,
                                  borderRadius: 5,
                                  fillColor: Colors.grey[50]!,
                                  onChange: (email) {
                                    context.read<RegisterBloc>().add(
                                          UpdateRegisterForm(
                                            state.authenticationEntity.copyWith(
                                              email: email ?? '',
                                            ),
                                          ),
                                        );
                                  },
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                TextFieldWidget(
                                  placeholder: context.localization.password,
                                  prefixIcon: Icons.lock_open_sharp,
                                  height: 50,
                                  borderRadius: 5,
                                  fillColor: Colors.grey[50]!,
                                  isObscure: true,
                                  onChange: (password) {
                                    context.read<RegisterBloc>().add(
                                          UpdateRegisterForm(
                                            state.authenticationEntity.copyWith(
                                              password: password ?? '',
                                            ),
                                          ),
                                        );
                                  },
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      context
                                          .read<RegisterBloc>()
                                          .add(const RegisterNewUser());
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: Text(
                                      context.localization.createAccount,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
