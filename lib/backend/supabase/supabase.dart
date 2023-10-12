import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://bxrkwsnphzrfrgvnvvbf.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJ4cmt3c25waHpyZnJndm52dmJmIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODU3MjE2NzUsImV4cCI6MjAwMTI5NzY3NX0.XkIvuYwrf61-j8FphMQABJaD-F4itBN-LP-_EwxETHQ';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
