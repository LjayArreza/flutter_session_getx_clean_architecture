import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'data/provider/network/environment/evironment.dart';
import 'presentation/my_app.dart';

Future<void> main() async {
  await dotenv.load(fileName: Environment.mode);
  runApp(MyApp());
}
