import 'package:flutter/material.dart';
import 'package:stc/detail_screen.dart';
import 'package:stc/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Semarang Tourism Center'),
        backgroundColor: Colors.white10,
      ),
      body: ListView(
        children: tourismPlaceList.map((place) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(place.location),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}


var tourismPlaceList = [
  TourismPlace(
    name: 'Brown Canyon',
    location: 'Rowosari, Kec. Tembalang',
    description:'Di Indonesia, Brown Canyon adalah sebuah bekas penambangan tanah di Meteseh, Tembalang, Semarang. Lokasi ini menjadi salah satu lokasi yang populer di Semarang dan dianggap mirip dengan Grand Canyon di Amerika Serikat. Kemiripan ini terletak pada bukit-bukit yang berubah menjadi tebing-tebing curam.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp 5000',
    imageAsset: 'images/browncanyon.jpg',
    imageUrls: [
      'https://bosniatravel.net/wp-content/uploads/2019/07/Eksotisme-brown-canyon-semarang.jpg',
      'https://www.orbitmetro.com/wp-content/uploads/2020/04/BRO-A.jpg',
      'https://www.minews.id/wp-content/uploads/2020/10/97129591_241796550368962_6194776712326902743_n.jpg'
    ],
    coords: [-7.076853941291587, 110.48197776789655],
    rating: 4.2, vote: 2907,
  ),
  TourismPlace(
    name: 'Goa Kreo',
    location: 'Jl. Raya Goa Kreo',
    description: 'Goa Kreo adalah objek wisata yang terdapat di Kota Semarang. Goa Kreo merupakan Goa yang terbentuk oleh alam dan terletak di tengah-tengah Waduk Jatibarang, sebuah bendungan yang membendung Kali Kreo. Goa ini pernah digunakan Sunan Kalijaga untuk bertapa. Di sini terdapat banyak monyet ekor panjang, dan menurut legenda juga terdapat tiga monyet gaib anak buah dari Sunan Kalijaga untuk menjaga hutan tersebut.',
    openDays: 'Open Everyday',
    openTime: '07:00 - 17:00',
    ticketPrice: 'Rp 6000',
    imageAsset: 'images/goakreo.jpg',
    imageUrls: [
      'https://1.bp.blogspot.com/-fb2sX545EGY/XSoKQjc4jTI/AAAAAAAAE0s/H_3t402qz8E0ho_o8R4xLUOQRM1E1s7EwCLcBGAs/s1600/jembatan-dan-patung-monyet-goa-kreo.jpg',
      'https://i1.wp.com/dosenwisata.com/wp-content/uploads/2019/10/Wisata-Goa-Kreo-Semarang.jpg?fit=800%2C486&ssl=1',
      'https://1.bp.blogspot.com/-JVBKSKzhL-s/XfI-NXjs5jI/AAAAAAAAEUo/qPJ21InuVCM3RDn3y1F5SPHxFtFzZNx2gCLcBGAsYHQ/s640/negeri-di-atas-awan-goa-kreo.jpg',
    ],
    coords: [-7.0369647107654885, 110.34762985070716],
    rating: 4.3, vote: 5858,
  ),
  TourismPlace(
    name: 'Kota Lama',
    location: 'Jl. Letjen Suprapto No.31',
    description: 'Kota Lama Semarang adalah suatu kawasan di Semarang yang menjadi pusat perdagangan pada abad 19-20. Pada masa itu, untuk mengamankan warga dan wilayahnya, maka kawasan itu dibangun benteng, yang dinamai benteng Vijhoek. Untuk mempercepat jalur perhubungan antar ketiga pintu gerbang dibenteng itu maka dibuat jalan-jalan perhubungan, dengan jalan utamanya dinamai: Heeren Straat. Saat ini bernama Jl. Let Jen Soeprapto. Salah satu lokasi pintu benteng yang ada sampai saat ini adalah Jembatan Berok, yang disebut De Zuider Por.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'images/kotalama.jpg',
    imageUrls: [
      'https://tripjogja.co.id/wp-content/uploads/2019/10/Fasilitas-Kota-Lama-Semarang.jpg',
      'https://cdn.popbela.com/content-images/post/20190930/11-kota-lama-semarang-68395cefe332e4122b49697fe76ee689_750x500.jpg',
      'https://www.bobobox.co.id/blog/wp-content/uploads/2020/06/Kota-Lama-Semarang.jpg',
    ],
    coords: [-6.967905603916342, 110.4279576562491],
    rating: 4.7, vote: 9580,
  ),
  TourismPlace(
    name: 'Lawang Sewu',
    location: 'Jl. Pemuda, Sekayu',
    description: 'Lawang Sewu (bahasa Indonesia: seribu pintu) adalah gedung-gedung bersejarah di Indonesia yang berlokasi di Kota Semarang, Jawa Tengah. Gedung ini, dahulu yang merupakan kantor dari Nederlands-Indische Spoorweg Maatschappij atau NIS. Dibangun pada tahun 1904 dan selesai pada tahun 1907. Terletak di bundaran Tugu Muda yang dahulu disebut Wilhelminaplein.',
    openDays: 'Open Everyday',
    openTime: '07:00 - 21:00',
    ticketPrice: 'Rp 10000',
    imageAsset: 'images/lawangsewu.jpg',
    imageUrls: [
      'https://smol.id/wp-content/uploads/2020/01/images-13.jpg',
      'https://asset-a.grid.id/crop/0x0:0x0/700x465/photo/intisarifoto/original/1467_apakah-benar-lawang-sewu-memiliki-1000-pintu.JPG',
      'https://www.wisataterdekat.com/wp-content/uploads/2018/12/lawangsewusemarang4.jpg',
    ],
    coords: [-6.983784163327614, 110.41043155247971],
    rating: 4.6, vote: 56507,
  ),
  TourismPlace(
    name: 'Mangrove Edu Park',
    location: 'Tugu, Tugurejo',
    description: 'Berada di antara Pantai Maron dan ujung run way Bandara Ahmad Yani Semarang, Mangrove Edu Park ini dibangun untuk memberikan ruang bagi masyarakat untuk menikmati indahnya mangrove, belajar mencintai mangrove dan akhirnya bisa meningkatkan kesadaran masyarakat akan pentingnya menjaga lingkungan pesisir dari ancaman abrasi dengan melestarikan mangrove. Sejak tahun 2011, sudah lebih dari dari 500.000  pohon mangrove ditanam di lokasi ini. Banyak pengunjung  yang datang ke MMEP ini terutama di akhir pekan. Kebanyakan adalah anak muda, untuk berfoto foto.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 17:00',
    ticketPrice: 'Rp 5000',
    imageAsset: 'images/mangrove.jpg',
    imageUrls: [
      'https://phinemo.com/wp-content/uploads/2017/09/mangrove-edupark.jpg',
      'https://statik.tempo.co/data/2016/06/13/id_514963/514963_620.jpg',
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5bYxnqmdx4YbvGNDJ8SjM6I3yQucl8fnQUg&usqp=CAU',
    ],
    coords: [-6.958056549190903, 110.36051248323673],
    rating: 4.0, vote: 253,
  ),
  TourismPlace(
    name: 'Pantai Marina',
    location: 'Jl. Yos Sudarso',
    description: 'Pantai Marina adalah salah satu objek wisata pantai yang berada di kota Semarang, Jawa Tengah. Pantai ini menyimpan pemandangan eksotis khas kota Semarang. Dahulu, tempat ini merupakan hutan bakau dan tambak, tapi pemerintah setempat mengubahnya menjadi tempat rekreasi dengan cara reklamasi daratan. Hasil reklamasi dari hutan bakau ini, sekarang berupa perumahan, pertokoan, dan perkantoran, di sebelah selatan pantai.',
    openDays: 'Open Everyday',
    openTime: '06:00 - 19:00',
    ticketPrice: 'Rp 5000',
    imageAsset: 'images/marina.jpg',
    imageUrls: [
      'https://www.pantainesia.com/wp-content/uploads/2018/06/pantai-marina-semarang-1080x703.jpg',
      'https://pariwisataku.com/wp-content/uploads/2020/06/pantaimarina-hilmi.rozaan-1024x680.jpg',
      'https://dolanyok.com/wp-content/uploads/Pantai-Marina-Atas.jpg',
    ],
    coords: [-6.948642694316218, 110.38934995440142],
    rating: 4.1, vote: 10055,
  ),
  TourismPlace(
    name: 'Pantai Maron',
    location: 'Tugu, Tugurejo',
    description: 'Pantai Maron adalah pantai  yang terletak di sebelah barat Semarang, tepatnya di sekitar muara Sungai Silandak ini, bisa ditempuh dari dua tempat, yaitu dari Bandara Ahmad Yani atau dari Perumahan Graha Padma, Krapyak. Kira-kira berjarak 3 km dari jalan raya kita sudah bisa sampai di lokasi. Jika menggunakan kendaraan bisa ditempuh sekitar 10 menit. Namun jika ingin jalan kaki, dari ujung perumahan Graha Padma saja bisa memakan waktu 30 menit. Nama Maron sendiri konon karena pantai ini masih merupakan milik Penerbangan TNI Angkatan Darat (Penerbad), karena merah maroon merupakan warna khas baret Penerbad, maka pantai ini disebut Pantai Maron. Memang kurang jelas siapa yang mengelola Pantai Maron. Yang jelas setiap masuk pantai Maron kita cukup membayar 2 ribu rupiah, untuk biaya parkir.',
    openDays: 'Open Everyday',
    openTime: '10:00 - 17:00',
    ticketPrice: 'Rp 5000',
    imageAsset: 'images/maron.jpg',
    imageUrls: [
      'https://www.bobobox.co.id/blog/wp-content/uploads/2020/01/15101552_620402324828111_1132018362633682944_n-450x300.jpg',
      'https://www.klikhotel.com/klik/database/informasiSekitarLokasi/2311-937.jpg',
      'https://piknikasik.com/wp-content/uploads/2017/04/keindahan-pantai-bandengan-jepara-300x150.jpg',
    ],
    coords: [-6.954278295835103, 110.3600805044013],
    rating: 3.7, vote: 149,
  ),
  TourismPlace(
    name: 'Pecinan',
    location: 'Jl. Kauman',
    description: 'Kawasan Pecinan Semarang merupakan sebuah kawasan yang dipenuhi dengan beberapa bangunan lama khas arsitektur Tionghoa. Kawasan ini memiliki nilai sejarah yang tinggi bagi masyarakat di sekitar Semarang. Tempat ini sudah ada sejak ratusan tahun yang lalu, sehingga ada banyak kisah sejarah yang melekat pada kawasan ini. Wisatawan yang berkunjung tidak hanya bisa melihat wisata sejarah saja, melainkan juga wisata budaya.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'images/pecinan.jpg',
    imageUrls: [
      'https://tempatwisataunik.com/wp-content/uploads//2018/02/8c4281f6-sejarah-pecinan-semarang-300x200.jpg',
      'https://thumb.viva.co.id/media/frontend/thumbs3/2018/05/11/5af5668b4605f-menjelajah-kawasan-pecinan-semarang_665_374.jpg',
      'https://3.bp.blogspot.com/-jtV65_HPy4g/XFKunugFd3I/AAAAAAAABKI/vEfZkKifUB0-C8NBaIlQpLrnBVrIf3VKwCLcBGAs/s1600/MGMP%2BSosiologi%2BJateng%2Bdi%2Bkampung%2Bpecinan.jpg',
    ],
    coords: [-6.974938382188588, 110.42495399673088],
    rating: 4.5, vote: 2880,
  ),
  TourismPlace(
    name: 'Sam Poo Kong',
    location: 'Jl. Simongan Raya No. 129',
    description: 'Kelenteng Sam Poo Kong sering disebut juga Kelenteng Gedung Batu karena bentuknya merupakan gua batu besar yang berada di sebuah bukit batu. Untuk mengenang Zheng He, masyarakat Indonesia keturunan Tionh Hoa membangun sebuah kelenteng. Sekarang tempat ini dijadikan tempat peringatan dan pemujaan atau bersembahyang serta tempat untuk berziarah. Untuk keperluan tersebut, di dalam gua batu itu diletakkan sebuah altar serta patung-patung Sam Po Tay Djien.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 21:00',
    ticketPrice: 'Rp 20000',
    imageAsset: 'images/sampokong.jpg',
    imageUrls: [
      'https://s3.ap-southeast-1.amazonaws.com/swa.co.id/wp-content/uploads/2017/01/Airyrooms-Klenteng-Sam-Poo-Kong-courtesy-of-wisata-kotasemarang_blogspot_com.jpg',
      'https://1.bp.blogspot.com/-etnMwnIcIOY/XYjZu1EDXgI/AAAAAAAA5w0/mLBIjKldOY47cfhnaOryQQpW2QWBzTK2ACLcBGAsYHQ/s640/Sam%2BPoo%2BKong%2B1.jpg',
      'https://cdn1-production-images-kly.akamaized.net/Qk_dWAin37OCN1wrg9TD75eJ5FM=/640x360/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/1053353/original/020601000_1447386086-Kelenteng_Sam_Poo_Kong_representasi_dari_keragaman_budaya__di_Semarang.jpg',
    ],
    coords: [-6.996001824266876, 110.39806436974318],
    rating: 4.5, vote: 22578,
  ),
  TourismPlace(
    name: 'Taman Lele',
    location: 'Jl. Raya Walisongo KM 10',
    description: 'Kampung wisata Taman Lele Semarang adalah sebuah objek wisata alam sekaligus taman hiburan keluarga di yang terletak di kota Semarang. Objek wisata ini memiliki luas lebih dari 2 hektare, memiliki aneka permainan untuk keluarga baik permainan air ataupun permainan darat.',
    openDays: 'Open Everyday',
    openTime: '08:00 - 16:00',
    ticketPrice: 'Rp 10000',
    imageAsset: 'images/tamanlele.jpg',
    imageUrls: [
      'https://2.bp.blogspot.com/-hw3-ppyTTF8/W-c208v-4cI/AAAAAAAAAtA/YBdsTwtpApQr1PIHDZ34NMFqZggDtn5iwCLcBGAs/s1600/jejak-kenzie_wisata-taman-lele-semarang-00008.jpg',
      'https://4.bp.blogspot.com/-Mc4JlQzNjdk/WE4h6PYxERI/AAAAAAAALXU/x9ndpvMzdsw1cucgy4Lv493BXsPXgXN9wCLcB/s1600/lele1.jpg',
      'https://jasabuspariwisata.com/wp-content/uploads/2017/11/jasabuspariwisata-misteri-kampung-wisata-taman-lele-di-semarang.jpg',
    ],
    coords: [-6.986061447216529, 110.34556424881883],
    rating: 4.0, vote: 1411,
  ),
];
