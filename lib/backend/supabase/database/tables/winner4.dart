import '../database.dart';

class Winner4Table extends SupabaseTable<Winner4Row> {
  @override
  String get tableName => 'winner4';

  @override
  Winner4Row createRow(Map<String, dynamic> data) => Winner4Row(data);
}

class Winner4Row extends SupabaseDataRow {
  Winner4Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Winner4Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
