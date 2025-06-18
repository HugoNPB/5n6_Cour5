import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(S.of(context).SuperGoogles),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              S.current.Sortes,
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                _CardGoogle(title: S.current.Classic, image: 'https://yt3.googleusercontent.com/2eI1TjX447QZFDe6R32K0V2mjbVMKT5mIfQR-wK5bAsxttS_7qzUDS1ojoSKeSP0NuWd6sl7qQ=s900-c-k-c0x00ffffff-no-rj'),
                _CardGoogle(title: S.current.Exploser, image: 'https://static01.nyt.com/images/2025/04/21/business/00google-breakup/00google-breakup-mediumSquareAt3X-v2.jpg'),
              ],
            ),
            Row(
              children: [
                _CardGoogle(title: S.current.Pixar, image: 'https://media.wired.com/photos/65e83cc9b8ffa5f8fa84c893/4:3/w_2664,h_1998,c_limit/wired-uk-google-watching.jpg'),
                _CardGoogle(title: S.current.Infiltre, image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Google_Chrome_icon_%28February_2022%29.svg/1200px-Google_Chrome_icon_%28February_2022%29.svg.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CardGoogle extends StatelessWidget {
  const _CardGoogle({super.key, required this.title, required this.image});

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          children: [
            Text(title),
            Image(image: NetworkImage(image)),
          ],
        ),
      ),
    );
  }
}
