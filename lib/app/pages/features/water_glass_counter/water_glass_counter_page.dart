import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WaterGlassCounterPage extends StatefulWidget {
  const WaterGlassCounterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<WaterGlassCounterPage> createState() => _WaterGlassCounterPageState();
}

class _WaterGlassCounterPageState extends State<WaterGlassCounterPage> {
  var currentIndex = 0;
  var waterGlassCount = 0;
  var goalReached = false;
  var goal = 1;

  @override
  void initState() {
    super.initState();
    _loadPreferences(); // Load saved preferences when the widget initializes
  }

  @override
  void dispose() {
    _savePreferences(); // Save preferences when the widget is disposed
    super.dispose();
  }

  Future<void> _loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      waterGlassCount = prefs.getInt('waterGlassCount') ?? 0;
      goal = prefs.getInt('goal') ?? 1;
      goalReached = waterGlassCount >= goal;
    });
  }

  Future<void> _savePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('waterGlassCount', waterGlassCount);
    await prefs.setInt('goal', goal);
  }

  void _incrementWaterGlassCount() {
    setState(() {
      waterGlassCount++;
      if (waterGlassCount >= goal) {
        goalReached = true;
      }
      _savePreferences(); // Save preferences after updating values
    });
  }

  void _decrementWaterGlassCount() {
    setState(() {
      if (waterGlassCount > 0) {
        waterGlassCount--;
        if (waterGlassCount < goal) {
          goalReached = false;
        }
      }
      _savePreferences(); // Save preferences after updating values
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Water Glass Counter',
          style: GoogleFonts.satisfy(fontSize: 30, color: Colors.black),
        ),
        centerTitle: true,
        flexibleSpace: Container(

            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(colors: [

            //     // Color.fromARGB(164, 0, 0, 0),
            //     // Colors.white,
            //   ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            // ),
            ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        automaticallyImplyLeading: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/w3.png'), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                goalReached
                    ? Column(
                        children: [
                          Image.asset(
                            'images/water glass.png',
                            width: 200,
                            height: 200,
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'GOAL REACHED!',
                            style: TextStyle(
                              color: Color.fromARGB(255, 25, 187, 30),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ],
                      )
                    : Image.asset(
                        'images/empty.png',
                        width: 200,
                        height: 200,
                      ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Water Glass Count: $waterGlassCount / Goal: $goal',
                  style: const TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.white],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: _incrementWaterGlassCount,
                        style: ElevatedButton.styleFrom(
                          //deactivate color and shadow
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          fixedSize: const Size(50, 50),
                        ),
                        child: const Text(
                          '+',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      decoration: const ShapeDecoration(
                        shape: StadiumBorder(),
                        gradient: LinearGradient(
                          colors: [Colors.blue, Colors.white],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: ElevatedButton(
                        onPressed: _decrementWaterGlassCount,
                        style: ElevatedButton.styleFrom(
                          //deactivate color and shadow
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          fixedSize: const Size(50, 50),
                        ),
                        child: const Text('-',
                            style:
                                TextStyle(fontSize: 17, color: Colors.black)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Slider(
                  onChanged: (newValue) {
                    setState(() {
                      goal = newValue.toInt();
                    });
                  },
                  value: goal.toDouble(),
                  min: 1.0,
                  max: 20.0,
                  divisions: 19,
                  label: goal.toString(),
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}