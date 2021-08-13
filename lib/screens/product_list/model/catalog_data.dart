class CatalogData {
  String namaProduk;
  String harga;
  String imageAsset;

  //constructor
  CatalogData({
    this.namaProduk,
    this.harga,
    this.imageAsset,
  });
}

//data detail informasi
var catalogDataList = [
  CatalogData(
      namaProduk: 'Jeju Cherry Blossom Jelly Cream/50 mL',
      harga: 'Rp330.000',
      imageAsset: 'assets/images/productlist/jeju_jelly_cream.png'),
  CatalogData(
    namaProduk: 'Jeju Cherry Jam Cleanser/150 g',
    harga: 'Rp170.000',
    imageAsset: 'assets/images/productlist/jeju_jam_cleanser.png',
  ),
  CatalogData(
    namaProduk: 'Green Tea Seed Cream/50 mL',
    harga: 'Rp340.000',
    imageAsset: 'assets/images/productlist/green_tea_cream.png',
  ),
  CatalogData(
    namaProduk: 'Brightening Pore Serum/30 mL',
    harga: 'Rp 25000',
    imageAsset: 'assets/images/productlist/brightening_pore_serum.png',
  ),
];
