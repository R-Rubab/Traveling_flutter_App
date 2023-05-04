class HotelManagement {
  String? imgurl;
  String? name;
  String? address;
  String? price;

  HotelManagement({this.imgurl, this.name, this.address, this.price});
}

List<HotelManagement> hotels = [
  HotelManagement(
    imgurl: 'assets/images/hotel0.jpeg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: '322',
  ),
  HotelManagement(
    imgurl: 'assets/images/hotel1.jpeg',
    name: 'Hotel 1',
    address: '422 Great St',
    price: '522',
  ),
  HotelManagement(
    imgurl: 'assets/images/hotel2.jpeg',
    name: 'Hotel 2',
    address: '414 Great St',
    price: '312',
  ),
  HotelManagement(
    imgurl: 'assets/images/hotel3.jpeg',
    name: 'Hotel 3',
    address: '404 Great St',
    price: '833',
  ),
  HotelManagement(
    imgurl: 'assets/images/hotel4.jpeg',
    name: 'Hotel 4',
    address: '404 Great St',
    price: '322',
  ),
];
