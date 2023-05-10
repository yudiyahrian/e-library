import 'package:e_library/models/book.dart';

List<Book> books = [
  Book(
      image: 'the_art_of_loving.png',
      title: 'The Art Of Loving',
      author: 'Erich Fromm',
      description: 'Memang benar manusia di zaman ini haus akan cinta. Sudah berapa ribu kali anda mendengarkan lagu-lagu tentang cinta? Sudah berapa ratus kali anda menonton film cinta entah itu berakhir  bahagia atau tragis? Dilihat dari pertanyaan diatas, tema tentang cinta seakan akan tak akan pernah habis dan selalu di eksploitasi  untuk memenuhi rasa haus itu.  Itu adalah beberapa kalimat yang ada dalam sampul belakang buku yang berjudul The Art Of Loving.',
      genre: 'Romance',
      date: '2 Maret 2020',
      page: '188',
      rating: '5.0'
  ),
  Book(
      image: 'blue_lock.png',
      title: 'Blue Lock',
      author: 'Muneyuki Kaneshiro',
      description: 'Isagi Yoichi merupakan pemeran utama dalam anime ini, dia adalah seorang anak SMA yang pernah menjadi strikel hebat di tim sekolahnya. Ketika mengalami kekalahan dalam pertandingan, dia akhirnya terpuruk. Setelah menerima undangan untuk mengikuti program yang kontroversial itu, Isagi Yoichi ikut gabung serta berusaha bangkit dari kekalahan sebelumnya. Dia bertekad untuk membela tim nasional Jepang dan menjadi pemain hebat di tingkat dunia.',
      genre: 'Sport',
      date: '6 Agustus 2018',
      page: '25',
      rating: '5.0'
  ),
  Book(
      image: 'mata_rahasia_pulau.png',
      title: 'Mata Rahasia Pulau',
      author: 'Okky Puspa ',
      description: 'Dua sahabat bernama Mata dan Gapi yang berusaha untuk mengungkap misteri di pulau yang dianggap angker dan terdapat legenda terkait pulau tersebut. Selama petualangan mereka, Mata dan Gapi menemukan berbagai hal yang tidak diduga dan menghadapi ber',
      genre: 'Adventure',
      date: '11 Nov 2018',
      page: '256',
      rating: '5.0'
  ),
  Book(
      image: 'filosopi_teras.png',
      title: 'Filosofi Teras',
      author: 'Henry Manampiring',
      description: 'Lebih dari 2.000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turunnya kehidupan. Jauh dari kesan filsafat sebagai topik berat dan mengawang-awang, Filosofi Teras justru bersifat praktis dan relevan dengan kehidupan Generasi Milenial dan Gen-Z masa kini.',
      genre: '-',
      date: '18 Desember 2018',
      page: '346',
      rating: '5.0',
  ),
  Book(
      image: 'psychology_of_money.png',
      title: 'Psychology of money',
      author: 'Morgal Housell',
      description: 'Kesuksesan dalam mengelola uang tidak selalu tentang apa yang Anda ketahui. Ini tentang bagaimana Anda berperilaku. Dan perilaku sulit untuk diajarkan, bahkan kepada orang yang sangat pintar sekalipun. Seorang genius yang kehilangan kendali atas emosinya bisa mengalami bencana keuangan. Sebaliknya, orang biasa tanpa pendidikan finansial bisa kaya jika mereka punya sejumlah keahlian terkait perilaku yang tidak berhubungan dengan ukuran kecerdasan formal.',
      genre: '-',
      date: '28 Desember 2021',
      page: '268',
      rating: '5.0',
  ),
  Book(
      image: 'seribu_wajah_ayah.png',
      title: 'Seribu wajah ayah',
      author: 'Bunda Muthia Esfand',
      description: 'Mengisahkan kisah hidup Bunda Muthia Esfand bersama sang ayah, yang berjuang menghadapi berbagai cobaan dan tantangan dalam hidup. Buku ini mengangkat tema tentang keberanian, keikhlasan, dan arti keluarga yang kuat dan penuh kasih sayang.',
      genre: '-',
      date: '2 April 2020',
      page: '148',
      rating: '5.0'
  ),
  Book(
      image: 'percy_jackson.png',
      title: 'Percy Jackson',
      author: 'Rick Diordan',
      description: 'Aku Percy Jackson. Aku sudah dikeluarkan dari sekolah berkali-kali, sebagian karena aku penyandang disleksia dan GPPH (Gangguan Pemusatan Perhatian dan Hiperaktif), sebagian lagi karena masalah sepertinya suka sekali mengejarku ke mana pun aku pergi. Yang lebih buruk lagi, aku ternyata demigod. Kalau menurutmu memiliki orang tua dewata itu menyenangkan, kau salah. Sebagai demigod, kami harus menjalani misi dan menjadi pahlawan, yang berarti kami selalu diburu monster, dibenci oleh kebanyakan dewa, dan seringnya mati muda.',
      genre: 'Romance',
      date: '7 Juni 2021',
      page: '352',
      rating: '5.0'
  ),
];

List<PopularBook> popularBook = [
  PopularBook(image: 'the_art_of_loving.png', title: 'The Art Of Loving', description: 'Manusia di zaman ini harus jujur bahwa “dahaga akan cinta” itu nyata terjadi dan dialami. Sudah berapa ribu kali Anda mendengarkan lagu-lagu “murahan” tentang cinta? Sudah berapa ratus kali Anda menonton film cinta—entah itu berakhir bahagia atau tragis? Tema tentang cinta seakan tak pernah habis-habisnya dieksploitasi untuk memenuhi rasa dahaga itu.', genre: 'Romance', ranking: '1'),
  PopularBook(image: 'seribu_wajah_ayah.png', title: 'Seribu Wajah Ayah', description: 'Mengisahkan kisah hidup Bunda Muthia Esfand bersama sang ayah, yang berjuang menghadapi berbagai cobaan dan tantangan dalam hidup.', genre: 'Inspiration', ranking: '2'),
  PopularBook(image: 'percy_jackson.png', title: 'Percy Jackson', description: 'Aku Percy Jackson. Aku sudah dikeluarkan dari sekolah berkali-kali, sebagian karena aku penyandang disleksia dan GPPH (Gangguan Pemusatan Perhatian dan Hiperaktif), aku ternyata demigod.', genre: 'Adventure', ranking: '3'),
];