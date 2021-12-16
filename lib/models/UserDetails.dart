class UserDetails {
  String id;
  String firstName;
  String lastName;
  String profilePictureUrl;
  String email;
  String phone;

  UserDetails(this.id, this.firstName, this.lastName, this.email, this.phone,
      this.createdAt);

  String createdAt;

  Map<String, dynamic> toMap() {
    return {
      "user_id": id,
      "first_name": firstName,
      "last_name": lastName,
      "profile_picture": profilePictureUrl,
      "email_id": email,
      "phone_number": phone
    };
  }
}
