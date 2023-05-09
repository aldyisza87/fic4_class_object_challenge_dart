class Nasabah {
  String? nama;
  String? alamat;
  double saldo;

  Nasabah(this.nama, this.alamat, this.saldo) {}

  void simpan(double jumlah) {
    this.saldo += jumlah;
  }

  void ambil(double jumlah) {
    if (jumlah <= this.saldo) {
      this.saldo -= jumlah;
    } else {
      print("Saldo tidak cukup!");
    }
  }
}

void main() {
  Nasabah nasabah1 = Nasabah("Aldi", "kebumen", 0);
  Nasabah nasabah2 = Nasabah("isza", "karawang", 0);

  nasabah1.simpan(1000);
  nasabah1.simpan(2000);
  nasabah1.ambil(500);

  nasabah2.simpan(5000);
  nasabah2.ambil(2000);

  print("Saldo nasabah ${nasabah1.nama} : ${nasabah1.saldo}");
  print("Saldo nasabah ${nasabah2.nama} : ${nasabah1.saldo}");
}
