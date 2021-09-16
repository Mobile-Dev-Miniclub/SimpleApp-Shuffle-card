part of 'widget.dart';

class CardListTile extends StatelessWidget {
  final CardDetail cardlist;

  CardListTile({this.cardlist});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      color: Color.fromRGBO(64, 75, 96, .9),
      elevation: 8.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 5.0,
      ),
      child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 5.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 1.0,
                  color: Colors.white24,
                ),
              ),
            ),
            child: Image.asset(
              'assets/card.png',
              height: 30,
              width: 30,
            ),
          ),
          title: Text(
            cardlist.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Shuffle Card",
            style: TextStyle(color: Colors.white),
          )),
    );
  }
}
