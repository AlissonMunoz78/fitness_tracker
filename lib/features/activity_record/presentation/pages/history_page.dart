import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/activity_record_bloc.dart';
import '../../domain/entities/activity_record.dart';
import '../../../../injection_container.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => HistoryPageState();
}

// SIN el guión bajo _ para que sea público y accesible desde main.dart
class HistoryPageState extends State<HistoryPage> {
  late final ActivityRecordBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = sl<ActivityRecordBloc>()..add(LoadRecords());
  }

  void reloadRecords() {
    _bloc.add(LoadRecords());
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: const _HistoryView(),
    );
  }
}

class _HistoryView extends StatelessWidget {
  const _HistoryView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F0F0F),
      appBar: AppBar(
        title: const Text(
          'Historial',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_sweep_outlined,
                color: Color(0xFF6B6B6B)),
            tooltip: 'Borrar todo',
            onPressed: () => _confirmClearAll(context),
          ),
        ],
      ),
      body: BlocBuilder<ActivityRecordBloc, ActivityRecordState>(
        builder: (context, state) {
          if (state is ActivityRecordLoading) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFFFF6B35)),
            );
          }
          if (state is ActivityRecordError) {
            return Center(
              child: Text(state.message,
                  style: const TextStyle(color: Colors.white)),
            );
          }
          if (state is ActivityRecordLoaded) {
            if (state.records.isEmpty) return _buildEmpty();
            return _buildList(context, state.records);
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  Widget _buildEmpty() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A),
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xFF2A2A2A)),
            ),
            child: const Icon(Icons.history,
                size: 48, color: Color(0xFF4A4A4A)),
          ),
          const SizedBox(height: 20),
          const Text(
            'Sin registros todavía',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Inicia una sesión para ver tu historial',
            style: TextStyle(fontSize: 14, color: Color(0xFF6B6B6B)),
          ),
        ],
      ),
    );
  }

  Widget _buildList(BuildContext context, List<ActivityRecord> records) {
    final totalSteps = records.fold<int>(0, (sum, r) => sum + r.steps);
    final totalKm =
        records.fold<double>(0, (sum, r) => sum + r.distanceKm);
    final totalCal =
        records.fold<double>(0, (sum, r) => sum + r.calories);

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _buildSummaryCard(
            totalSteps: totalSteps,
            totalKm: totalKm,
            totalCal: totalCal,
            count: records.length,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (ctx, i) => _RecordCard(
              record: records[i],
              onEdit: () => _showEditDialog(ctx, records[i]),
              onDelete: () => ctx
                  .read<ActivityRecordBloc>()
                  .add(DeleteRecord(records[i].id)),
            ),
            childCount: records.length,
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 24)),
      ],
    );
  }

  Widget _buildSummaryCard({
    required int totalSteps,
    required double totalKm,
    required double totalCal,
    required int count,
  }) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: const Color(0xFFFF6B35).withOpacity(0.4),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Text(
            '$count sesiones registradas',
            style:
                const TextStyle(color: Color(0xFF9E9E9E), fontSize: 13),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _SummaryStat(
                icon: Icons.directions_walk,
                value: '$totalSteps',
                label: 'pasos',
              ),
              Container(
                  width: 1,
                  height: 36,
                  color: const Color(0xFF2A2A2A)),
              _SummaryStat(
                icon: Icons.straighten,
                value: totalKm.toStringAsFixed(2),
                label: 'km',
              ),
              Container(
                  width: 1,
                  height: 36,
                  color: const Color(0xFF2A2A2A)),
              _SummaryStat(
                icon: Icons.local_fire_department,
                value: totalCal.toStringAsFixed(0),
                label: 'cal',
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _confirmClearAll(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A1A),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        title: const Text('¿Borrar todo?',
            style: TextStyle(color: Colors.white)),
        content: const Text('Esta acción no se puede deshacer.',
            style: TextStyle(color: Color(0xFF9E9E9E))),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar',
                style: TextStyle(color: Color(0xFF6B6B6B))),
          ),
          ElevatedButton(
            style:
                ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              context
                  .read<ActivityRecordBloc>()
                  .add(ClearAllRecords());
              Navigator.pop(context);
            },
            child: const Text('Borrar',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }

  void _showEditDialog(BuildContext context, ActivityRecord record) {
    String selectedType = record.activityType;

    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1A1A1A),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        title: const Text('Editar registro',
            style: TextStyle(color: Colors.white)),
        content: StatefulBuilder(
          builder: (context, setDialogState) {
            return DropdownButtonFormField<String>(
              value: selectedType,
              dropdownColor: const Color(0xFF2A2A2A),
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                labelText: 'Tipo de actividad',
                labelStyle:
                    const TextStyle(color: Color(0xFF9E9E9E)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      const BorderSide(color: Color(0xFF2A2A2A)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      const BorderSide(color: Color(0xFFFF6B35)),
                ),
              ),
              items: const [
                DropdownMenuItem(
                    value: 'walking', child: Text('Caminando')),
                DropdownMenuItem(
                    value: 'running', child: Text('Corriendo')),
                DropdownMenuItem(
                    value: 'stationary',
                    child: Text('Estacionario')),
              ],
              onChanged: (val) {
                if (val != null) {
                  setDialogState(() => selectedType = val);
                }
              },
            );
          },
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Cancelar',
                style: TextStyle(color: Color(0xFF6B6B6B))),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFF6B35)),
            onPressed: () {
              context.read<ActivityRecordBloc>().add(
                    UpdateRecord(
                      record.copyWith(activityType: selectedType),
                    ),
                  );
              Navigator.pop(ctx);
            },
            child: const Text('Guardar',
                style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

class _SummaryStat extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _SummaryStat({
    required this.icon,
    required this.value,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: const Color(0xFFFF6B35), size: 20),
        const SizedBox(height: 6),
        Text(value,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold)),
        Text(label,
            style: const TextStyle(
                color: Color(0xFF6B6B6B), fontSize: 12)),
      ],
    );
  }
}

