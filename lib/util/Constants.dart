import 'dart:ui';
import 'package:breview/models/Blog.dart';
import 'package:breview/models/Friends.dart';

class Constants {
  //Styling
  static const String FONT_FAMILY = 'Montserrat';
  static const Color PRIMARY_COLOR = Color(0xFFB39738);
  static const Color SECONDARY_COLOR = Color(0xFFB39738);
  static const Color BLUE_COLOR = Color(0xFF4B39EF);

  //Test Resources
  static const String lorem_ipsum =
      "'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)',";
  static Blog testBlog =
      Blog("Sam", test_profile_image, 123, true, lorem_ipsum, test_image);
  static const String test_profile_image =
      'https://i.picsum.photos/id/1027/2848/4272.jpg?hmac=EAR-f6uEqI1iZJjB6-NzoZTnmaX0oI0th3z8Y78UpKM';
  static const String test_image =
      'https://d.newsweek.com/en/full/1310267/best-hawaii-beaches.jpg';
  static Friends testWidget = Friends("Akshay", 'assets/images/Akshay.jpeg');
  // Strings
  static const String WELCOME = "Welcome";
  static const String LATEST_PICKS = "Latest picks";
}
