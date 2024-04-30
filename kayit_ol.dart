import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:moz/moz_hesap_giris_yap1.dart';

class StepperKayit extends StatefulWidget {
  const StepperKayit({super.key});

  @override
  StepperKayitState createState() => StepperKayitState();
}

class StepperKayitState extends State<StepperKayit> {
  bool isHiddenPassword = true;
  int _aktifStep = 0;
  String dataKulAdi = 'konyartaha1905',
      dataMail = 'konyartaha1905@gmail.com',
      dataSifre = '1234567890';
  bool hata = false;
  List<Step> tumStepler = [];
  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      body: SingleChildScrollView(
        child: Stepper(
          controlsBuilder: controlsBuilder,
          steps: _tumStepler(),
          currentStep: _aktifStep,
          onStepContinue: () {
            setState(() {
              _ileriButonuKontrolu();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              } else {
                _aktifStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: const Text(
          'Kullanıcı Adı Belirleyiniz',
          style: TextStyle(color: Colors.blue),
        ),
        subtitle: const Text(
          'En az 6 karakter',
          style: TextStyle(color: Colors.blue),
        ),
        state: _stateleriAyarla(0),
        isActive: true,
        content: TextFormField(
          style: const TextStyle(color: Colors.white),
          key: key0,
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
              icon: const Icon(Icons.person),
              labelStyle: const TextStyle(color: Colors.white),
              hintStyle: const TextStyle(color: Colors.blue),
              labelText: 'Kullanıcı Adı',
              hintText: 'Kullanıcı Adı',
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6) {
              return 'En az 6 karakter giriniz';
            } else {
              return null;
            }
          },
          onSaved: (girilenDeger) {
            dataKulAdi = girilenDeger ?? '';
          },
        ),
      ),
      Step(
        title: const Text(
          'E-mail giriniz',
          style: TextStyle(color: Colors.blue),
        ),
        subtitle: const Text(
          'Geçerli bir alt e-mail giriniz',
          style: TextStyle(color: Colors.blue),
        ),
        state: _stateleriAyarla(1),
        isActive: true,
        content: TextFormField(
          style: const TextStyle(color: Colors.white),
          key: key1,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            icon: const Icon(Icons.mail),
            labelStyle: const TextStyle(color: Colors.white),
            hintStyle: const TextStyle(color: Colors.blue),
            labelText: 'E-Mail',
            hintText: 'E-Mail',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          ),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6 ||
                !EmailValidator.validate(girilenDeger)) {
              return 'Geçerli bir mail giriniz';
            }
            return null;
          },
          onSaved: (girilenDeger) {
            dataMail = girilenDeger ?? '';
          },
        ),
      ),
      Step(
        title: const Text(
          'Şifre Belirleyiniz',
          style: TextStyle(color: Colors.blue),
        ),
        subtitle: const Text(
          'En az 8 karakter',
          style: TextStyle(color: Colors.blue),
        ),
        state: _stateleriAyarla(2),
        isActive: true,
        content: TextFormField(
          style: const TextStyle(color: Colors.white),
          obscureText: isHiddenPassword,
          key: key2,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            icon: const Icon(Icons.key),
            labelStyle: const TextStyle(color: Colors.white),
            hintStyle: const TextStyle(color: Colors.blue),
            labelText: 'Şifre',
            hintText: 'Şifre',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            suffixIcon: InkWell(
              onTap: _toggleButonuKontrolu,
              child: const Icon(
                Icons.visibility,
              ),
            ),
          ),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 8) {
              return 'En az 8 karakter olmalı';
            } else {
              return null;
            }
          },
          onSaved: (girilenDeger) {
            dataSifre = girilenDeger ?? '';
          },
        ),
      ),
      const Step(
          title: Text(
            'Kaydol ve Moz hesabı ile giriş yap?',
            style: TextStyle(color: Colors.blue),
          ),
          content: Text('')),
    ];
    return stepler;
  }

  StepState _stateleriAyarla(int oankiStep) {
    if (_aktifStep == oankiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonuKontrolu() {
    switch (_aktifStep) {
      case 0:
        if (key0.currentState!.validate()) {
          key0.currentState!.save();
          hata = false;
          _aktifStep = 1;
        } else {
          hata = true;
        }
        break;

      case 1:
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          hata = false;
          _aktifStep = 2;
        } else {
          hata = true;
        }
        break;

      case 2:
        if (key2.currentState!.validate()) {
          key2.currentState!.save();
          hata = false;
          _aktifStep = 3;
        } else {
          hata = true;
        }
        break;
    }
  }

  void _toggleButonuKontrolu() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }

  Widget controlsBuilder(
      BuildContext context, ControlsDetails controlsDetails) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Row(
        children: [
          if (_aktifStep != 3)
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              onPressed: controlsDetails.onStepContinue,
              child: const Text('Sonraki'),
            ),
          if (_aktifStep != 0)
            TextButton(
              onPressed: controlsDetails.onStepCancel,
              child: const Text(
                'Geri',
                style: TextStyle(color: Colors.white),
              ),
            ),
          if (_aktifStep == 3)
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const MozGirisa(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              child: const Text('Kaydol ve Moz hesabı ile giriş yap?'),
            ),
        ],
      ),
    );
  }
}
