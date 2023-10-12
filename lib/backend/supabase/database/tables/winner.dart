import '../database.dart';

class WinnerTable extends SupabaseTable<WinnerRow> {
  @override
  String get tableName => 'winner';

  @override
  WinnerRow createRow(Map<String, dynamic> data) => WinnerRow(data);
}

class WinnerRow extends SupabaseDataRow {
  WinnerRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WinnerTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);
}
