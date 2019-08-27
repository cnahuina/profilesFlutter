
import 'package:flutter/widgets.dart';
import 'package:slide_flutter/profiles.dart';

class MatchEngine extends ChangeNotifier{
  final List<DateMatch> _matches;
  int _currentMatchIndex;
  int _nextMatchIndex;

  MatchEngine({
    List<DateMatch> matches,
  }) : _matches = matches {
    _currentMatchIndex = 0;
    _nextMatchIndex =1;
  }

  DateMatch get currentMatch => _matches[_currentMatchIndex];
  DateMatch get nextMatch => _matches[_nextMatchIndex];

}

class DateMatch extends ChangeNotifier{
  final Profile profile;
  DateMatch({
    this.profile,
  });
}