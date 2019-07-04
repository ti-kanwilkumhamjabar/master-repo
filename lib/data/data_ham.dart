class DataHam {
  String title,
      image,
      description;

  DataHam(
      this.title, this.image, this.description);
}

final List<DataHam> dataHam = [
  DataHam('Situs Produk Hukum', 'iconpop/c_definisi.png',
      'http://ham.go.id/produk-hukum/instrumen-ham-nasional/'
  ),
  DataHam('Situs Konten HAM', 'iconpop/c_definisi.png',
      'http://ham.go.id/epublication/jurnal-ham/'
  )
];
