import 'package:flutter/material.dart';
import 'package:moz/ana_sayfa.dart';
import 'package:moz/kayit_ol.dart';

class MozGirisa extends StatefulWidget {
  const MozGirisa({super.key});

  @override
  State<MozGirisa> createState() => _MozGirisaState();
}

class _MozGirisaState extends State<MozGirisa> {
  bool isHiddenPassword = true;
  String kk = StepperKayitState().dataKulAdi;
  String gg = StepperKayitState().dataSifre;
  String kulAdi = '', sifre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/DALL·E 2022-12-17 10.53.22 - logo that says mozig with a graphic bee on it kopya.png',
                        width: 200,
                        height: 200,
                      ),
                      const Text(
                        'Moz Hesabın ile giriş yap',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color.fromARGB(255, 254, 198, 62)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        initialValue: kk,
                        style: const TextStyle(color: Colors.white),
                        cursorColor: const Color.fromARGB(255, 42, 36, 11),
                        autofocus: true,
                        maxLength: 21,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          suffixIconColor:
                              const Color.fromARGB(255, 254, 198, 62),
                          icon: const Icon(
                            Icons.person,
                          ),
                          hintStyle: const TextStyle(color: Colors.blue),
                          labelStyle: const TextStyle(color: Colors.white),
                          labelText: 'Kullanıcı Adı',
                          hintText: 'Kullanıcı Adı',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        validator: (girilenDeger) {
                          if (girilenDeger!.length < 6) {
                            return 'Kullanıcı Adı en az 6 karakter olmalıdır';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (girilenDeger) {
                          kulAdi = girilenDeger;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        initialValue: gg,
                        style: const TextStyle(color: Colors.white),
                        obscureText: isHiddenPassword,
                        maxLength: 21,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                              onTap: _toggleButonuKontrolu,
                              child: const Icon(Icons.visibility)),
                          icon: const Icon(Icons.key),
                          hintStyle: const TextStyle(color: Colors.blue),
                          labelStyle: const TextStyle(color: Colors.white),
                          labelText: 'Şifre',
                          hintText: 'Şifre',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        validator: (girilenDeger) {
                          if (girilenDeger!.length < 8) {
                            return ('Şifre en az 8 karakter olmalıdır');
                          } else {
                            return null;
                          }
                        },
                        onChanged: (girilenDeger) {
                          sifre = girilenDeger;
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            if (kulAdi == kk && sifre == gg) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const MainPage()));
                            } else {
                              return;
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 254, 198, 62),
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)))),
                          child: const Text(
                            'Giriş',
                            style: TextStyle(
                                color: Color.fromARGB(255, 39, 39, 39)),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleButonuKontrolu() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}
