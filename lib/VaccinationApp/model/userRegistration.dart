class UserRegistration {
  final int userId;
  final String fullName;
  final String emailAddress;
  final String mobileNumber;
  final String city;

  const UserRegistration(
      {required this.userId,
      required this.fullName,
      required this.emailAddress,
      required this.mobileNumber,
      required this.city});

  factory UserRegistration.fromJson(Map<String, dynamic> json) {
    return UserRegistration(
      userId: json['userId'],
      fullName: json['fullName'],
      emailAddress: json['emailAddress'],
      mobileNumber: json['mobileNumber'],
      city: json['city'],
    );
  }
}
