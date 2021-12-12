import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //signin anon
  Future signInAnon() async {
    try {
      AuthResult result = (await _auth.signInAnonymously()) as AuthResult;
    } catch (e) {}
  }
  //sigmin with e n p
  //signup anon
  //signup with enp
}

class AuthResult {}
