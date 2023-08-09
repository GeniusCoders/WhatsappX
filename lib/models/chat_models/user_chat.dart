import 'package:WhatsAppX/util/enum/enums.dart';

class UserChat {
  final String name;
  final String profilePhoto;
  final String message;
  const UserChat({
    required this.name,
    required this.profilePhoto,
    required this.message,
  });
}

class ChatData {
  final String time;
  final String message;
  final MType type;
  final MessageType messageType;
  final String uri;
  const ChatData({
    required this.time,
    required this.message,
    required this.type,
    required this.messageType,
    this.uri = '',
  });
}
