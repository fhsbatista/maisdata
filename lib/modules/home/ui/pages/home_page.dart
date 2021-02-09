import 'package:flutter/material.dart';
import 'package:maisdata/modules/shared/dimens.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kMarginDefault),
        child: Column(
          children: [
            const SizedBox(height: kMarginDefault),
            SafeArea(
              child: Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Criar novo formulário',
                      style: Theme.of(context).textTheme.headline5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
