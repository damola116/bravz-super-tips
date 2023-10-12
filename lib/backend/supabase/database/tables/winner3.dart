import '../database.dart';

class Winner3Table extends SupabaseTable<Winner3Row> {
  @override
  String get tableName => 'winner3';

  @override
  Winner3Row createRow(Map<String, dynamic> data) => Winner3Row(data);
}

class Winner3Row extends SupabaseDataRow {
  Winner3Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => Winner3Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
