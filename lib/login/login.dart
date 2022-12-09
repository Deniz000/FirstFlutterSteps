import 'dart:ffi';

import 'package:flutter/material.dart';

//widget inspector nasıl kullanılır
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: height * .25,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/png/topImage.png")))),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Merhaba \nHoşgeldin',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: _customInputDecoration('Kullanıcı Adı'),
                    ),
                    customSizedBox(),
                    TextField(
                      decoration: _customInputDecoration('Şifre'),
                    ),
                    customSizedBox(),
                    extraMethods('Şifremi Unuttum'),
                    customSizedBox(),
                    projectButons(context, 'Giriş Yap'),
                    extraMethods('Hesap Oluştur')
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Container projectButons(BuildContext context, String text) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Text(text),
        ),
      ),
    );
  }

  Center extraMethods(String text) {
    return Center(
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: const TextStyle(color: Color.fromARGB(255, 171, 148, 235)),
          )),
    );
  }

  Widget customSizedBox() => const SizedBox(
        height: 20,
      );

  InputDecoration _customInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      hintStyle: const TextStyle(fontSize: 20),
      helperStyle: const TextStyle(fontSize: 20),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple.shade300)),
      focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple)),
    );
  }
}
