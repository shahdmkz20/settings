import 'package:articles/model/settings/record_model.dart';
import 'package:get/get.dart';

abstract class SettingsRecordsControllerABS extends GetxController {
  onChanged(val);
  addFalseValue(List<RecordModel> recordsList);
  late List<RecordModel> recordsList;
  late List multipleSelected = [];
  late List<RecordWithValue> recordWithValue;
}

class SettingsRecordsController extends SettingsRecordsControllerABS {
  bool isChecked = false;

  @override
  onChanged(val) {
    isChecked = val;
    update();
  }

  @override
  List<RecordModel> get recordsList => super.recordsList = records;
  @override
  addFalseValue(List<RecordModel> recordsList) {
    for (var record in records) {
      recordWithValue.add(RecordWithValue(record, false));
    }
  }

  @override
  void onInit() {
    recordWithValue =
        recordsList.map((record) => RecordWithValue(record, false)).toList();
    super.onInit();
  }

  bool isCheckedForRecord(RecordModel record) {
    final recordWithValueEntry =
        recordWithValue.firstWhere((entry) => entry.record == record);
    return recordWithValueEntry.value;
  }

  void toggleCheckedForRecord(RecordModel record) {
    final index = recordWithValue.indexWhere((entry) => entry.record == record);
    if (index != -1) {
      final currentCheckedValue = recordWithValue[index].value;
      recordWithValue[index] = RecordWithValue(record, !currentCheckedValue);
      update();
    }
  }
}
