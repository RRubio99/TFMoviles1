import 'dart:convert';
import 'dart:async';
import 'food.dart';
import 'package:http/http.dart' as http;

//Para traer comidas actuales
Future<List<Comida>> fetchFood() async {
  final response = await http.get(
      Uri.parse('https://proyecto-final-moviles1.glitch.me/comida'));
  if (response.statusCode == 200) {
    return decodeFood(response.body);
  } else {
    throw Exception('Unable to fetch data from the REST API');
  }
}

List<Comida> decodeFood(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  print(parsed);
  return parsed.map<Comida>((json) => Comida.fromMap(json)).toList();
}

//Para crear comida nueva
Future<Comida> sendFood(
    String nombreComida, String calorias, String proteina, String grasa, String carbohidratos, String gramos ) async {
  final http.Response response = await http.post(
    Uri.parse('https://proyecto-final-moviles1.glitch.me/nuevaComida'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'nombre_comida': nombreComida,
      'calorias': calorias,
      'proteina': proteina,
      'grasa': grasa,
      'carbohidratos': carbohidratos,
      'gramos': gramos,
    }),
  );
  if (response.statusCode == 201) {
    return Comida.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}

//Para checar login
Future<Usuario> sendUsuario(
    String email, String password ) async {
  final http.Response response = await http.post(
    Uri.parse('https://proyecto-final-moviles1.glitch.me/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      'email': email,
      'password': password

    }),
  );
  if (response.statusCode == 201) {
    return Usuario.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}



Future<Comida> deleteFruit(int id) async {
  final http.Response response = await http.delete(
    Uri.parse('url/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );

  if (response.statusCode == 200) {
    return Comida.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to delete comida.');
  }
}
