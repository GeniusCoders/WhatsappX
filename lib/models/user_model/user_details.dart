import 'package:WhatsAppX/util/enum/enums.dart';

class UserDetails {
  final String name;
  final String profilePhoto;
  final UserStatus status;
  const UserDetails({
    required this.name,
    required this.profilePhoto,
    required this.status,
  });
}
