import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sistem_pakar/models/gejala.dart';
import 'package:sistem_pakar/models/pakar.dart';
import 'package:sistem_pakar/models/penyakit.dart';

part 'pakar_service.dart';
part 'penyakit_service.dart';
part 'gejala_sercive.dart';

String baseURL = 'http://pakar.hmbpayment.com/api/';
