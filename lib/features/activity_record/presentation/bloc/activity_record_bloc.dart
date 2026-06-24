import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/repositories/activity_record_repository.dart';
import '../../domain/entities/activity_record.dart';

// ── EVENTOS ────────────────────────────────────────────────────
abstract class ActivityRecordEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadRecords extends ActivityRecordEvent {}

class AddRecord extends ActivityRecordEvent {
  final ActivityRecord record;
  AddRecord(this.record);
  @override
  List<Object?> get props => [record];
}

class UpdateRecord extends ActivityRecordEvent {
  final ActivityRecord record;
  UpdateRecord(this.record);
  @override
  List<Object?> get props => [record];
}

class DeleteRecord extends ActivityRecordEvent {
  final String id;
  DeleteRecord(this.id);
  @override
  List<Object?> get props => [id];
}

class ClearAllRecords extends ActivityRecordEvent {}

// ── ESTADOS ────────────────────────────────────────────────────
abstract class ActivityRecordState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ActivityRecordInitial extends ActivityRecordState {}

class ActivityRecordLoading extends ActivityRecordState {}

class ActivityRecordLoaded extends ActivityRecordState {
  final List<ActivityRecord> records;
  ActivityRecordLoaded(this.records);
  @override
  List<Object?> get props => [records];
}

class ActivityRecordError extends ActivityRecordState {
  final String message;
  ActivityRecordError(this.message);
  @override
  List<Object?> get props => [message];
}

// ── BLOC ───────────────────────────────────────────────────────
class ActivityRecordBloc
    extends Bloc<ActivityRecordEvent, ActivityRecordState> {
  final ActivityRecordRepository _repository;

  ActivityRecordBloc(this._repository) : super(ActivityRecordInitial()) {
    on<LoadRecords>(_onLoad);
    on<AddRecord>(_onAdd);
    on<UpdateRecord>(_onUpdate);
    on<DeleteRecord>(_onDelete);
    on<ClearAllRecords>(_onClearAll);
  }

  Future<void> _onLoad(LoadRecords event, Emitter emit) async {
    emit(ActivityRecordLoading());
    try {
      final records = await _repository.getAllRecords();
      emit(ActivityRecordLoaded(records));
    } catch (e) {
      emit(ActivityRecordError(e.toString()));
    }
  }

  Future<void> _onAdd(AddRecord event, Emitter emit) async {
    await _repository.saveRecord(event.record);
    add(LoadRecords());
  }

  Future<void> _onUpdate(UpdateRecord event, Emitter emit) async {
    await _repository.updateRecord(event.record);
    add(LoadRecords());
  }

  Future<void> _onDelete(DeleteRecord event, Emitter emit) async {
    await _repository.deleteRecord(event.id);
    add(LoadRecords());
  }

  Future<void> _onClearAll(ClearAllRecords event, Emitter emit) async {
    await _repository.clearAll();
    add(LoadRecords());
  }
}