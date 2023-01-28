import 'package:idotpet/modules/auth/entities/user.dart';

class Session {
  User user;


  Session({
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user': user,
    };
  }

  factory Session.fromMap(Map<String, dynamic> map) {
    return Session(
      user: map['User'] as User,
    );
  }
}