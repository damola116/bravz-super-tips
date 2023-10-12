import '../database.dart';

class Winner1Table extends SupabaseTable<Winner1Row> {
  @override
  String get tableName => 'winner1';

  @override
  Winner1Row createRow(Map<String, dynamic> data) => Winner1Row(data);
}

class Winner1Row extends SupabaseDataRow {
  Winner1Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Winner1Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
