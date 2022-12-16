import 'package:flutter/material.dart';

class LoginPageTwo extends StatefulWidget {
  const LoginPageTwo({super.key});

  @override
  State<LoginPageTwo> createState() => _LoginPageTwoState();
}

class _LoginPageTwoState extends State<LoginPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: _ProjectPaddings.horizontal) +
            const EdgeInsets.only(top: 50),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SizedBox(
                  height: 150,
                  child: Image.asset('assets/png/sculpture.png'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              //hello again!
              _TextWidget(
                message: 'Hello Again!',
                size: 38,
                font: FontWeight.bold,
              ),
              const SizedBox(
                height: 20,
              ),
              _TextWidget(
                message: 'Welcome back, you\'ve been missed!',
                size: 20,
              ),
              const SizedBox(
                height: 30,
              ),
              _TextField(
                hint: 'Email',
                obscureText: false,
              ),
              _SizeBoxValue(),
              _TextField(
                hint: 'Password',
                obscureText: true,
              ),
              _SizeBoxValue(),
              _ButtonTheme(text: 'Sign In'),
              //Strings can also be split,
              _SizeBoxValue(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _SomeText(text: 'Not a member ? '),
                  _SomeText(
                    text: 'Register Now',
                    textColor: Colors.deepPurple,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _SizeBoxValue() => SizedBox(
        height: 15,
      );
}

class _SomeText extends StatelessWidget {
  _SomeText({Key? key, required this.text, this.textColor}) : super(key: key);
  String text;
  Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
    );
  }
}

class _ButtonTheme extends StatelessWidget {
  _ButtonTheme({Key? key, required this.text}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple.shade600,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(text),
        ),
      ),
    );
  }
}

class _ProjectPaddings {
  static double horizontal = 25;
}

class _TextField extends StatelessWidget {
  _TextField({Key? key, required this.hint, required this.obscureText})
      : super(key: key);
  String hint;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(border: InputBorder.none, hintText: hint),
        ),
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  _TextWidget({Key? key, required this.message, required this.size, this.font})
      : super(key: key);
  String message;
  double size;
  FontWeight? font;
  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      style: TextStyle(fontWeight: font, fontSize: size),
    );
  }
}
