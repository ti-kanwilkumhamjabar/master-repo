class DesainIndustriData{
  List<DefinisiDesainIndustri> listDefinisiDesainIndustri;
  List<PengajuanDesainIndustri> listPengajuanFidusia;
  List<AturanUndangUndangDesainIndustri> listAturanUndangUndangDesainIndustri ;
  
  DesainIndustriData(
      this.listDefinisiDesainIndustri,
      this.listPengajuanFidusia,
      this.listAturanUndangUndangDesainIndustri
  );
}

class AturanUndangUndangDesainIndustri{
  final String konten;

  const AturanUndangUndangDesainIndustri(
      {this.konten}
  );
}

class DefinisiDesainIndustri{
  final String konten;

  const DefinisiDesainIndustri(
      {this.konten}
  );
}

class PengajuanDesainIndustri{
  final String konten;

  const PengajuanDesainIndustri(
      {this.konten}
  );
}

const List<AturanUndangUndangDesainIndustri> aturanUndangUndangDesainIndustri = [
  AturanUndangUndangDesainIndustri(
    konten : '1. UU Nomor 31 Tahun 2000 tentang Desain Industri\n'
  ),
  AturanUndangUndangDesainIndustri(
    konten : '2. Penjelasan UU Nomor 31 Tahun 2000 tentang Desain Industri\n'
  ),
  AturanUndangUndangDesainIndustri(
    konten : '3. Peraturan Pemerintah Republik Indonesia Nomor 1 Tahun 2005 tentang Pelaksanaan Undang-Undang Nomor 31Tahun 2000 tentang Desain Industri ditetapkan Tanggal 5 Januari 2005.\n'
  ),
  AturanUndangUndangDesainIndustri(
      konten : '4. Peraturan Pemerintah Republik Indonesia Nomor 45 Tahun 2016 tentang Jenis Dan Tarif Atas Penerimaan Negara Bukan Pajak Yang Berlaku Pada Kementerian Hukum dan Hak Asasi Manusia\n'
  )
];

const List<PengajuanDesainIndustri> pengajuanDesainIndustri = [
  
];

const List<DefinisiDesainIndustri> definisiDesainIndustri = [
  DefinisiDesainIndustri(
    konten : '1. Desain Industri adalah suatu kreasi tentang bentuk, konfigurasi atau komposisi garis atau warna, atau garis dan warna, atau gabungan daripadanya yang berbentuk tiga dimensi atau dua dimensi yang memberikan kesan estetis dan dapat diwujudkan dalam pola tiga dimensi atau dua dimensi serta dapat dipakai untuk menghasilkan suatu produk, barang, komoditas industri atau kerajinan tangan.\n'
  ),
  DefinisiDesainIndustri(
    konten : '2. DI Baru, apabila pada tanggal penerimaan permohonan pendaftaran Desain Industri tersebut tidak sama dengan pengungkapan Desain Industri yang telah ada sebelumnya;\n'
  ),
  DefinisiDesainIndustri(
    konten : '3. Tidak bertentangan dengan peraturan perundang-undangan yang berlaku, ketertiban umum, agama, atau kesusilaan.\n'
  ),
  DefinisiDesainIndustri(
      konten : '4. Desain Industri terdaftar mendapatkan perlindungan hukum untuk jangka waktu 10 tahun sejak tanggal penerimaan permohonan pendaftaran Desain Industri.\n'
  )
];

