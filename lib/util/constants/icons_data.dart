import 'package:WhatsAppX/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIcons {
  final Color color;
  final double size;

  const CustomIcons({this.color = primaryColor, this.size = 20});

  FaIcon get searchIcon => FaIcon(
        FontAwesomeIcons.search,
        color: color,
        size: size,
      );

  FaIcon get optionIcon => FaIcon(
        FontAwesomeIcons.ellipsisH,
        color: color,
        size: size,
      );

  FaIcon get cameraIcon => FaIcon(
        FontAwesomeIcons.camera,
        color: color,
        size: size,
      );

  FaIcon get groupIcon => FaIcon(
        FontAwesomeIcons.users,
        color: color,
        size: size,
      );

  FaIcon get callIcon => FaIcon(
        FontAwesomeIcons.phoneAlt,
        color: color,
        size: size,
      );

  FaIcon get videoIcon => FaIcon(
        FontAwesomeIcons.video,
        color: color,
        size: size,
      );

  Icon get addCallIcon => Icon(Icons.add_call, size: size, color: color);
  Icon get missedCallIcon => Icon(
        Icons.call_missed,
        color: color,
        size: size,
      );
  Icon get callOutgoing => Icon(
        Icons.call_missed_outgoing,
        color: color,
        size: size,
      );
  FaIcon get qrcodeIcon => FaIcon(
        FontAwesomeIcons.qrcode,
        color: color,
        size: size,
      );

  Icon get messageSeen => Icon(
        Icons.done_all,
        color: color,
        size: size,
      );

  FaIcon get clockIcon => FaIcon(
        FontAwesomeIcons.clock,
        color: color,
        size: size,
      );
  FaIcon get pluseCircle => FaIcon(
        FontAwesomeIcons.plusCircle,
        color: color,
        size: size,
      );
  FaIcon get solidCircle => FaIcon(
        FontAwesomeIcons.solidCircle,
        color: color,
        size: size,
      );

  FaIcon get smile => FaIcon(
        FontAwesomeIcons.smile,
        color: color,
        size: size,
      );

  FaIcon get attach => FaIcon(
        FontAwesomeIcons.paperclip,
        color: color,
        size: size,
      );
  FaIcon get microPhone => FaIcon(
        FontAwesomeIcons.microphone,
        color: color,
        size: size,
      );

  FaIcon get rightArrow => FaIcon(
        FontAwesomeIcons.angleRight,
        color: color,
        size: size,
      );

  Icon get messageIcon => Icon(Icons.message, color: color, size: size);
  Icon get backArrowIcon => Icon(Icons.arrow_back, color: color, size: 24);
  Icon get arrowDown => Icon(Icons.expand_more, color: color, size: 24);

  FaIcon get arrowUp => FaIcon(
        FontAwesomeIcons.chevronUp,
        color: color,
        size: size,
      );

  FaIcon get keyIcon => FaIcon(
        FontAwesomeIcons.key,
        color: color,
        size: size,
      );

  FaIcon get paymentIcon => FaIcon(
        FontAwesomeIcons.creditCard,
        color: color,
        size: size,
      );

  FaIcon get infoIcon => FaIcon(
        FontAwesomeIcons.solidQuestionCircle,
        color: color,
        size: size,
      );
  FaIcon get bellIcon => FaIcon(
        FontAwesomeIcons.solidBell,
        color: color,
        size: size,
      );

  FaIcon get userIcon => FaIcon(
        FontAwesomeIcons.solidUser,
        color: color,
        size: size,
      );

  FaIcon get chartIcon => FaIcon(
        FontAwesomeIcons.chartPie,
        color: color,
        size: size,
      );

  Icon get editIcon => Icon(
        Icons.edit,
        color: color,
        size: size,
      );
}
