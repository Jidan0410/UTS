import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new CardProfile(),
    routes: <String, WidgetBuilder>{
      'HalamanPertama': (BuildContext context) => new CardProfile(),
      'HalamanKedua': (BuildContext context) => new Nama(),
      'HalamanKetiga': (BuildContext context) => new ttl(),
      'HalamanKeempat': (BuildContext context) => new jk(),
      'HalamanKelima': (BuildContext context) => new agama(),
      'HalamanKeenam': (BuildContext context) => new almt(),
    },
  ));
}

class CardProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Beranda",
          style: TextStyle(
            fontFamily: 'Times Now Roman',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue.shade300,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/Jidan.jpg'),
          ),
          Text(
            'Hizkia Ajidan',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                fontSize: 30.0,
                letterSpacing: 2,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '19710061',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.teal,
              ),
              title: Text(
                'Nama & Kontak',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'HalamanKedua');
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.location_pin,
                color: Colors.teal,
              ),
              title: Text(
                'Tempat, Tanggal Lahir',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'HalamanKetiga');
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.people_sharp,
                color: Colors.teal,
              ),
              title: Text(
                'Jenis Kelamin',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'HalamanKeempat');
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.teal,
              ),
              title: Text(
                'Agama',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'HalamanKelima');
              },
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.teal,
              ),
              title: Text(
                'Alamat',
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
              onTap: () {
                Navigator.pushNamed(context, 'HalamanKeenam');
              },
            ),
          )
        ],
      )),
    );
  }
}

class Nama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Detail",
          style: TextStyle(
            fontFamily: 'Times Now Roman',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue.shade300,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/Jidan.jpg'),
          ),
          Text(
            'Hizkia Ajidan',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '19710061',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text(
                'Hizkia Ajidan',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text(
                '+62 822 6244 8722',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class ttl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Detail",
          style: TextStyle(
            fontFamily: 'Times Now Roman',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue.shade300,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/Jidan.jpg'),
          ),
          Text(
            'Hizkia Ajidan',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '19710061',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text(
                'Cempaka',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text(
                '04 - Oktober - 2000',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class jk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Detail",
          style: TextStyle(
            fontFamily: 'Times Now Roman',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue.shade300,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/Jidan.jpg'),
          ),
          Text(
            'Hizkia Ajidan',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '19710061',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text(
                'Laki - Laki',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class agama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Detail",
          style: TextStyle(
            fontFamily: 'Times Now Roman',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue.shade300,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/Jidan.jpg'),
          ),
          Text(
            'Hizkia Ajidan',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '19710061',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text(
                'Islam',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class almt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Detail",
          style: TextStyle(
            fontFamily: 'Times Now Roman',
            color: Colors.teal.shade100,
            fontSize: 20.0,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue.shade300,
      ),
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('assets/img/Jidan.jpg'),
          ),
          Text(
            'Hizkia Ajidan',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Text(
            '19710061',
            style: TextStyle(
                fontFamily: 'Times Now Roman',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade100,
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              title: Text(
                'JL. Mistar Cokrokusumo, RT 037 RW 001',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.teal.shade900,
                    fontSize: 20.0,
                    fontFamily: 'Times Now Roman'),
              ),
            ),
          )
        ],
      )),
    );
  }
}
