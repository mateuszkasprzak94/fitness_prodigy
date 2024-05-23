import 'package:fitness_prodigy/app/core/constants.dart';
import 'package:fitness_prodigy/app/pages/features/supplements/supplements_t/supplements_type_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SupplementsButton extends StatelessWidget {
  const SupplementsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const SupplementsTypePage(),
                ),
              );
            },
            child: Container(
              height: 150,
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: kHomeGradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 4),
                    blurRadius: 5,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Text(
                          'Supplements Type'.toUpperCase(),
                          style: GoogleFonts.lato(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber.shade600,
                              fontStyle: FontStyle.italic,
                              shadows: [
                                const Shadow(
                                  color: Colors.black,
                                  offset: Offset(0, 2),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage('assets/images/supplements.png'),
                        color: Color.fromARGB(255, 189, 63, 211),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 150,
              width: double.infinity,
              padding: const EdgeInsets.only(bottom: 15, left: 10, right: 10),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: kHomeGradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 4),
                    blurRadius: 5,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: FittedBox(
                        child: Text(
                          'vitamins & minerals'.toUpperCase(),
                          style: GoogleFonts.lato(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.amber.shade600,
                              fontStyle: FontStyle.italic,
                              shadows: [
                                const Shadow(
                                  color: Colors.black,
                                  offset: Offset(0, 2),
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.center,
                      child: Image(
                        image: AssetImage('assets/images/vitamins.png'),
                        color: Color.fromARGB(255, 63, 78, 211),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
