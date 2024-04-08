import 'package:flutter/material.dart'; // Import package flutter material untuk menggunakan Flutter framework.

void main() { // Fungsi utama yang akan dijalankan saat aplikasi dimulai.
  runApp(MyApp()); // Memanggil fungsi runApp dengan parameter MyApp() untuk menjalankan aplikasi.
}

class MyApp extends StatelessWidget { // Pembuatan class MyApp yang merupakan turunan dari StatelessWidget.
  @override
  Widget build(BuildContext context) { // Override fungsi build untuk membuat tampilan aplikasi.
    return MaterialApp( // Mengembalikan MaterialApp sebagai tampilan utama aplikasi.
      title: 'Fashion Hijab', // Judul aplikasi.
      theme: ThemeData( // Tema aplikasi.
        primaryColor: Color.fromARGB(255, 228, 111, 111), // Warna utama aplikasi.
        visualDensity: VisualDensity.adaptivePlatformDensity, // Density visual yang disesuaikan dengan platform.
        scaffoldBackgroundColor: Colors.white, // Warna latar belakang scaffold.
        appBarTheme: AppBarTheme( // Tema app bar.
          backgroundColor: Color.fromARGB(255, 172, 169, 169), // Warna latar belakang app bar.
        ),
      ),
      home: HomePage(), // Halaman utama aplikasi.
    );
  }
}

class HomePage extends StatelessWidget { // Pembuatan class HomePage yang merupakan turunan dari StatelessWidget.
  @override
  Widget build(BuildContext context) { // Override fungsi build untuk membuat tampilan halaman utama.
    return Scaffold( // Mengembalikan Scaffold sebagai kerangka tampilan.
      appBar: AppBar( // App bar pada halaman utama.
        title: Center( // Pusatkan judul app bar.
          child: Text( // Teks pada app bar.
            'Fashion Hijab', // Isi teks app bar.
            style: TextStyle( // Gaya teks.
              fontSize: 24.0, // Ukuran teks.
              fontWeight: FontWeight.bold, // Ketebalan teks.
              fontFamily: "cursive", // Jenis font.
              letterSpacing: 2.0, // Jarak antar huruf.
              color: Color.fromARGB(255, 0, 0, 0), // Warna teks.
            ),
          ),
        ),
      ),
      body: GridView.builder( // Membuat grid view untuk menampilkan 
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( // Penentuan jumlah kolom dalam grid.
          crossAxisCount: 5, // Jumlah kolom.
          childAspectRatio: 0.7, // Rasio aspek untuk ukuran gambar 
        ),
        itemCount: products.length, // Jumlah item dalam grid.
        itemBuilder: (context, index) { // Pembuat item dalam grid.
          return ProductItem(product: products[index]); // Mengembalikan widget ProductItem untuk setiap 
        },
      ),
    );
  }
}

class Product { // Pembuatan class Product untuk merepresentasikan 
  final String image; // Variabel untuk menyimpan URL gambar 
  final String description; // Variabel untuk deskripsi 
  final String detailText; // Variabel untuk teks detail 

  Product({required this.image, required this.description, required this.detailText}); // Konstruktor untuk class Product.
}

