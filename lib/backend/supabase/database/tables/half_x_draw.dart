import '../database.dart';

class HalfXDrawTable extends SupabaseTable<HalfXDrawRow> {
  @override
  String get tableName => 'half x draw';

  @override
  HalfXDrawRow createRow(Map<String, dynamic> data) => HalfXDrawRow(data);
}

class HalfXDrawRow extends SupabaseDataRow {
  HalfXDrawRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HalfXDrawTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get group => getField<String>('group');
  set group(String? value) => setField<String>('group', value);

  String? get time => getField<String>('time');
  set time(String? value) => setField<String>('time', value);

  String? get score => getField<String>('score');
  set score(String? value) => setField<String>('score', value);

  String? get market => getField<String>('market');
  set market(String? value) => setField<String>('market', value);

  String? get mark => getField<String>('mark');
  set mark(String? value) => setField<String>('mark', value);

  double? get odds => getField<double>('odds');
  set odds(double? value) => setField<double>('odds', value);

  String? get away => getField<String>('away');
  set away(String? value) => setField<String>('away', value);

  String? get home => getField<String>('home');
  set home(String? value) => setField<String>('home', value);

  String? get notifi => getField<String>('notifi');
  set notifi(String? value) => setField<String>('notifi', value);

  String? get date => getField<String>('date');
  set date(String? value) => setField<String>('date', value);
}
