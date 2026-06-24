import 'package:equatable/equatable.dart';

/// Registro histórico de una sesión de actividad física
class ActivityRecord extends Equatable {
  final String id;
  final String activityType;   // "walking", "running", "stationary"
  final DateTime startedAt;
  final DateTime? endedAt;
  final int steps;
  final double distanceKm;
  final double calories;
  final bool hadFallDetected;

  const ActivityRecord({
    required this.id,
    required this.activityType,
    required this.startedAt,
    this.endedAt,
    this.steps = 0,
    this.distanceKm = 0.0,
    this.calories = 0.0,
    this.hadFallDetected = false,
  });

  Duration get duration {
    final end = endedAt ?? DateTime.now();
    return end.difference(startedAt);
  }

  String get durationLabel {
    final d = duration;
    if (d.inHours > 0) return '${d.inHours}h ${d.inMinutes.remainder(60)}m';
    return '${d.inMinutes}m ${d.inSeconds.remainder(60)}s';
  }

  /// Serialización para shared_preferences (JSON)
  Map<String, dynamic> toMap() => {
    'id': id,
    'activityType': activityType,
    'startedAt': startedAt.toIso8601String(),
    'endedAt': endedAt?.toIso8601String(),
    'steps': steps,
    'distanceKm': distanceKm,
    'calories': calories,
    'hadFallDetected': hadFallDetected,
  };

  factory ActivityRecord.fromMap(Map<String, dynamic> map) => ActivityRecord(
    id: map['id'] as String,
    activityType: map['activityType'] as String,
    startedAt: DateTime.parse(map['startedAt'] as String),
    endedAt: map['endedAt'] != null
        ? DateTime.parse(map['endedAt'] as String)
        : null,
    steps: (map['steps'] as int?) ?? 0,
    distanceKm: (map['distanceKm'] as num?)?.toDouble() ?? 0.0,
    calories: (map['calories'] as num?)?.toDouble() ?? 0.0,
    hadFallDetected: (map['hadFallDetected'] as bool?) ?? false,
  );

  ActivityRecord copyWith({
    String? activityType,
    DateTime? endedAt,
    int? steps,
    double? distanceKm,
    double? calories,
    bool? hadFallDetected,
  }) =>
      ActivityRecord(
        id: id,
        activityType: activityType ?? this.activityType,
        startedAt: startedAt,
        endedAt: endedAt ?? this.endedAt,
        steps: steps ?? this.steps,
        distanceKm: distanceKm ?? this.distanceKm,
        calories: calories ?? this.calories,
        hadFallDetected: hadFallDetected ?? this.hadFallDetected,
      );

  @override
  List<Object?> get props => [id, activityType, startedAt, endedAt, steps];
}