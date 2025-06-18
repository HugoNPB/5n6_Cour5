import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/cat.dart';

class cat_card extends StatelessWidget {
  const cat_card({
    super.key,
    required Cat cats,
  }) : _cat = cats;

  final Cat _cat;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 220,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              ListTile(
                title: Text(_cat.name),
                subtitle: Text(
                  _cat.description,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Image.network(_cat.image),
            ],
          ),
        ),
      ),
    );
  }
}