final List<Product> products = [ // List yang akan ditampilkan dalam grid.
  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/7/27/6cbc245d-bd8a-4580-93a2-c5bd6bda80c7.jpg',
    description: 'Kemeja dan Celana',
    detailText: 'Simpel dan tidak memerlukan banyak aksesoris,tampil casual dengan paduan pashmina, kemeja, dan jeans sudah bisa membuat kamu tampak rapi dan siap menjalani hari.',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/56731f86-5081-4eac-8057-772a49020679.jpg',
    description: 'Streetstyle',
    detailText: 'Kamu bisa memadukan jeans denim dengan graphic tee dan manset hitam. Lengkapi look ini hijab casual ini dengan pilihan warna dan sneakers favoritmu.',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/e4ef1b20-9574-4fa7-9748-02f8fda28d2d.jpg',
    description: 'Palet Pastel',
    detailText: 'Palet ini jadi favorit kebanyakan hijabers karena gampang dipadukan dengan banyak warna yang senada dan banyak cara. Wanita yang aktif mengembangkan fashion hijab biasanya juga dikenal sering tampil dengan warna earth tone yang kalem, anggun, dan tampak natural ketika dikenakan.',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/ca5bbc48-5f55-4635-b1e0-1e6bd6caa265.jpg',
    description: 'Oversized',
    detailText: 'Gaya ini cocok untuk kalian yang suka sesuatu yang kebesaran, oversize sweater atau kaos yang oversize bisa dipadukan dengan celana panjang atau rok favoritmu.',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/e1425cd8-5916-4d28-be89-70bd6998efa5.jpg',
    description: 'Pashmina & Blazer',
    detailText: 'Pashmina biasanya tidak jauh-jauh dari longsleeve, celana panjang, dan selalu menggunakan mix-match dalam berbusana. Pashmina dengan blazer cocok ketika mereka ingin bepergian atau ke kantor dan dibawa dengan casual style.',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/6a2467ad-914d-47a5-9316-4c21d8ebd7fb.jpg',
    description: 'Netral dan Simpel',
    detailText: 'Kalau sebelumnya warna pastel, kali ini warna netral dan sederhana menjadi pilihan untuk kamu yang tidak suka warna pastel. Gaya ini lebih gampang dipadukan dengan apapun, namun kamu harus bisa menyesuaikan look ini karena tidak semua orang bisa cocok mengenakannya. Kamu bisa menggunakan warna khas gaya ini untuk atasan dan bawahan, dan memakai hijab yang warna terang.',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/cce86171-2d97-4d9a-8b96-22b47ccadad6.jpg',
    description: 'Sentuhan Hitam',
    detailText: 'Look yang satu ini cocok untuk kamu yang punya tubuh tidak terlalu tinggi, namun juga bisa tampil modis dengan balutan hitam dengan outer panjang dan menggunakan bawahan jeans atau rok yang longgar. Aksesoris dan pashmina dengan model rumbai akan menyempurnakan tampilan ini.',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/3248a8c1-1f61-454a-90b0-f5a237a769bd.jpg',
    description: 'Monochrome',
    detailText: 'Menggunakan warna monokrom alias hitam dan putih terlihat basic, namun menarik jika dipadukan dengan hijab berwarna putih dan bawahan longgar seperti celana borju panjang.',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/f603f228-6f5a-4979-9258-d2b292f3282d.jpg',
    description: 'Model Girly',
    detailText: 'Untuk yang ingin menonjolkan kesan lebih girly, gaya ini bisa jadi pilihan. Padukan dengan warna terang seperti merah muda, putih atau cream dan pakai rok midi, dengan hijab berwarna terang juga. ',
  ),

  Product(
    image: 'https://images.tokopedia.net/img/JFrBQq/2022/4/18/1056d870-1615-4f3d-830f-2e72bd1dbb5a.jpg',
    description: 'Midi Skirt',
    detailText: 'Menggunakan midi skirt sudah menjadi tren bagi para muslimah dan fashion item yang satu ini memberikan kesan yang girly dan cocok dipakai di manapun. Model roknya yang flowy efektif untuk buat tampilan anggun dan elegan.',
  ),

];

class ProductItem extends StatelessWidget { // Pembuatan class ProductItem yang merupakan turunan dari StatelessWidget.
  final Product product; // Variabel untuk menyimpan data 
  ProductItem({required this.product}); // Konstruktor untuk class ProductItem.

