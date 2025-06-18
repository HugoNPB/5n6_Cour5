import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'LayoutBuiler'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

void doNothing() {}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer(false);
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer(bool avecDeuxPanneaux) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?cs=srgb&dl=pexels-bri-schneiter-28802-346529.jpg&fm=jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              color: Color(0x2E3A3A3A).withOpacity(1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Mes choses - Connexion',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nom',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mot de passe',
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(Icons.lock, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: doNothing,
                    child: Text('Poursuivre'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Container(
        color: Color(0x2E1E1E1E).withOpacity(1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  color: Color(0x2E3A3A3A).withOpacity(1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mes choses - Connexion',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Nom',
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.person, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Mot de passe',
                          labelStyle: TextStyle(color: Colors.white),
                          prefixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.lock, color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: doNothing,
                        child: Text('Poursuivre'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // reutilise la liste pour la partie gauche
            Expanded(
              child: Image(
                image: NetworkImage(
                  'https://images.pexels.com/photos/346529/pexels-photo-346529.jpeg?cs=srgb&dl=pexels-bri-schneiter-28802-346529.jpg&fm=jpg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
