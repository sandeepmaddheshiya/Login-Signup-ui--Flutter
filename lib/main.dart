import 'package:flutter/material.dart';
import 'package:logsinpg/login.dart';
import 'package:logsinpg/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login SignUp",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(1), BlendMode.dstATop),
            image: const AssetImage('assets/images/lsbgh1s.jpg'),
          ),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 205, left: 140),
              child: Text(
                "Welcome!",
                style: TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  letterSpacing: 3,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0, // shadow blur
                      color: Colors.purple, // shadow color
                      offset: Offset(4.0, 4.0), // how much shadow will be shown
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  height: 255,
                ),
                SizedBox(
                  height: 50,
                  width: 380,
                  child: ClipRRect(
                    borderRadius: BorderRadiusDirectional.circular(19),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MySignup()));
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                            Color.fromARGB(255, 169, 0, 247)),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6, left: 40),
                  child: Row(
                    children: [
                      const Text(
                        "Already have an account,",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyLogin(),
                              ));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 169, 0, 247)),
                        ),
                      ),
                      const Text(
                        "here.",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
