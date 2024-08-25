import 'package:e_shop/core/utilities/data_response.dart';
import 'package:e_shop/core/utilities/extensions.dart';
import 'package:e_shop/core/widgets/loading_popup.dart';
import 'package:e_shop/core/widgets/text_field_widget.dart';
import 'package:e_shop/features/authentication/ui/bloc/auth_screen_state.dart';
import 'package:e_shop/features/authentication/ui/bloc/authentication_bloc.dart';
import 'package:e_shop/features/authentication/ui/bloc/authentication_event.dart';
import 'package:e_shop/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<AuthenticationBloc, AuthScreenState>(
          listenWhen: (previous, current) {
            return previous.authenticationResult !=
                current.authenticationResult;
          },
          listener: (context, state) {
            if (state.authenticationResult is FormError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    context.localization.fillAllFields,
                  ),
                ),
              );
            } else if (state.authenticationResult is DataIsLoading) {
              LoadingPopup(
                message: context.localization.authUser,
              ).show(context);
            } else if (state.authenticationResult is DataCompleted) {
              GoRouter.of(context).pop();
              GoRouter.of(context).go('/products');
            } else if (state.authenticationResult is DataError) {
              GoRouter.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    context.localization.authError,
                  ),
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
                                  context.localization.login,
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
                                context.localization.loginDescription,
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
                                    context.read<AuthenticationBloc>().add(
                                          UpdateAuthEntityEvent(
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    TextFieldWidget(
                                      placeholder:
                                          context.localization.password,
                                      prefixIcon: Icons.lock_open_sharp,
                                      height: 50,
                                      borderRadius: 5,
                                      isObscure: true,
                                      fillColor: Colors.grey[50]!,
                                      onChange: (password) {
                                        context.read<AuthenticationBloc>().add(
                                              UpdateAuthEntityEvent(
                                                state.authenticationEntity
                                                    .copyWith(
                                                  password: password ?? '',
                                                ),
                                              ),
                                            );
                                      },
                                    ),
                                    InkWell(
                                      onTap: () {
                                        GoRouter.of(context).push('/register');
                                      },
                                      child: Text(
                                        context.localization.createAccount,
                                        style: const TextStyle(
                                          color: Colors.amber,
                                          decoration: TextDecoration.underline,
                                          decorationColor: Colors.amber,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
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
                                          .read<AuthenticationBloc>()
                                          .add(const AuthenticateUserEvent());
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: Text(
                                      context.localization.authenticate,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    context
                                        .read<AuthenticationBloc>()
                                        .add(const GuestAuthenticationEvent());
                                  },
                                  child: Text(
                                    context.localization.continueAsGuest,
                                    style: const TextStyle(
                                      color: Colors.amber,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
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
