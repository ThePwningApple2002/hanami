class Buyer {
  final int id;
  final String imeprezime;
  final String adresa;
  final String grad;
  final int telefon;
  final String email;
  final String kanal;
  final String pol;

  Buyer({
    required this.id,
    required this.kanal,
    required this.pol,
    required this.imeprezime,
    required this.adresa,
    required this.grad,
    required this.telefon,
    required this.email,
  });

  factory Buyer.fromJson(Map<String, dynamic> json) {
    return Buyer(
      id: json['id'] ?? 0,
      imeprezime: json['imeprezime'] ?? json['name'] ?? 'Unknown',
      adresa: json['adresa'] ?? '',
      grad: json['grad'] ?? '',
      telefon: json['telefon'] ?? 0,
      email: json['email'] ?? '',
      pol: json['pol'] ?? 'Muski',
      kanal: json['kanal'] ?? '',
    );
  }
}
