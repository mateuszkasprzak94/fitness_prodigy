import 'package:fitness_prodigy/app/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
              'You are logged as $email',
              style: GoogleFonts.libreFranklin(fontSize: 20),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              color: Colors.transparent,
              shape: shape,
              elevation: 8,
              child: Container(
                decoration: const ShapeDecoration(
                  shape: shape,
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(164, 0, 0, 0),
                      Colors.white,
                    ],
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),

                    // deactivate color and shadow
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: () {
                    context.read<AuthCubit>().signOut();
                    // FirebaseAuth.instance.signOut();
                    // Navigator.pushNamedAndRemoveUntil(
                    //   context,
                    //   '/', // Replace with the route name for your login page
                    //   (route) => false,
                    // );
                  },
                  child: const Text(
                    'Logout',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: const Align(
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
      ),
    );
  }
}
