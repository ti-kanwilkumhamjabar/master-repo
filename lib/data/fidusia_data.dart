class FidusiaData{
  List<DefinisiFidusia> listDefinisiFidusia;
  List<PengajuanFidusia> listPengajuanFidusia;
  List<AturanUndangUndangFidusia> listAturanUndangUndangFidusia ;
  String linkPencarianFidusia = 'https://ahu.go.id/pencarian/fidusia';

  FidusiaData(
      this.listDefinisiFidusia,
      this.listPengajuanFidusia,
      this.listAturanUndangUndangFidusia,
      this.linkPencarianFidusia
  );
}

class AturanUndangUndangFidusia{
  final String konten;

  const AturanUndangUndangFidusia(
      {this.konten}
  );
}

class DefinisiFidusia{
  final String konten;

  const DefinisiFidusia(
      {this.konten}
  );
}

class PengajuanFidusia{
  final String konten;

  const PengajuanFidusia(
      {this.konten}
  );
}

const List<AturanUndangUndangFidusia> aturanUndangUndangFidusia = [
  AturanUndangUndangFidusia(
    konten : '1. UU Nomor 42 Tahun 1999 Tentang Jaminan Fidusia\n'
  ),
  AturanUndangUndangFidusia(
      konten : '2. PP Nomor 21 Tahun 2015 Tentang Tata Cara Pendaftaran Jaminan Fidusia Dan Biaya Pembuatan Akta Jaminan Fidusia\n'
  )
];

const List<PengajuanFidusia> pengajuanHakCipta = [
  
];

const List<DefinisiFidusia> definisiFidusia = [
  DefinisiFidusia(
    konten : '1. Fidusia adalah pengalihan hak kepemilikan suatu benda atas dasar kepercayaan dengan ketentuan bahwa benda yang hak kepemilikannya dialihkan tersebut tetap dalam penguasaan pemilik benda.\n'
  ),
  DefinisiFidusia(
    konten : '2. Jaminan Fidusia adalah hak jaminan atas benda bergerak baik yang berwujud maupun yang tidak berwujud dan benda tidak bergerak khususnya bangunan yang tidak dapat dibebani hak tanggungan sebagaimana dimaksud dalam Undang-undang Nomor 4 Tahun 1996 tentang Hak Tanggungan yang tetap berada dalam penguasaan Pemberi Fidusia, sebagai agunan bagi pelunasan utang tertentu, yang memberikan kedudukan yang diutamakan kepada Penerima Fidusia terhadap kreditor lainnya.\n'
  ),
  DefinisiFidusia(
    konten : '3. Piutang adalah hak untuk menerima pembayaran.\n'
  ),
  DefinisiFidusia(
    konten : '4. Benda adalah segala sesuatu yang dapat dimiliki dan dialihkan, baik yang berwujud maupun yang tidak berwujud, yang terdaftar maupun yang tidak terdaftar, yang bergerak maupun yang tak bergerak yang tidak dapat dibebani hak tanggungan atau hipotek.\n'
  ),
  DefinisiFidusia(
    konten : '5. Pemberi Fidusia adalah orang perseorangan atau korporasi pemilik Benda yang menjadi objek Jaminan Fidusia.\n'
  ),
  DefinisiFidusia(
    konten : '6. Penerima Fidusia adalah orang perseorangan atau korporasi yang mempunyai piutang yang pembayarannya dijamin dengan Jaminan Fidusia.\n'
  ),
  DefinisiFidusia(
    konten : '7. Utang adalah kewajiban yang dinyatakan atau dapat dinyatakan dalam jumlah uang baik dalam mata uang Indonesia atau mata uang lainnya, baik secara langsung maupun kontinjen.\n'
  ),
  DefinisiFidusia(
    konten : '8. Kreditor adalah pihak yang mempunyai piutang karena perjanjian atau undang-undang.\n'
  ),
  DefinisiFidusia(
    konten : '9. Debitor adalah pihak yang mempunyai utang karena perjanjian atau undang-undang.\n'
  ),
  DefinisiFidusia(
      konten : '10. Setiap Orang adalah orang perseorangan atau korporasi.\n'
  )
];

