class DataBantuanHukum {
  String title,
      image,
      description;

  DataBantuanHukum(
      this.title, this.image, this.description);
}

final List<DataBantuanHukum> dataBantuanHukum = [
  DataBantuanHukum('Situs Layanan BPHN', 'iconpop/c_definisi.png',
      'https://www.bphn.go.id/'
  ),
  DataBantuanHukum('Situs JDIHN', 'iconpop/c_definisi.png',
      'http://jdihn.go.id/'
  )
];
