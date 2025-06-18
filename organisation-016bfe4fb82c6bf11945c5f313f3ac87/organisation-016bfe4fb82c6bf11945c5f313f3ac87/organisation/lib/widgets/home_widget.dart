import 'package:flutter/material.dart';

import '../models/cat.dart';
import 'cat_card.dart';
import 'drawer.dart';

class home_widget extends StatelessWidget {
  const home_widget({
    super.key,
    required List<Cat> cats,
  }) : _cats = cats;

  final List<Cat> _cats;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Extraire les widgets"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const drawer(),
      body: Stack(
        children: [
          showBanner(),
          Column(
            children: [
              SizedBox(
                height: 120,
                child: Stack(
                  children: [
                    Material(
                      elevation: 20,
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: const Color(0xFF6e8f92),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipOval(
                              child: Image.network(
                                'https://avatars.githubusercontent.com/u/11493174',
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const Expanded(
                            flex: 8,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Profession",
                                    style: TextStyle(
                                        fontSize: 32.0,
                                        color: Color(0xFF204f4f),
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "Roboto"),
                                  ),
                                  Text(
                                    "Passionné des chats",
                                    style: TextStyle(
                                        fontSize: 24.0,
                                        color: Color(0xFF000000),
                                        fontWeight: FontWeight.w200,
                                        fontFamily: "Roboto"),
                                  ),
                                ]),
                          )
                        ]),
                  ],
                ),
              ),
              Expanded(
                child: buildListView(),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }

  Container showBanner() {
    return Container(
      padding: const EdgeInsets.all(0.0),
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-1.0, 0.7),
          end: Alignment(0.9, -0.1),
          colors: [
            Color(0xFFffffff),
            Color(0xFF266669),
            Color(0xFF6e8f92),
          ],
          stops: [
            0.1,
            1.0,
            0.5,
          ],
        ),
      ),
    );
  }

  ListView buildListView() {
    return ListView(
      children: [
        const Text(
          "Ma collection de chats",
          style: TextStyle(
              fontSize: 32.0,
              color: Color(0xFF204f4f),
              fontWeight: FontWeight.w600,
              fontFamily: "Roboto"),
        ),
        Row(
          children: [
            cat_card(cats: _cats[0]),
            cat_card(cats: _cats[1]),
          ],
        ),
        Row(
          children: [
            cat_card(cats: _cats[2]),
            cat_card(cats: _cats[3]),
          ],
        ),
        Row(
          children: [
            cat_card(cats: _cats[4]),
            cat_card(cats: _cats[5]),
          ],
        ),
      ],
    );
  }
}
