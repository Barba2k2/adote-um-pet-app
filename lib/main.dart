import 'package:adote_um_pet/src/app_widget.dart';
import 'package:adote_um_pet/src/core/DI/dependency_injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  setupDependencyInjector();
  runApp(const AppWidget());
}
