part of 'diagnosis_history_bloc.dart';

@freezed
class DiagnosisHistoryEvent with _$DiagnosisHistoryEvent {
  const factory DiagnosisHistoryEvent.getData({
    required int page,
  }) = _GetData;
}
