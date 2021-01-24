import 'package:flutter/material.dart';

import 'user_status_screen.dart';

class UserStatusScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: UserStatusScreen(),
      ),
    );
  }
}
