class Profile {
  final String firstName;
  final String lastName;
  final String email;
  final String photoURL;

  Profile({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.photoURL,
  });

  factory Profile.fromJson(Map<String, dynamic> json) {
    return Profile(
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      photoURL: json['photoURL'],
    );
  }

  Map<String, dynamic> toJson() => {
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'photoURL': photoURL,
      };
}
