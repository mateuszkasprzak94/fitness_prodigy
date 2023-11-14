import 'package:fitness_prodigy/app/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    const shape = StadiumBorder();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Profile',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(164, 0, 0, 0),
              Colors.white,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context).loggedAs,
              style: GoogleFonts.libreFranklin(fontSize: 20),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              '$email',
              style: GoogleFonts.libreFranklin(fontSize: 20),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            const SignedOutButton(shape: shape),
            const SizedBox(height: 20),
            const DeleteButton()
          ],
        ),
      ),
      floatingActionButton: const AboutWidget(),
    );
  }
}

class SignedOutButton extends StatelessWidget {
  const SignedOutButton({
    super.key,
    required this.shape,
  });

  final StadiumBorder shape;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shape: shape,
      elevation: 8,
      child: Container(
        decoration: ShapeDecoration(
          shape: shape,
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
