class SmsProvider {
  final String name;
  final String price;
  final bool selected;
  final bool favorite;

  const SmsProvider({
    required this.name,
    required this.price,
    this.selected = false,
    this.favorite = false,
  });
}