import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class CallexpressFirebaseUser {
  CallexpressFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

CallexpressFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<CallexpressFirebaseUser> callexpressFirebaseUserStream() => FirebaseAuth
    .instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<CallexpressFirebaseUser>(
        (user) => currentUser = CallexpressFirebaseUser(user));
