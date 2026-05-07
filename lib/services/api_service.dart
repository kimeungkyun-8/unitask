import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static final _hostUrl = 'https://daelim.fleecy.dev/functions/v1'; 
static final _signupUrl = '$_hostUrl/students/signup';

  static bool _enableOnes = false;

  static Future<bool?> signup({
    required String email,
    required String password,
    required String name,
  })async {
    if (_enableOnes) return null;
       _enableOnes = true;


     final response = await http.post(
      Uri.parse(_signupUrl),
     body: jsonEncode({
       'email': email,
       'password': password,
       'name': name,
     }),
     );

     final statusCode = response.statusCode;
    _enableOnes = false;
  
debugPrint('Response [$statusCode]: ${response.body}');

    if (statusCode != 200) {
      return false;
    } 
    return true;
    }
  }
      

  