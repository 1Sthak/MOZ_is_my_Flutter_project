import 'package:flutter/material.dart';
import 'package:moz/kayit_ol.dart';
import 'package:moz/moz_hesap_giris_yap1.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final value = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              backgroundColor: const Color.fromARGB(255, 39, 39, 39),
              title: const Text(
                'Uyarı',
                style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
              ),
              content: const Text(
                'Çıkmak İstiyormusun?',
                style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
              ),
              actions: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 254, 198, 62)),
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text(
                    'Hayır',
                    style: TextStyle(color: Color.fromARGB(255, 39, 39, 39)),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 254, 198, 62)),
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text(
                    'Evet',
                    style: TextStyle(color: Color.fromARGB(255, 39, 39, 39)),
                  ),
                ),
              ],
            );
          },
        );
        if (value != null) {
          return Future.value(value);
        } else {
          return Future.value(false);
        }
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),
        body: Container(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 200,
                  child: Image.asset(
                      'assets/images/DALL·E 2022-12-17 10.53.22 - logo that says mozig with a graphic bee on it kopya.png'),
                ),
                const Text(
                  'Oturum Açın',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                      color: Color.fromARGB(255, 254, 198, 62)),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const MozGirisa()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 254, 198, 62),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  icon: Image.asset('assets/images/moz30px.png'),
                  label: const Text(
                    'Moz hesabın ile oturum aç',
                    style: TextStyle(
                      color: Color.fromARGB(255, 42, 36, 11),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 226, 232, 251),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  icon: Image.asset('assets/images/Gmail_Logo_512px.png'),
                  label: const Text(
                    'Gmail ile oturum aç',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF334D92),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  icon: Image.asset('assets/images/fb30px kopya.png'),
                  label: const Text(
                    'Facebook ile oturum aç',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Henüz bir hesabın yok mu?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(255, 254, 198, 62)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const StepperKayit()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 254, 198, 62),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  child: const Text(
                    'Hesap Oluştur',
                    style: TextStyle(color: Color.fromARGB(255, 42, 36, 11)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
