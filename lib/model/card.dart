class CardDetail {
  final String title;

  CardDetail({this.title});

  @override
  List<Object> get props => [title];
}

final List<CardDetail> cards = [
  CardDetail(
    title: 'Card 1',
  ),
];
