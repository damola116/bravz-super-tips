import '../database.dart';

class Winner2Table extends SupabaseTable<Winner2Row> {
  @override
  String get tableName => 'winner2';

  @override
  Winner2Row createRow(Map<String, dynamic> data) => Winner2Row(data);
}

class Winner2Row extends SupabaseDataRow {
  Winner2Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Winner2Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
