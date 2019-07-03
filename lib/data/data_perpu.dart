class DataPerpu {
  String title,
      image,
      description;

  DataPerpu(
      this.title, this.image, this.description);
}

final List<DataPerpu> dataPerpu = [
  DataPerpu('Situs Peraturan', 'iconpop/c_definisi.png',
      'http://peraturan.go.id/'
  ),
  DataPerpu('Situs Rancangan', 'iconpop/c_definisi.png',
      'http://peraturan.go.id/rancangan/uu.html'
  ),
  DataPerpu('Situs Harmonisasi', 'iconpop/c_definisi.png',
      'http://ditjenpp.kemenkumham.go.id/e-status/index.php/home/index'
  ),
  DataPerpu('Situs Putusan', 'iconpop/c_definisi.png',
      'http://peraturan.go.id/peraturan/uji-materi.html?id=11e44ae4712e4e3098ac313730323533'
  )
];
