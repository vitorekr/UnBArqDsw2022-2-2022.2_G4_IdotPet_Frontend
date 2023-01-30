class User {
  final int id;
  final String userType;
  final String? image;
  final String name;
  final DateTime birthday;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String? cpf;
  final String? cnpj;
  final String? pix;

  User({
    required this.id,
    required this.userType,
    required this.image,
    required this.name,
    required this.birthday,
    required this.createdAt,
    required this.updatedAt,
    required this.cpf,
    required this.cnpj,
    required this.pix
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userType': userType,
      'image': image,
      'name': name,
      'birthday': birthday,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'cpf': cpf,
      'cnpj': cnpj,
      'pix': pix
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as int,
      userType: map['user_type'] as String,
      image: null,
      name: map['name'] as String,
      birthday: DateTime.parse(map['birth_day'] as String),
      createdAt: DateTime.parse(map['created_at'] as String),
      updatedAt: DateTime.parse(map['updated_at'] as String),
      cpf: map['cpf'] as String,
      cnpj: null,
      pix: null,
    );
  }
}
