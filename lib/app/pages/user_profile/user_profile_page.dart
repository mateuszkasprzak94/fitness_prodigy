import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/core/text_styles.dart';
import 'package:fitness_prodigy/app/cubit/auth_cubit.dart';
import 'package:fitness_prodigy/app/pages/user_profile/widgets/profile_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({
    super.key,
    required this.email,
  });

  final String? email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: kHomeGradient,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'user profile'.toUpperCase(),
                    style: profileTextStyle,
                    maxLines: 1,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Text(
                      AppLocalizations.of(context).loggedAs,
                      style: GoogleFonts.libreFranklin(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '$email',
                      style: GoogleFonts.libreFranklin(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        context.read<AuthCubit>().signOut();
                      },
                      child: ProfileButton(
                        title:
                            AppLocalizations.of(context).logout.toUpperCase(),
                        icon: Icons.login_outlined,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext child) {
                            return AlertDialog(
                              title: Text(
                                AppLocalizations.of(context).delete,
                              ),
                              content: Text(
                                AppLocalizations.of(context).warningDelete1,
                              ),
                              actions: [
                                TextButton(
                                  child: Text(
                                    AppLocalizations.of(context).cancel,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),
                                TextButton(
                                  child: Text(
                                    AppLocalizations.of(context).deleteFinal,
                                    style: const TextStyle(color: Colors.red),
                                  ),
                                  onPressed: () {
                                    // Call the delete account function
                                    context
                                        .read<AuthCubit>()
                                        .deleteUserAccount();

                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: ProfileButton(
                        title: AppLocalizations.of(context).deleteAccount,
                        icon: Icons.delete,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignedOutButton extends StatelessWidget {
  const SignedOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: StadiumBorder(),
      elevation: 8,
      child: Container(
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ],
          ),
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

            // deactivate color and shadow
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
          ),
          onPressed: () {
            context.read<AuthCubit>().signOut();
          },
          child: Text(
            AppLocalizations.of(context).logout,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      ),
    );
  }
}

class DeleteButton extends StatelessWidget {
  const DeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),

        // deactivate color and shadow
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        backgroundColor: Colors.red,
        shadowColor: Colors.transparent,
        elevation: 0,
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext child) {
            return AlertDialog(
              title: Text(
                AppLocalizations.of(context).delete,
              ),
              content: Text(
                AppLocalizations.of(context).warningDelete1,
              ),
              actions: [
                TextButton(
                  child: Text(
                    AppLocalizations.of(context).cancel,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text(
                    AppLocalizations.of(context).deleteFinal,
                    style: const TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    // Call the delete account function
                    context.read<AuthCubit>().deleteUserAccount();

                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      },
      child: Text(
        AppLocalizations.of(context).deleteAccount,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationName: 'Fitness Prodigy',
          applicationVersion: '1.0.0',
          applicationLegalese:
              'Copyright © 2023 Fitness Prodigy. All rights reserved.',
          child: Text('About'),
        ),
      ),
    );
  }
}
