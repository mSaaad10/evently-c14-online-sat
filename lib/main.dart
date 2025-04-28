import 'package:evently_c14_online_sat/evently_app.dart';
import 'package:evently_c14_online_sat/provider/config_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ConfigProvider(), child: const EventlyApp()));
}
