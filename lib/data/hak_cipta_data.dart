class HakCiptaData{
  List<DefinisiHakCipta> listDefinisiHakCipta;
  List<PengajuanHakCipta> listPengajuanHakCipta;
  List<AturanUndangUndangHakCipta> listAturanUndangUndangHakCipta ;

  HakCiptaData(
      this.listDefinisiHakCipta,
      this.listPengajuanHakCipta,
      this.listAturanUndangUndangHakCipta
  );
}

class AturanUndangUndangHakCipta{
  final String konten;

  const AturanUndangUndangHakCipta(
      {this.konten}
  );
}

class DefinisiHakCipta{
  final String konten;

  const DefinisiHakCipta(
      {this.konten}
  );
}

class PengajuanHakCipta{
  final String konten;

  const PengajuanHakCipta(
      {this.konten}
  );
}

const List<AturanUndangUndangHakCipta> aturanUndangUndangHakCipta = [
  AturanUndangUndangHakCipta(
    konten : '1. UU Nomor 28 Tahun 2014 tentang Hak Cipta\n'
  ),
  AturanUndangUndangHakCipta(
    konten : '2. Peraturan Pemerintah Republik Indonesia Nomor 7 Tahun 1989 tentang Perubahan atas Peraturan Pemerintah Nomor 14 Tahun 1986 tentang Dewan Hak Cipta ditetapkan Tanggal 5 April 1989.\n'
  ),
  AturanUndangUndangHakCipta(
    konten : '3. Peraturan Pemerintah Republik Indonesia Nomor 1 Tahun 1989 tentang Penterjemahan dan/atau Perbanyakan Ciptaan untuk Kepentingan Pendidikan, Ilmu Pengetahuan, Penelitian dan Pengembangan ditetapkan Tanggal 14 Januari 1989.\n'
  ),
  AturanUndangUndangHakCipta(
    konten : '4. Peraturan Pemerintah Republik Indonesia Nomor 14 Tahun 1986 tentang Dewan Hak Cipta ditetapkan Tanggal 6 Maret 1986 .\n'
  ),
  AturanUndangUndangHakCipta(
    konten : '5. Peraturan Pemerintah Republik Indonesia Nomor 45 Tahun 2016 tentang Jenis Dan Tarif Atas Penerimaan Negara Bukan Pajak Yang Berlaku Pada Kementerian Hukum dan Hak Asasi Manusia\n'
  ),
  AturanUndangUndangHakCipta(
    konten : '6. Peraturan Menteri Hukum dan Hak Asasi Manusia Republik Indonesia No. 36 Tahun 2018 Tentang Tata Cara Permohonan dan Penerbitan Izin Operasional Serta Evaluasi Lembaga Manajemen Kolektif\n'
  ),
  AturanUndangUndangHakCipta(
    konten : '7. Keputusan Presiden Republik Indonesia Nomor 74 Tahun 2004 tentang Pengesahan WIPO Performances and Phonograms Treaty, 1996/Traktat WIPO Mengenai Pertunjukan dan Perekam Suara.\n'
  ),
  AturanUndangUndangHakCipta(
      konten : '8. Traktat WIPO Mengenai Pertunjukan dan Perekaman Suara.\n'
  )
];

const List<PengajuanHakCipta> pengajuanHakCipta = [
  
];

const List<DefinisiHakCipta> definisiHakCipta = [
  DefinisiHakCipta(
    konten : "1. Hak Cipta adalah hak eksklusif pencipta yang timbul secara otomatis berdasarkan prinsip deklaratif setelah suatu ciptaan diwujudkan dalam bentuk nyata tanpa mengurangi pembatasan sesuai dengan ketentuan peraturan perundang-undangan.\n"
  ),
  DefinisiHakCipta(
      konten : '2. Ciptaan yang dilindungi mencakup:\n'
      '\t\t\ta. Buku, program komputer, pamflet, perwajahan (lay out) karya tulis yang diterbitkan, dan semua hasil karya tulis lain;\n'
      '\t\t\tb. Ceramah, kuliah, pidato, dan ciptaan lain yang sejenis dengan itu;\n'
      '\t\t\tc. Alat peraga yang dibuat untuk kepentingan pendidikan dan ilmu pengetahuan;\n'
      '\t\t\td. Lagu atau musik dengan atau tanpa teks;\n'
      '\t\t\te. Drama atau drama musikal, tari, koreografi, pewayangan, dan pantomim;\n'
      '\t\t\tf. Seni rupa dalam segala bentuk seperti seni lukis, gambar, seni ukir, seni kaligrafi, seni pahat, seni patung, kolase, dan seni terapan;\n'
      '\t\t\tg. Arsitektur;\n'
      '\t\t\th. Peta;\n'
      '\t\t\ti. Seni Batik;\n'
      '\t\t\tj. Fotografi;\n'
      '\t\t\tk. Terjemahan, tafsir, saduran, bunga rampai, dan karya lain dari hasil pengalihwujudan.;\n'
  )
];