class _RecordCard extends StatelessWidget {
  final ActivityRecord record;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _RecordCard({
    required this.record,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(record.id),
      direction: DismissDirection.endToStart,
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 24),
        margin:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.2),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.red.withOpacity(0.5)),
        ),
        child: const Icon(Icons.delete, color: Colors.red),
      ),
      confirmDismiss: (_) async {
        return await showDialog<bool>(
              context: context,
              builder: (_) => AlertDialog(
                backgroundColor: const Color(0xFF1A1A1A),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                title: const Text('¿Eliminar registro?',
                    style: TextStyle(color: Colors.white)),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('Cancelar',
                        style: TextStyle(color: Color(0xFF6B6B6B))),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red),
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('Eliminar',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ) ??
            false;
      },
      onDismissed: (_) => onDelete(),
      child: Container(
        margin:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(16),
          border:
              Border.all(color: const Color(0xFF2A2A2A), width: 1),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 16, vertical: 8),
          leading: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color:
                  _typeColor(record.activityType).withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            child: Icon(
              _typeIcon(record.activityType),
              color: _typeColor(record.activityType),
              size: 22,
            ),
          ),
          title: Text(
            _typeLabel(record.activityType),
            style: const TextStyle(
                fontWeight: FontWeight.w600, color: Colors.white),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                '${record.steps} pasos · '
                '${record.distanceKm.toStringAsFixed(2)} km · '
                '${record.calories.toStringAsFixed(0)} cal',
                style: const TextStyle(
                    fontSize: 12, color: Color(0xFF9E9E9E)),
              ),
              Text(
                _formatDate(record.startedAt),
                style: const TextStyle(
                    fontSize: 11, color: Color(0xFF6B6B6B)),
              ),
              if (record.hadFallDetected)
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                        color: Colors.red.withOpacity(0.4)),
                  ),
                  child: const Text(
                    '⚠ Caída detectada',
                    style:
                        TextStyle(fontSize: 11, color: Colors.red),
                  ),
                ),
            ],
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                record.durationLabel,
                style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF9E9E9E),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(width: 4),
              PopupMenuButton<String>(
                color: const Color(0xFF2A2A2A),
                icon: const Icon(Icons.more_vert,
                    color: Color(0xFF6B6B6B), size: 20),
                onSelected: (v) {
                  if (v == 'edit') onEdit();
                  if (v == 'delete') onDelete();
                },
                itemBuilder: (_) => const [
                  PopupMenuItem(
                    value: 'edit',
                    child: Text('Editar',
                        style: TextStyle(color: Colors.white)),
                  ),
                  PopupMenuItem(
                    value: 'delete',
                    child: Text('Eliminar',
                        style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _typeIcon(String type) {
    switch (type) {
      case 'running':
        return Icons.directions_run;
      case 'walking':
        return Icons.directions_walk;
      default:
        return Icons.accessibility_new;
    }
  }

  Color _typeColor(String type) {
    switch (type) {
      case 'running':
        return const Color(0xFFFF6B35);
      case 'walking':
        return const Color(0xFF4CAF50);
      default:
        return const Color(0xFF9E9E9E);
    }
  }

  String _typeLabel(String type) {
    switch (type) {
      case 'running':
        return 'Corriendo';
      case 'walking':
        return 'Caminando';
      default:
        return 'Estacionario';
    }
  }

  String _formatDate(DateTime dt) {
    return '${dt.day}/${dt.month}/${dt.year} '
        '${dt.hour.toString().padLeft(2, '0')}:'
        '${dt.minute.toString().padLeft(2, '0')}';
  }
}