  @override
  Widget build(BuildContext context) { // Override fungsi build untuk membuat tampilan item .
    return GestureDetector( // Widget untuk menangkap gesture (tindakan) pengguna.
      onTap: () { // Aksi yang dijalankan saat item ditekan.
        Navigator.push( // Navigator untuk berpindah halaman.
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(product: product), // Halaman detail.
          ),
        );
      },
      child: Card( // Widget untuk menampilkan item dalam bentuk card.
        elevation: 4, // Ketinggian shadow card.
        shape: RoundedRectangleBorder( // Bentuk card yang disesuaikan.
          borderRadius: BorderRadius.circular(12), // Jumlah sudut card.
        ),
        child: Column( // Widget untuk menampilkan item dalam bentuk kolom.
          crossAxisAlignment: CrossAxisAlignment.stretch, // Penyusunan widget secara horizontal.
          children: [
            Expanded( // Widget untuk menyesuaikan ukuran secara otomatis.
              child: Hero( // Widget untuk animasi hero (transisi antar halaman).
                tag: product.image, // Tag untuk animasi hero.
                child: ClipRRect( // Widget untuk memotong gambar sesuai radius.
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12)), // Radius potongan gambar.
                  child: Image.network( // Widget untuk menampilkan gambar dari URL.
                    product.image, // URL gambar .
                    fit: BoxFit.cover, // Penyesuaian ukuran gambar.
                    width: double.infinity, // Lebar gambar maksimum.
                    height: double.infinity, // Tinggi gambar maksimum.
                  ),
                ),
              ),
            ),
            Padding( // Widget untuk menambahkan padding di sekitar widget.
              padding: const EdgeInsets.all(8.0), // Jarak padding dari segala arah.
              child: Text( // Widget untuk menampilkan teks.
                product.description, // Deskripsi .
                style: TextStyle( // Gaya teks.
                  fontSize: 10, // Ukuran teks.
                  fontWeight: FontWeight.bold, // Ketebalan teks.
                  fontFamily: 'Open Sans', // Jenis font.
                  color: Color.fromARGB(255, 0, 0, 0), // Warna teks.
                ),
                maxLines: 2, // Batasan jumlah baris teks.
                overflow: TextOverflow.ellipsis, // Tindakan saat teks melebihi batas.
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductDetailPage extends StatelessWidget { // Pembuatan class ProductDetailPage yang merupakan turunan dari StatelessWidget.
  final Product product; // Variabel untuk menyimpan data .

  ProductDetailPage({required this.product}); // Konstruktor untuk class ProductDetailPage dengan parameter wajib 'product'.

  @override
  Widget build(BuildContext context) { // Override fungsi build untuk membuat tampilan halaman detail .
    return Scaffold( // Mengembalikan Scaffold sebagai kerangka tampilan.
      appBar: AppBar( // App bar pada halaman detail .
        title: Text('Fashion explanation'), // Judul app bar.
      ),
      body: Column( // Widget kolom untuk menyusun elemen secara vertikal.
        mainAxisAlignment: MainAxisAlignment.center, // Penyusunan elemen secara vertikal di tengah.
        crossAxisAlignment: CrossAxisAlignment.center, // Penyusunan elemen secara horizontal di tengah.
        children: [ // Elemen-elemen dalam kolom.
          Container( // Widget container untuk menampung gambar .
            width: 300, // Lebar kontainer gambar.
            height: 400, // Tinggi kontainer gambar.
            decoration: BoxDecoration( // Dekorasi kontainer.
              borderRadius: BorderRadius.circular(12), // Radius sudut kontainer.
              image: DecorationImage( // Gambar sebagai latar belakang kontainer.
                image: NetworkImage(product.image), // Mengambil gambar dari URL .
                fit: BoxFit.cover, // Penyesuaian ukuran gambar.
              ),
            ),
          ),
          SizedBox(height: 20), // Jarak vertikal antara gambar dan teks.
          Text( // Widget teks untuk menampilkan detail.
            product.detailText, // Teks detail.
            style: TextStyle( // Gaya teks.
              fontSize: 16, // Ukuran teks.
              fontFamily: 'Open Sans', // Jenis font teks.
              fontStyle: FontStyle.italic, // Gaya teks miring.
              fontWeight: FontWeight.normal, // Ketebalan teks normal.
              color: Color.fromARGB(255, 50, 50, 50), // Warna teks.
            ),
            textAlign: TextAlign.center, // Penyusunan teks di tengah.
          ),
        ],
      ),
    );
  }
}
