String instansi = "INIXINDO";
int angka = 10;

// null safety, nullable variable

// String alamat; //err
// String alamat = null; //err
// String? alamat = null;
String? alamat;
var barang = "buku";

List listBuku = [
  "Flutter Programming", "Oracle",
  ".Net Programming"];

Map mapKu = {"instansi":[
  {"cabang":"jogja"},
  {"cabang":"surabaya"},
  {"cabang":"jakarta"},
]};

int penjumlahan(a, b){
  return a + b;
}

class Mobil{
  Mobil();

  String warna = "biru";
}

void main(){
  String teks = "Training";
  print("tes");
  print(instansi);
  print(teks);
  print(angka);
  // print("angka saat ini : " + angka); //error
  print("angka saat ini : " + angka.toString());
  print("angka : $angka");
  print("cek angka : ${angka}");
  print(teks + " " + angka.toString());
  print("$teks $angka");
  print("$teks ${angka}");

//   alamat = "jogja";
  print(alamat);
//   String alamat2 = alamat; //err
//   print(alamat2); //err

  print(barang);
//   barang = 12; //err
//   print(barang); //err
  print(listBuku[1]);
  print(mapKu["instansi"][0]);
  print(mapKu["instansi"][0]["cabang"]);

  print(penjumlahan(7,3));

  print(Mobil().warna);

}