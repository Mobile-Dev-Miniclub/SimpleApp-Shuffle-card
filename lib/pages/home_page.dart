part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Shuffle Card",
                  style: whiteHeaderFontStyle,
                ),
                SizedBox(
                  width: 10,
                ),
                Image.asset(
                  'assets/poker.png',
                  height: 35,
                  width: 35,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 500,
              width: double.infinity,
              margin: const EdgeInsets.only(
                  bottom: 20, left: 20, right: 20, top: 20),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30), bottom: Radius.circular(30))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Card Deck",
                      style: blackTitleFontStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: cards
                          .map((e) => CardListTile(
                                cardlist: e,
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    child: Row(
                      children: [Text('Add'), Icon(Icons.add)],
                    ),
                    onPressed: () {
                      cards.add(CardDetail(title: 'Card $_counter'));
                      setState(() {
                        _counter++;
                      });
                    },
                  ),
                  ElevatedButton(
                    child: Row(
                      children: [Text('Shuffle'), Icon(Icons.shuffle)],
                    ),
                    onPressed: () {
                      cards.shuffle();
                      setState(() {});
                    },
                  ),
                  ElevatedButton(
                    child: Row(
                      children: [Text('Delete'), Icon(Icons.delete)],
                    ),
                    onPressed: () {
                      cards.remove(cards.first);
                      setState(() {});
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
