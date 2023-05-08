class Kucing {
  String? nama;
  int? umur;

  void display() {
    print("Nama kucing : $nama.");
    print("Umurnya : $umur tahun");
  }
}

void main() {
  Kucing kucing1 = Kucing();
  kucing1.nama = 'Meong';
  kucing1.umur = 3;
  kucing1.display();
}
