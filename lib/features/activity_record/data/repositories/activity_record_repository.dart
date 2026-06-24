import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/entities/activity_record.dart';

/// Repositorio CRUD para el historial de actividad
/// Usa shared_preferences como persistencia local (JSON)
class ActivityRecordRepository {
  static const String _key = 'activity_records';

  // ── CREATE ────────────────────────────────────────────────────
  Future<void> saveRecord(ActivityRecord record) async {
    final prefs = await SharedPreferences.getInstance();
    final records = await getAllRecords();
    // Reemplaza si ya existe el mismo id (UPDATE), sino agrega (CREATE)
    final index = records.indexWhere((r) => r.id == record.id);
    if (index >= 0) {
      records[index] = record;
    } else {
      records.add(record);
    }
    final encoded = records.map((r) => jsonEncode(r.toMap())).toList();
    await prefs.setStringList(_key, encoded);
  }

  // ── READ ALL ──────────────────────────────────────────────────
  Future<List<ActivityRecord>> getAllRecords() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getStringList(_key) ?? [];
    return raw
        .map((s) => ActivityRecord.fromMap(
              jsonDecode(s) as Map<String, dynamic>,
            ))
        .toList()
      ..sort((a, b) => b.startedAt.compareTo(a.startedAt)); // más reciente primero
  }

  // ── READ ONE ──────────────────────────────────────────────────
  Future<ActivityRecord?> getRecordById(String id) async {
    final records = await getAllRecords();
    try {
      return records.firstWhere((r) => r.id == id);
    } catch (_) {
      return null;
    }
  }

  // ── UPDATE ────────────────────────────────────────────────────
  Future<void> updateRecord(ActivityRecord updated) => saveRecord(updated);

  // ── DELETE ────────────────────────────────────────────────────
  Future<void> deleteRecord(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final records = await getAllRecords();
    records.removeWhere((r) => r.id == id);
    final encoded = records.map((r) => jsonEncode(r.toMap())).toList();
    await prefs.setStringList(_key, encoded);
  }

  // ── DELETE ALL ────────────────────────────────────────────────
  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_key);
  }
}