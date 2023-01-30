class Pet {
  final int id;
  final String name;
  final int age;
  final String specieName;
  final String breedName;
  final String? image;
  final String size;
  final String gender;
  final String vaccine;

  Pet({
    required this.id,
    required this.name,
    required this.age,
    required this.specieName,
    required this.breedName,
    required this.image,
    required this.size,
    required this.gender,
    required this.vaccine,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'specieName': name,
      'breedName': breedName,
      'image': image,
      'size': size,
      'gender': gender,
      'vaccine': vaccine,
    };
  }

  factory Pet.fromMap(Map<String, dynamic> map) {
    return Pet(
      id: map['id'] as int,
      name: map['name'] as String,
      age: map['age'] as int,
      specieName: map['specie_name'] as String,
      breedName: map['breed_name'] as String,
      image: null,
      size: map['size'] as String,
      gender: map['gender'] as String,
      vaccine: map['vaccine'] as String,
    );
  }
}
