import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

// default parameter
  Mahasiswa() {
    this.nama = "";
    this.jurusan = "";
    this.angkatan = 0;
  }
}

class Mahasiswa1 {
  String? nama;
  String? jurusan;
  int? angkatan;

// constructor parameterized
  Mahasiswa1(this.nama, this.jurusan, this.angkatan);

// named constructor
  Mahasiswa1.fromJson(String jsonString) {
    Map<String, dynamic> json = jsonDecode(jsonString);
    this.nama = json['nama'];
    this.jurusan = json['jurusan'];
    this.angkatan = json['angkatan'];
  }
}

void main() {
//default parameter constructor
  Mahasiswa mahasiswa = Mahasiswa();
  mahasiswa.nama = "Aldi Isza";
  mahasiswa.jurusan = "Teknik Informatika";
  mahasiswa.angkatan = 2019;
  print("Nama Mahasiswa : ${mahasiswa.nama}");
  print("Jurusan Mahasiswa : ${mahasiswa.jurusan}");
  print("Angkatan Mahasiswa : ${mahasiswa.angkatan}");
  print("====================");

// Constructor parameterized
  Mahasiswa1 mahasiswa1 = Mahasiswa1("Aldi Isza", "Teknik Informatika", 2019);
  print("Nama Mahasiswa : ${mahasiswa1.nama}");
  print("Jurusan Mahasiswa : ${mahasiswa1.jurusan}");
  print("Angkatan Mahasiswa : ${mahasiswa1.angkatan}");
  print("====================");

// Named Constructor
  String jsonString =
      '{"nama" : "Aldi Isza","jurusan" : "Teknik Informatika", "angkatan" : 2019  }';
  String jsonString1 =
      '{"nama" : "Rizki Yulita","jurusan" : "Management", "angkatan" : 2019  }';

  Mahasiswa1 mhs = Mahasiswa1.fromJson(jsonString);
  print("Mahasiswa 1 nama :  ${mhs.nama}");
  print("Mahasiswa 1 jurusan :  ${mhs.jurusan}");
  print("Mahasiswa 1 angkatan :  ${mhs.angkatan}");
  print("====================");

  Mahasiswa1 mhs1 = Mahasiswa1.fromJson(jsonString1);
  print("Mahasiswa 1 nama :  ${mhs1.nama}");
  print("Mahasiswa 1 jurusan :  ${mhs1.jurusan}");
  print("Mahasiswa 1 angkatan :  ${mhs1.angkatan}");
}
