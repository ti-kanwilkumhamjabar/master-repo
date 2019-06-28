class DataHakPaten {
  String title,
      image,
      description;

  DataHakPaten(
      this.title, this.image, this.description);
}

final List<DataHakPaten> dataHakPaten = [
  DataHakPaten('Definisi', 'iconpop/c_definisi.png',
      '1. Paten adalah hak eksklusif inventor atas invensi di bidang teknologi '
      'untuk selama waktu tertentu melaksanakan sendiri atau memberikan persetujuan kepada pihak lain untuk melaksanakan invensinya. \n'
      '2. Invensi adalah ide inventor yang dituangkan ke dalam suatu kegiatan pemecahan masalah yang spesifik di bidang teknologi, '
      'dapat berupa produk atau proses atau penyempurnaan dan pengembangan produk atau proses. \n'
      '3. Paten diberikan untuk jangka waktu selama 20 tahun sejak tanggal penerimaan permohonan Paten. \n'
      '4. Paten sederhana diberikan untuk jangka waktu 10 tahun sejak tanggal penerimaan permohonan Paten sederhana.'),

  DataHakPaten('Pengajuan', 'iconpop/c_masaberlaku.png',
      '1. Mengajukan permohonan ke kantor Direktorat Jenderal Kekayaan Intelektual (DJKI) secara tertulis dalam Bahasa Indonesia dengan mengisi formulir permohonan yang disediakan dan diketik rangkap 2. \n'
      '2. Pemohon wajib melampirkan: \n'
          '\t\t\ta. surat kuasa khusus, apabila permohonan diajukan melalui konsultan KI terdaftar selaku kuasa;. \n'
          '\t\t\tb. surat pengalihan hak, apabila permohonan diajukan oleh pihak lain yang bukan inventor; \n'
          '\t\t\tc. deskripsi permohonan Paten dibuat rangkap 2 dan mencakup : \n'
          '\t\t\t\t\t\ti. judul invensi, dibuat dalam huruf kapital dan tidak digaris bawah; \n'
          '\t\t\t\t\t\tii. bidang teknik invensi, memuat secara umum dimana invensi ini termasuk di dalam bidang teknik tersebut dengan mengemukakan kekhususannya; \n'
          '\t\t\t\t\t\tiii. latar belakang invensi, harus dikemukakan teknologi yang telah ada sebelumnya dan relevan dengan invensi tersebut; ringkasan invensi, memuat ciri teknis dari pokok invensi yang diungkapkan dalam klaim; \n'
          '\t\t\t\t\t\tiv. uraian singkat gambar (bila disertakan gambar), memuat keterangan gambar secara singkat; \n'
          '\t\t\t\t\t\tv. uraian lengkap invensi, merupakan suatu pengungkapan invensi yang selengkap-lengkapnya, tidak boleh ada yang tertinggal atau tidak diungkapkan; \n'
          '\t\t\t\t\t\tvi. klaim (dibuat pada halaman terpisah), memuat pokok invensi dan tidak boleh berisikan gambar atau grafik tetapi dapat memuat tabel rumus matematika atau reaksi kimia; \n'
          '\t\t\t\t\t\tvii. abstrak (dibuat pada halaman terpisah), berisi ringkasan dari uraian lengkap invensi dan tidak lebih dari 200 kata. \n'

      '3. Penulisan deskripsi, klaim, abstrak dan gambar sebagaimana dimaksud dalam butir 2 huruf c dan d ditentukan sebagai berikut: \n'
          '\t\t\ta. setiap lembar kertas hanya salah satu mukanya yang boleh dipergunakan untuk penulisan dan gambar; \n'
          '\t\t\tb. deskripsi, klaim dan abstrak diketik dalam kertas HVS atau yang sejenis dan terpisah, ukuran A4, berat minimum 80 gram dengan batas sebagai berikut: \n'
          '\t\t\t\t\t\ti. batas atas: 2 cm \n'
          '\t\t\t\t\t\tii. batas bawah: 2 cm \n'
          '\t\t\t\t\t\tiii. batas kiri: 2,5 cm \n'
          '\t\t\t\t\t\tiv. batas kanan: 2 cm \n'
          '\t\t\tc. kertas A4 tersebut harus berwarna putih, rata tidak mengkilap dan pemakaiannya dilakukan dengan menempatkan sisinya yang pendek di bagian atas dan bawah (kecuali dipergunakan untuk gambar); \n'
          '\t\t\td. setiap lembar deskripsi, klaim dan gambar diberi nomor urut angka Arab pada bagian tengah atas dan tidak pada batas sebagaimana yang dimaksud pada butir 3 huruf b (1); \n'
          '\t\t\te. pada setiap lima baris pengetikan baris uraian dan klaim, harus diberi nomor baris dan setiap halaman baru merupakan permulaan (awal) nomor dan ditempatkan di sebelah kiri uraian atau klaim serta tidak pada batas sebagaimana yang dimaksud pada butir 3 huruf b (3); \n'
          '\t\t\tf. pengetikan harus dilakukan dengan menggunakan tinta (toner) warna hitam, dengan ukuran spasi 1,5 dan huruf tegak berukuran tinggi huruf minimum 0,21 cm; \n'
          '\t\t\tg. tanda-tanda dengan garis, rumus kimia, dan tanda-tanda tertentu dapat ditulis dengan tangan; \n'
          '\t\t\th. gambar harus menggunakan tinta cina hitam pada kertas gambar putih ukuran A4 dengan berat minimum 100 gram yang tidak mengkilap dengan batas sebagai berikut: \n'
          '\t\t\t\t\t\ti. batas atas: 2,5 cm \n'
          '\t\t\t\t\t\tii. batas bawah: 1 cm \n'
          '\t\t\t\t\t\tiii. batas kiri: 2,5 cm \n'
          '\t\t\t\t\t\tiv. batas kanan: 1,5 cm \n'
          '\t\t\ti. seluruh dokumen Paten yang diajukan harus dalam lembar-lembar kertas utuh, tidak boleh dalam keadaan tersobek, terlipat, rusak atau gambar yang ditempelkan; \n'
          '\t\t\tj. setiap istilah yang dipergunakan dalam deskripsi, klaim, abstrak dan gambar harus konsisten satu sama lain. \n'),

  DataHakPaten('Aturan UU', 'iconpop/c_prosedur.png',
      '1. UU Nomor 13 Tahun 2016 tentang Paten \n'
      '2. UU Nomor 14 Tahun 2001 tentang Paten \n'
      '3. Penjelasan UU Nomor 14 Tahun 2001 tentang Paten \n'
      '4. Peraturan Pemerintah Republik Indonesia Nomor 27 Tahun 2004 tentang Tata Cara Pelaksanaan Paten oleh Pemerintah ditetapkan Tanggal 5 Oktober 2004. \n'
      '5. Peraturan Pemerintah Republik Indonesia Nomor 31 Tahun 1995 tentang Komisi Banding Paten ditetapkan Tanggal 29 Agustus 1995. \n'
      '6. Peraturan Pemerintah Republik Indonesia Nomor 11 Tahun 1993 tentang Bentuk dan Isi Surat Paten ditetapkan Tanggal 22 Februari 1993 . \n'
      '7. Peraturan Pemerintah Republik Indonesia Nomor 33 Tahun 1991 tentang Pendaftaran Khusus Konsultan Paten ditetapkan Tanggal 11 Juni 1991 . \n'
      '8. Peraturan Pemerintah Republik Indonesia Nomor 45 Tahun 2016 tentang Jenis Dan Tarif Atas Penerimaan Negara Bukan Pajak Yang Berlaku Pada Kementerian Hukum dan Hak Asasi Manusia. \n'
      '9. Peraturan Presiden Republik Indonesia No. 76 Tahun 2012 Tentang Pelaksanaan Paten Oleh Pemerintah Terhadap Obat Antiviral dan Antiretroviral \n'
      '10. Peraturan Menteri Hukum dan HAM RI No. 38 Tahun 2018 Tentang Permohonan Paten \n'
      '11. Peraturan Menteri Hukum dan HAM RI No. 39 Tahun 2018 Tentang Tata Cara Pemberian Lisensi Wajib Paten \n'
      '12. Peraturan Menteri Hukum dan HAM RI No. 15 Tahun 2018 Tentang Pelaksanaan Paten oleh Pemegang Paten \n'
      '13. Keputusan Presiden Republik Indonesia Nomor 83 Tahun 2004 tentang Pelaksanaan Paten oleh Pemerintah terhadap Obat-obat Anti Retroviral. \n'
      '14. Surat Edaran Nomor : HKI.KI.05.04-03 Tahun 2019 Tentang Perpanjangan Waktu Pemenuhan Kewajiban Hutang Biaya Tahunan Paten Bagi Pemegang Paten \n'
      '15. Surat Edaran Nomor : HKI-3-08.OT.02.02 Tahun 2016 Tentang Masa Peralihan Pembayaran Biaya Tahunan Undang-Undang Paten Nomor 14 Tahun 2001 ke Undang-Undang Paten Nomor 13 Tahun 2016'),

  DataHakPaten('Jumlah Pengajuan', 'iconpop/d_aturan.png', '1. PUU Nomor 13 Tahun 2016 tentang Paten \n'
      '2. UU Nomor 14 Tahun 2001 tentang Paten \n'),
];
