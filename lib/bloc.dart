import 'package:rxdart/rxdart.dart';

import 'package:rxdart/rxdart.dart';

class SongPopupBloc {
  final _songPopupController = PublishSubject<bool>();

  Observable<bool> get songPopupStream => _songPopupController.stream;

  void songPopup(bool value) {
    _songPopupController.sink.add(value);
  }

  void dipose() {
    _songPopupController.close();
  }
}

final songPopupBloc = SongPopupBloc();
