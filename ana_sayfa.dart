import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  final tabs = [
    Column(
      children: [
        AppBar(
          iconTheme:
              const IconThemeData(color: Color.fromARGB(255, 39, 39, 39)),
          title: const Text(
            'Ana Sayfa',
            style: TextStyle(color: Color.fromARGB(255, 39, 39, 39)),
          ),
          centerTitle: true,
          actions: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade800,
                backgroundImage:
                    const AssetImage('assets/images/1662380442314.jpg'),
              ),
            ),
          ],
          backgroundColor: const Color.fromARGB(255, 254, 198, 62),
        ),
        Expanded(
            child: ListView(
          children: [
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'BrFootball',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Ekran Görüntüsü (420).png',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'konyartaha1905',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/1671609416930.jpg',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'LeoMessi',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Ekran Görüntüsü (414).png',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'konyartaha1905',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/119139987_349286952864574_943219089946647665_n.jpg',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Galatasaray',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Ekran Görüntüsü (416).png',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Galatasaray',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Ekran Görüntüsü (415).png',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'konyartaha1905',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/119578914_352462059213730_5756507126862980172_n.jpg',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'TrollFootball',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Ekran Görüntüsü (419).png',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'konyartaha1905',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/1662380442314.jpg',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'TrollFootball',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Ekran Görüntüsü (417).png',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 254, 198, 62),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'TrollFootball',
                  style: TextStyle(color: Color.fromARGB(255, 254, 198, 62)),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/images/Ekran Görüntüsü (418).png',
              width: 200,
              height: 300,
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.add_comment,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Color.fromARGB(255, 254, 198, 62),
              thickness: 2,
            ),
          ],
        ))
      ],
    ),
    Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Keşfet'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.redAccent,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Bu Özellik Henüz Aktif Değildir',
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 24),
        ),
      ],
    ),
    Column(
      children: [
        AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Mesajlaşma'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat),
            )
          ],
          backgroundColor: Colors.green,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Bu Özellik Henüz Aktif Değildir',
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ],
    ),
    CustomScrollView(
      slivers: [
        SliverAppBar(
          automaticallyImplyLeading: false,
          floating: true,
          snap: true,
          backgroundColor: Colors.blueGrey,
          expandedHeight: 170,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            background: Image.asset(
              'assets/images/119139987_349286952864574_943219089946647665_n_kopya.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          const Divider(
            thickness: 2,
            color: Colors.blueGrey,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              children: [
                const Padding(padding: EdgeInsets.only(left: 10)),
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.grey.shade800,
                  backgroundImage:
                      const AssetImage('assets/images/1662380442314.jpg'),
                ),
                const SizedBox(
                  width: 35,
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        child: const Text('Profili düzenle')),
                    ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        child: const Text('LinkedIn')),
                    ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        child: const Text('GitHub')),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(
                width: 25,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Konyartaha1905',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blueGrey),
                  ),
                  Text(
                    'Taha Konyar',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blueGrey),
                  ),
                  Text(
                    'Yazılım Mühendisliği',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blueGrey),
                  ),
                  Text(
                    'MAUN',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.blueGrey),
                  ),
                ],
              ),
            ],
          ),
          const Text(
            'Paylaşımlar',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Colors.blueGrey),
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'konyartaha1905',
                style: TextStyle(color: Colors.blueGrey),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/1671609416930.jpg',
            width: 200,
            height: 300,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add_comment,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.bookmark_border,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'konyartaha1905',
                style: TextStyle(color: Colors.blueGrey),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/119139987_349286952864574_943219089946647665_n.jpg',
            width: 200,
            height: 300,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add_comment,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.bookmark_border,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'konyartaha1905',
                style: TextStyle(color: Colors.blueGrey),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/119578914_352462059213730_5756507126862980172_n.jpg',
            width: 200,
            height: 300,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add_comment,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.bookmark_border,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.person,
                color: Colors.blueGrey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'konyartaha1905',
                style: TextStyle(color: Colors.blueGrey),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            'assets/images/1662380442314.jpg',
            width: 200,
            height: 300,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add_comment,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.bookmark_border,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            color: Colors.blueGrey,
            thickness: 2,
          ),
        ])),
      ],
    ),
  ];

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
                style: TextStyle(color: Colors.amber),
              ),
              content: const Text(
                'Çıkmak İstiyormusun?',
                style: TextStyle(color: Colors.amber),
              ),
              actions: [
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text(
                    'Hayır',
                    style: TextStyle(color: Color.fromARGB(255, 39, 39, 39)),
                  ),
                ),
                ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: const Color.fromARGB(255, 39, 39, 39),
                context: context,
                builder: (context) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(
                          Icons.photo,
                          color: Colors.amber,
                        ),
                        title: const Text(
                          'Resim',
                          style: TextStyle(color: Colors.amber),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.edit,
                          color: Colors.amber,
                        ),
                        title: const Text(
                          'Yazı',
                          style: TextStyle(color: Colors.amber),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.music_note,
                          color: Colors.amber,
                        ),
                        title: const Text(
                          'Ses Dosyası',
                          style: TextStyle(color: Colors.amber),
                        ),
                        onTap: () {},
                      ),
                    ],
                  );
                });
          },
          child: const Icon(Icons.add),
        ),
        drawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 39, 39, 39),
          child: SingleChildScrollView(
            child: Column(
              children: const [
                MyHeaderDrawer(),
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 39, 39, 39),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                label: 'Ana Sayfa',
                icon: Icon(Icons.home),
                backgroundColor: Color.fromARGB(255, 254, 198, 62)),
            BottomNavigationBarItem(
                label: 'Keşfet',
                icon: Icon(Icons.travel_explore),
                backgroundColor: Colors.redAccent),
            BottomNavigationBarItem(
                label: 'Mesajlaşma',
                icon: Icon(Icons.textsms),
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
              label: 'Profil',
              icon: Icon(Icons.person),
              backgroundColor: Colors.blueGrey,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(),
    );
  }
}

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 254, 198, 62),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey.shade800,
            backgroundImage:
                const AssetImage('assets/images/1662380442314.jpg'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'konyartaha1905',
            style: TextStyle(
              color: Color.fromARGB(255, 39, 39, 39),
              fontSize: 20,
            ),
          ),
          const Text(
            'konyartaha1905@gmail.com',
            style: TextStyle(
              color: Color.fromARGB(255, 39, 39, 39),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
