/*
  class class_name {
    Properties (Instance Variables) (selesai)
    Constructor (selesai)
    Methods (Functions) (selesai)
    Getters and Setters
  }
*/

/*
  class RekeningBank{
    Properties
      - namaPemilik
      - namaBank
      - saldo
    Methods
      - cekSaldo()
      - transfer()
      - ambilSaldo()
  }
*/

void main() {
  RekeningBank rekeningRAN = new RekeningBank();
  rekeningRAN.namaPemilik = 'Resma Adi Nugroho';
  rekeningRAN.namaBank = 'BCI';
  rekeningRAN.saldo = 10000000000;
  print(rekeningRAN.namaPemilik);
  print(rekeningRAN.namaBank);
  print(rekeningRAN.saldo);
  rekeningRAN.cekSaldo();
  print('---------------------');

  RekeningBank rekeningNewt = new RekeningBank(
    namaPemilik: 'Newt Scamander',
    namaBank: 'ATB',
    saldo: 5000000,
  );
  print(rekeningNewt.saldo);
  rekeningNewt.cekSaldo();
  print('---------------------');

  RekeningBank rekeningDian = new RekeningBank(
    namaPemilik: 'Clarissa Dian',
    namaBank: 'TAB',
    saldo: 20000000,
  );
  print(rekeningDian.getPemilik);
  print(rekeningDian.getBank);
  print(rekeningDian.saldo);
  rekeningDian.setNamaPemilik = 'Dian Fatmawati';
  rekeningDian.setNamaBank = 'Bank Rakyat';
  rekeningDian.setSaldo = 50000000;
  print(rekeningDian.getPemilik);
  print(rekeningDian.getBank);
  print(rekeningDian.getSaldo);
  print('---------------------');

  RekeningBank rekeningOvo = new RekeningBank.Owo(
    namaPemilik: 'Ovo RAN',
    saldo: 200000,
  );
  print(rekeningOvo.getBank);
}

class RekeningBank {
  String? namaPemilik;
  String? namaBank;
  int? saldo;

  set setNamaPemilik(String nama) {
    this.namaPemilik = nama;
  }

  set setNamaBank(String nama) {
    this.namaBank = nama;
  }

  set setSaldo(int saldoBaru) {
    this.saldo = saldoBaru;
  }

  String? get getPemilik {
    return namaPemilik;
  }

  String? get getBank {
    return namaBank;
  }

  int? get getSaldo {
    return saldo;
  }

  RekeningBank({this.namaPemilik, this.namaBank, this.saldo});
  RekeningBank.Owo({this.namaPemilik, this.namaBank = 'OWO', this.saldo});

  cekSaldo() {
    print('Saldo saat ini: $saldo');
  }

  transfer() {
    print('transfer');
  }

  ambilSaldo() {
    print('ambil saldo');
  }
}
