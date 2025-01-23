class Buyer {
  final String imeprezime;
  final String adresa;
  final String grad;
  final int telefon;
  final String email;

  Buyer(
      {required this.imeprezime,
      required this.adresa,
      required this.grad,
      required this.telefon,
      required this.email});

  factory Buyer.fromJson(Map<String, dynamic> json) {
    return Buyer(
        imeprezime: json['imeprezime'] ?? '',
        adresa: json['adresa'] ?? '',
        grad: json['grad'],
        telefon: json['telefon'] ?? 0,
        email: json['email'] ?? '');
  }
}
