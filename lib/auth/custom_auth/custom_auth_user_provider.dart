import 'package:rxdart/rxdart.dart';

import '/backend/schema/structs/index.dart';
import 'custom_auth_manager.dart';

class EasyJaneAuthUser {
  EasyJaneAuthUser({
    required this.loggedIn,
    this.uid,
    this.userData,
  });

  bool loggedIn;
  String? uid;
  LoginResposeStruct? userData;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<EasyJaneAuthUser> easyJaneAuthUserSubject =
    BehaviorSubject.seeded(EasyJaneAuthUser(loggedIn: false));
Stream<EasyJaneAuthUser> easyJaneAuthUserStream() => easyJaneAuthUserSubject
    .asBroadcastStream()
    .map((user) => currentUser = user);
