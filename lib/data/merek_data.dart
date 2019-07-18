class MerekData{
  List<DefinisiMerek> listDefinisiMerek;
  List<PengajuanMerek> listPengajuanMerek;
  List<AturanUndangUndangMerek> listAturanUndangUndangMerek ;

  MerekData(
      this.listDefinisiMerek,
      this.listPengajuanMerek,
      this.listAturanUndangUndangMerek
  );
}

class AturanUndangUndangMerek{
  final String konten;

  const AturanUndangUndangMerek(
      {this.konten}
      );
}

class DefinisiMerek{
  final String konten;

  const DefinisiMerek(
      {this.konten}
      );
}

class PengajuanMerek{
  final String konten;

  const PengajuanMerek(
      {this.konten}
      );
}

const List<AturanUndangUndangMerek> aturanUndangUndangMerek = [
  AturanUndangUndangMerek(
    konten: "UU Nomor 20 Tahun 2016 tentang Merek."
  ),
  AturanUndangUndangMerek(
      konten: "UU Nomor 15 Tahun 2001 tentang Merek."
  )
];

const List<DefinisiMerek> definisiMerek = [
  DefinisiMerek(
    konten: "Merek adalah tanda yang dapat ditampilkan secara grafis berupa gambar, logo, nama, kata, huruf, angka, susunan warna, dalam bentuk 2 (dua) dimensi dan/atau 3 {tiga) dimensi, suara, hologram, atau kombinasi dari 2 (dua) atau lebih unsur tersebut untuk membedakan barang dan/atau jasa yang diproduksi oleh orang atau badan hukum dalam kegiatan perdagangan barang dan/atau jasa"
  ),
  DefinisiMerek(
      konten: "Tanda pengenal untuk membedakan hasil produksi yang dihasilkan seseorang atau beberapa orang secara bersama-sama atau badan hukum dengan produksi orang lain atau badan hukum lainnya"
  ),
  DefinisiMerek(
      konten: "Alat promosi, sehingga mempromosikan hasil produksinya cukup dengan menyebut Mereknya"
  ),
  DefinisiMerek(
      konten: "Jaminan atas mutu barangnya dan Penunjuk asal barang/jasa dihasilkan."
  )
];

const List<PengajuanMerek> pengajuanMerek = [

];