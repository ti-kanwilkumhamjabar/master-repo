class DataPaspor {
  String title,
      image,
      description;

  DataPaspor(
      this.title, this.image, this.description);
}

final List<DataPaspor> dataPaspor = [
  DataPaspor('Definisi', 'iconpop/c_definisi.png',
      '1. Paspor adalah dokumen yang dikeluarkan oleh Pemerintah Republik Indonesia kepada warga negara Indonesia untuk melakukan perjalanan antarnegara yang berlaku selama jangka waktu tertentu.\n'
      '2. Paspor diplomatik diterbitkan bagi warga negara Indonesia yang akan melakukan perjalanan keluar Wilayah Indonesia dalam rangka penempatan atau perjalanan tugas yang bersifat diplomatik.\n'
      '3. Paspor dinas diterbitkan bagi warga negara Indonesia yang akan melakukan perjalanan keluar Wilayah Indonesia dalam rangka penempatan atau perjalanan dinas yang tidak bersifat diplomatik.\n'
      '4. Paspor Diplomatik dan Dinas diterbitkan oleh Menteri Luar Negeri.\n'
      '5. Paspor Biasa diterbitkan oleh Menteri atau Pejabat Imigrasi yang ditunjuk.'
  ),

  DataPaspor('Prosedur Pengajuan', 'iconpop/c_definisi.png',
      '1. Manual/Walk-in/Datang Langsung\n'
        '\t\t\ta. Bagi permohonan Paspor biasa yang diajukan secara manual , pemohon harus mengisi aplikasi data yang disediakan pada loket permohonan dan melampirkan dokumen kelengkapan persyaratan\n'
        '\t\t\tb. Pejabat Imigrasi yang ditunjuk memeriksa dokumen kelengkapan persyaratan sebagaimana dimaksud pada poin 1\n'
        '\t\t\tc. Dokumen kelengkapan persyaratan yang telah dinyatakan lengkap, pejabat imigrasi yang ditunjuk memberikan tanda terima permohonan dan kode pembayaran\n'
        '\t\t\td. Dalam hal dokumen kelengkapan persyaratan dinyatakan belum lengkap, pejabat imigrasi yang ditunjuk mengembalikan dokumen permohonan dan permohonan dianggap ditarik kembali\n'
      '2. Elektronik\n'
        '\t\t\ta. Bagi permohonan paspor biasa yang diajukan secara elektronik, pemohon harus mengisi aplikasi data yang tersedia pada laman resmi Direktorat Jenderal Imigrasi\n'
        '\t\t\tb. Dokumen kelengkapan persyaratan harus disertakan dengan cara memindai dokumen kelengkapan persyaratan dan dikirimkan melalui surat elektronik\n'
        '\t\t\tc. Pemohon yang telah mengisi aplikasi data sebagaimana dimaksud pada poin 1 memperoleh tanda terima permohonan dan harus dicetak sebagai tanda bukti permohonan\n'
        '\t\t\td. Permohonan sebagaimana dimaksud pada poin 3 yang telah diperiksa dan memenuhi persyaratan diberikan kode pembayaran melalui pesan singkat dan surat elektronik\n'
      '3. Penerbitan Paspor\n'
        '\t\t\ta. Penerbitan paspor biasa dilakukan melalui mekanisme yang terdiri atas :\n'
          '\t\t\t\t\t\ti. Pemeriksaan kelengkapan dan keabsahan persyaratan.\n'
          '\t\t\t\t\t\tii. Pembayaran biaya paspor.\n'
          '\t\t\t\t\t\tiii. Pengambilan foto dan sidik jari.\n'
          '\t\t\t\t\t\tiv. Wawancara.\n'
          '\t\t\t\t\t\tv. Verifikasi\n'
          '\t\t\t\t\t\tvi. Ajudikasi\n'
        '\t\t\tb. Langkah-langkah penerbitan paspor biasa adalah :\n'
          '\t\t\t\t\t\ti. Pejabat imigrasi melakukan pemeriksaan permohonan dan dokumen kelengkapan persyaratan\n'
          '\t\t\t\t\t\tii. Hasil pemeriksaan sebagaimana dimaksud pada huruf a yang telah memenuhi persyaratan dimuat dalam sistem Informasi Manajemen Keimigrasian oleh pejabat imigrasi\n'
          '\t\t\t\t\t\tiii. Dalam hal terdapat kesamaan biodata permohonan dengan biodata daftar pencegaan yang termuat dalam Sistem Manajemen informasi Keimigrasian, pejabat imigrasi yang ditunjuk wajib menolak permohonan dan ditindaklanjuti sesuai dengan ketentuan peraturan perundang-undangan\n'
          '\t\t\t\t\t\tiv. Penolakan permohonan sebagaimana dimaksud pada huruf c disertai dengan surat penolakan dan rincian data pencegahan yang dicetak dari Sistem Informasi Manajemen Keimigrasian\n'
          '\t\t\t\t\t\tv. Dalam hal persyaratan belum lengkap, pejabat imigrasi yang ditunjuk mengembalikan dokumen persyaratan permohonan kepada pemohon dalam waktu paling lama 1 (satu) hari terhitung sejak tanggal permohonan diterima\n'
          '\t\t\t\t\t\tvi. Pengembalian dokumen persyaratan permohonan sebagaimana dimaksud pada huruf e disertai dengan catatan atau penjelasan mengenai persyaratan yang belum dipenuhi\n'
          '\t\t\t\t\t\tvii. Dalam hal persyaratan telah lengkap dan nama permohonan tidak tercantum dalam daftar pencegahan, pejabat imigrasi yang ditunjuk melakukan pengambilan foto dan sidik jari\n'
          '\t\t\t\t\t\tviii. Pejabat imigrasi wajib melakukan wawancara dengan mencocokkan antara keterangan yang disampaikan oleh pemohon dan dokumen persyaratan asli pemohon\n'
          '\t\t\t\t\t\tix. Pejabat imigrasi memberikan tanda bukti penerimaan permohonan kepada pemohon\n'
          '\t\t\t\t\t\tx. Pemohon melakukan pembayaran biaya paspor biasa pada bank persepsi atau melalui fasilitas pembayaran perbankan\n'
          '\t\t\t\t\t\txi. Dalam hal pejabat imigrasi yang ditunjuk menemukan kecurigaan terhadap persyaratan permohonan, keterangan pemohon, dan atau keabsahan dokumen asli persyaratan, permohonan dapat ditangguhkan untuk dilakukan penelitian atau pemeriksaan lebih lanjut\n'
          '\t\t\t\t\t\txii. Hasil penelitian atau pemeriksaan sebagaimana dimaksud pada huruf l dimuat dalam berita acara pemeriksaan\n'
          '\t\t\t\t\t\txiii. Dalam hal pemohon terbukti memberikan keterangan tidak benar terhadap persyaratan pemohonan, keterangan pemohon dan/atau keabsahan dokumen asli persyaratan yang dimilikinya, permohonan dibatalkan\n'
          '\t\t\t\t\t\txiv. Dalam hal permohonan dibatalkan sebagaimana dimaksud pada huruf m telah dialokasikan blangko Paspor biasa, pejabat imigrasi yang ditunjuk waib membatalkan blangko paspor biasa tersebut dan dicatat dalam sistem informasi Manajemen keimigrasian\n'
          '\t\t\t\t\t\txv. Dalam hal pemohon tidak melanjutkan mekanisme dalam jangka waktu paling lama 30 (tiga puluh) hari, permohonan pengajuan paspor biasa dibatalkan\n'
          '\t\t\t\t\t\txvi. Dalam hal permohonan dibatalkan sebagaimana dimaksud huruf o telah dialokasikan blangko Paspor biasa, pejabat imigrasi yang ditunjuk wajib membatalkan blangko paspor biasa tersebut dan dicatat dalam sistem Informasi Manajemen Keimigrasian\n'
          '\t\t\t\t\t\txvii. Pejabat imigrasi yang ditunjuk melakukan proses verifikasi dan adjudikasi terhadap penerbitan paspor biasa\n'
          '\t\t\t\t\t\txviii. Verifikasi dan adjudikasi sebagaimana dimaksud pada huruf q dilakukan dengan mencocokan data biometrik pemohon dan biasa data yang tersimpan dalam sistem Informasi manajemen Keimigrasian\n'
          '\t\t\t\t\t\txix. Dalam hal pada tahapan verifikasi dan adjudikasi tidak ditemukan duplikasi data pemohon, proses penerbitan paspor biasa dilanjutkan pada tahapan pencetakan dan uji kualitas\n'
          '\t\t\t\t\t\txx. Mekanisme pembayaran dan besarnya biaya penerbitan paspor biasa sebagaimana dimaksud dalam huruf j sesuai dengan ketentuan peraturan perundang-undangan\n'
          '\t\t\t\t\t\txxi. Seluruh biaya yang berkaitan dengan permohonan paspor biasa yang telah disetorkan pada Kas Negara oleh pemohon tidak dapat ditarik kembali\n'
          '\t\t\t\t\t\txxii. Menteri atau pejabat imigrasi yang ditunjuk menerbitkan paspor biasa dalam waktu paling lama 4 (empat) hari kerja sejak dilakukan wawancara\n'
          '\t\t\t\t\t\txxiii. Batas waktu penerbitan paspor biasa sebagaimana dimaksud pada huruf v berlaku juga terhadap paspor biasa yang diterbitkan oleh pejabat Dinas Luar Negeri'
  ),

  DataPaspor('Aturan UU', 'iconpop/c_prosedur.png',
      '1. Peraturan Menteri Hukum dan HAM RI Nomor 8 Tahun 2014 tentang Paspor Biasa dan Surat Perjalanan Laksana Paspor \n'
      '2. UU Nomor 6 Tahun 2011 Tentang Keimigrasian \n'
  ),

  DataPaspor('Pengajuan Online', 'iconpop/d_aturan.png',
      'https://antrian.imigrasi.go.id'
  ),

  DataPaspor('Jumlah Pengajuan', 'iconpop/d_aturan.png',
      'on progress \n'
  ),
];
