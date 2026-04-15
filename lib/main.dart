import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter_money_tracking_app/views/splash_screen_ui.dart'; 
import 'package:intl/date_symbol_data_local.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDateFormatting('th', null);

  // 1. เริ่มการเชื่อมต่อกับ Supabase
  await Supabase.initialize(
    url: 'https://xvvclkaygzxndjcneyhy.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh2dmNsa2F5Z3p4bmRqY25leWh5Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzYyNDI1MDksImV4cCI6MjA5MTgxODUwOX0.sKYZIqllxVoq5Rz1T1Ku3HGCfH9FyGTQkaij8dE8TyQ',
  );
  runApp(const MaterialApp(
    home: SplashScreenUI(),
    debugShowCheckedModeBanner: false,
  ));
}


