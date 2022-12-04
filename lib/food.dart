class Comida {
  int? id;
  String? nombre_comida;
  int? calorias;
  int? proteina;
  int? grasa;
  int? carbohidratos;
  // int? id_usuario;
  // String? dia;
  int? gramos;

  Comida(
      {this.id,
      this.nombre_comida,
      this.calorias,
      this.proteina,
      this.grasa,
      this.carbohidratos,
      // this.id_usuario,
      // this.dia,
      this.gramos});

  Comida.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    nombre_comida = json['nombre_comida'];
    calorias = json['calorias'];
    proteina = json['proteina'];
    grasa = json['grasa'];
    carbohidratos = json['carbohidratos'];
    // id_usuario = json['id_usuario'];
    // dia = json['dia'];
    gramos = json['gramos'];
  }

  Comida.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre_comida = json['nombre_comida'];
    calorias = json['calorias'];
    proteina = json['proteina'];
    grasa = json['grasa'];
    carbohidratos = json['carbohidratos'];
    // id_usuario = json['id_usuario'];
    // dia = json['dia'];
    gramos = json['gramos'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre_comida'] = this.nombre_comida;
    data['calorias'] = this.calorias;
    data['proteina'] = this.proteina;
    data['grasa'] = this.grasa;
    data['carbohidratos'] = this.carbohidratos;
    // data['id_usuario'] = this.id_usuario;
    // data['dia'] = this.dia;
    data['gramos'] = this.gramos;
    return data;
  }
}

class Usuario {
  int? id;
  String? email;
  String? password;

  Usuario(
      {this.id,
      this.email,
      this.password});

  Usuario.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
  }

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}

class Perfil {
  int? id;
  String? nombre;
  String? genero;
  int? edad;
  int? peso;
  int? altura;
  int? id_usuario;
  int? calorias_al_dia;

  Perfil(
      {this.id,
      this.nombre,
      this.genero,
      this.edad,
      this.peso,
      this.altura,
      this.id_usuario,
      this.calorias_al_dia});

  Perfil.fromMap(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    genero = json['genero'];
    edad = json['edad'];
    peso = json['peso'];
    altura = json['altura'];
    id_usuario = json['id_usuario'];
    calorias_al_dia = json['calorias_al_dia'];
  }

  Perfil.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nombre = json['nombre'];
    genero = json['genero'];
    edad = json['edad'];
    peso = json['peso'];
    altura = json['altura'];
    id_usuario = json['id_usuario'];
    calorias_al_dia = json['calorias_al_dia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nombre'] = this.nombre;
    data['genero'] = this.genero;
    data['edad'] = this.edad;
    data['peso'] = this.peso;
    data['altura'] = this.altura;
    data['id_usuario'] = this.id_usuario;
    data['calorias_al_dia'] = this.calorias_al_dia;
    return data;
  }
}