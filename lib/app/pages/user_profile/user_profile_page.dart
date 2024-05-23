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
