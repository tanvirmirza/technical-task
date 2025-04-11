
import 'package:flutter/foundation.dart';

class StudyPracticeProvider extends ChangeNotifier{

  String? _selectedTopic;

  String? get selectedTopic => _selectedTopic;

  void selectTopic(String? topic) {
    _selectedTopic = topic;
    notifyListeners();
  }

}