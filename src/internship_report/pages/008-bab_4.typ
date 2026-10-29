#import "../config.typ" : *
#import "../metadata.typ" : *
#import "@preview/titleize:0.1.1": *

#set page(
	paper: "a4",
	margin: kMargin,
	background: if kDebug == true { image("../slicing/010.pdf") }
)

#set text(
	font: "Arial", 
	size: 12pt,
	fill: kColor,
	lang: "id"
)

#set heading(numbering: none)

#show heading.where(level: 1) : it => {
	show text: upper
	set align(center)
	set text(size: 14pt)
	set par(leading: 9pt)
	it.body
}

#show heading.where(level: 2) : it => {
	set text(size: 12pt)
	titlecase(it)
}

#show heading.where(level: 3) : it => {
	set text(size: 12pt)
	titlecase(it)
}

#v(13pt)

= bab IV\ KONSEP TEORI DAN PENERAPAN

#set heading(numbering: "1.1")

#set figure(
  numbering: (..n) => {
    let h = counter(heading).get().at(0)
    let f = n.pos().first()
    [#h.#f]
  }
)

#show figure.where(kind: table): set block(breakable: true)

#counter(heading).update((4))
#counter(figure.where(kind: table)).update(0)
#counter(figure.where(kind: image)).update(0)

#set par(
	spacing: 1.3em, 
	leading: 0.615em,
	justify: true,
	first-line-indent: (amount: 3em, all: true),
	hanging-indent: 1.75em,
)

#v(1.5pt)
== Konsep Teori
#v(4pt)
Bagian ini memaparkan konsep teori yang menjadi landasan dalam perancangan UI/UX website LPPM Institut Teknologi PLN. Pembahasan mencakup konsep _User Interface_ dan _User Experience_, _usability_, prinsip desain antarmuka, arsitektur informasi dan navigasi, _design system_ beserta perangkat perancangan yang digunakan, metode evaluasi _usability_, serta konsep dasar pengembangan antarmuka web sebagai acuan tahap implementasi.
#parbreak()
#v(1.5pt)
=== User Interface dan User Experience
#v(4pt)
_User Interface_ (UI) merupakan bagian dari sistem yang tampak dan berinteraksi langsung dengan pengguna, meliputi elemen visual seperti tata letak, warna, tipografi, ikon, tombol, serta komponen antarmuka lainnya. UI berperan sebagai jembatan antara pengguna dan sistem, sehingga perancangannya perlu memperhatikan kejelasan, konsistensi, dan kemudahan pemahaman. Sementara itu, _User Experience_ (UX) mencakup keseluruhan pengalaman pengguna ketika berinteraksi dengan produk, mulai dari kemudahan memahami fungsi, kenyamanan penggunaan, hingga tercapainya tujuan pengguna @shneiderman2016designing.
#parbreak()
Hubungan antara UI dan UX dapat dipahami melalui pembagian lapisan pengalaman pengguna. Garrett @garrett2011elements menjelaskan bahwa perancangan pengalaman pengguna dapat dipandang sebagai suatu proses yang terdiri atas lima lapisan, yaitu _strategy_ (tujuan dan kebutuhan pengguna), _scope_ (fitur dan konten), _structure_ (struktur informasi dan interaksi), _skeleton_ (kerangka tata letak dan navigasi), serta _surface_ (tampilan visual). Dalam konteks perancangan website LPPM, lapisan-lapisan tersebut diwujudkan mulai dari identifikasi kebutuhan pengguna, penentuan konten, penyusunan struktur informasi, pembuatan _wireframe_, hingga perancangan tampilan visual yang akhirnya diterjemahkan menjadi prototipe.
#parbreak()
#v(1.5pt)
=== Usability dan Prinsip Desain Antarmuka
#v(4pt)
_Usability_ atau kemudahan penggunaan merupakan tingkat sejauh mana suatu produk dapat digunakan oleh pengguna tertentu untuk mencapai tujuan tertentu secara efektif, efisien, dan memuaskan dalam konteks penggunaan yang ditentukan @iso9241-11. Berdasarkan definisi tersebut, terdapat tiga aspek utama yang menjadi perhatian, yaitu efektivitas (ketepatan dan kelengkapan pencapaian tujuan), efisiensi (sumber daya yang diperlukan untuk mencapai tujuan), dan kepuasan (kenyamanan serta penerimaan pengguna terhadap produk) @nielsen1994usability.
#parbreak()
Untuk mendukung pencapaian _usability_ tersebut, terdapat beberapa prinsip desain antarmuka yang dapat dijadikan acuan. Nielsen @nngroup10 merumuskan sepuluh heuristik _usability_ yang meliputi keterlihatan status sistem, kesesuaian dengan dunia nyata, kendali dan kebebasan pengguna, konsistensi dan standar, pencegahan kesalahan, pengenalan alih-alih mengingat, fleksibilitas dan efisiensi penggunaan, desain estetis dan minimalis, bantuan pengenalan serta pemulihan dari kesalahan, dan bantuan serta dokumentasi. Prinsip-prinsip tersebut menjadi pertimbangan dalam perancangan elemen antarmuka website, misalnya penggunaan navigasi yang konsisten, penamaan menu yang mudah dipahami, serta penyediaan mekanisme pencarian untuk membantu pengguna menemukan informasi.
#parbreak()
Selain itu, Norman @norman2013design menekankan pentingnya _affordance_ dan umpan balik (_feedback_), yaitu kemampuan elemen antarmuka dalam memberi petunjuk mengenai fungsinya serta memberikan respons yang jelas terhadap tindakan pengguna. Penerapan prinsip ini dilakukan dengan memastikan elemen yang dapat diklik tampak interaktif, serta memberikan perubahan tampilan ketika pengguna berinteraksi dengan elemen tersebut.
#parbreak()
#v(1.5pt)
=== Arsitektur Informasi dan Desain Navigasi
#v(4pt)
Arsitektur informasi berkaitan dengan cara mengorganisasi, menata, dan memberi label pada konten agar dapat ditemukan dan dipahami dengan mudah oleh pengguna. Rosenfeld dkk. @rosenfeld2015information menjelaskan bahwa arsitektur informasi mencakup sistem organisasi, sistem pelabelan, sistem navigasi, dan sistem pencarian. Dalam perancangan website, keempat sistem tersebut menentukan bagaimana informasi dikelompokkan, bagaimana menu diberi nama, bagaimana pengguna berpindah antar halaman, serta bagaimana pengguna menemukan informasi tertentu.
#parbreak()
Perancangan arsitektur informasi umumnya diwujudkan dalam bentuk _sitemap_ dan alur penggunaan (_user flow_). _Sitemap_ menggambarkan struktur halaman dan hubungan antar halaman secara hierarkis, sedangkan _user flow_ menggambarkan langkah-langkah yang dilalui pengguna dalam menyelesaikan tugas tertentu. Penyusunan struktur informasi pada kegiatan ini didasarkan pada jenis konten yang dikelola LPPM serta kebutuhan pengguna dalam mengakses informasi penelitian dan pengabdian kepada masyarakat.
#parbreak()
#v(1.5pt)
=== Design System dan Perangkat Perancangan
#v(4pt)
_Design system_ merupakan kumpulan pedoman dan komponen desain yang digunakan secara konsisten dalam perancangan produk digital. _Design system_ umumnya memuat _design token_ seperti warna, tipografi, dan ukuran jarak, serta komponen antarmuka yang dapat digunakan ulang, misalnya tombol, kartu, dan _badge_. Keberadaan _design system_ membantu menjaga konsistensi tampilan, mempercepat proses perancangan, dan memudahkan penyesuaian apabila terjadi perubahan desain @figma_docs.
#parbreak()
Perangkat perancangan yang digunakan dalam kegiatan ini adalah Figma, yaitu perangkat perancangan antarmuka berbasis web yang mendukung pembuatan komponen, gaya (_style_), serta tata letak otomatis (_auto layout_). Fitur komponen dan varian memungkinkan perancang membuat elemen antarmuka yang dapat digunakan berulang dengan variasi tertentu, sedangkan fitur prototipe memungkinkan perancang menyusun alur interaksi antar halaman @figma_docs. Selain Figma, perancangan ini menggunakan tipografi _Plus Jakarta Sans_ sebagai huruf utama serta _Material Symbols Outlined_ sebagai ikon antarmuka.
#parbreak()
#v(1.5pt)
=== Metode Evaluasi Usability
#v(4pt)
Evaluasi _usability_ dilakukan untuk mengetahui sejauh mana rancangan dapat digunakan sesuai dengan kebutuhan pengguna. Salah satu metode yang umum digunakan adalah pengujian _usability_ (_usability testing_), yaitu pengujian yang melibatkan calon pengguna dalam menyelesaikan serangkaian tugas menggunakan rancangan yang diuji, sementara penguji mengamati dan mencatat kesulitan yang muncul @nielsen1994usability. Metode lain adalah evaluasi heuristik, yaitu peninjauan rancangan berdasarkan seperangkat prinsip _usability_ tanpa harus melibatkan pengguna secara langsung.
#parbreak()
Selain kedua metode tersebut, terdapat instrumen pengukuran yang banyak digunakan, yaitu _System Usability Scale_ (SUS). SUS merupakan kuesioner berisi sepuluh pernyataan dengan skala Likert yang digunakan untuk mengukur persepsi pengguna terhadap kemudahan penggunaan suatu sistem. Skor SUS dihitung dan dikonversi ke rentang 0 sampai 100, kemudian diinterpretasikan untuk menilai tingkat penerimaan (_acceptability_) sistem @sauro2016quantifying. Pada kegiatan ini, instrumen SUS digunakan sebagai salah satu alat untuk memperoleh gambaran mengenai kemudahan penggunaan rancangan website.
#parbreak()
#v(1.5pt)
=== Konsep Pengembangan Antarmuka Web
#v(4pt)
Hasil perancangan UI/UX pada kegiatan ini disiapkan agar dapat diterapkan pada tahap implementasi berbasis web. Salah satu pendekatan yang relevan adalah pengembangan antarmuka berbasis komponen menggunakan kerangka kerja seperti Vue.js. Vue.js merupakan kerangka kerja JavaScript untuk membangun antarmuka pengguna berbasis komponen, di mana tampilan disusun dari komponen-komponen yang dapat digunakan ulang dan dikombinasikan sesuai kebutuhan @vue_docs.
#parbreak()
Pendekatan berbasis komponen memiliki keterkaitan dengan konsep _design system_. Komponen antarmuka yang dirancang pada tahap desain, seperti tombol, kartu, dan navigasi, dapat dipetakan menjadi komponen pada tahap implementasi sehingga konsistensi tampilan tetap terjaga. Dengan demikian, hasil perancangan UI/UX tidak hanya bersifat visual, tetapi juga mempertimbangkan kelayakan penerapannya pada tahap pengembangan antarmuka website.

#v(1.5pt)
== Penerapan
#v(4pt)
Bagian ini menjelaskan penerapan konsep teori pada proses perancangan UI/UX website LPPM Institut Teknologi PLN, mulai dari analisis kondisi website dan kebutuhan pengguna, penyusunan arsitektur informasi, pembuatan _wireframe_, perancangan desain antarmuka pada Figma, pembuatan prototipe interaktif, hingga evaluasi dan penyempurnaan rancangan.
#parbreak()
#v(1.5pt)
=== Analisis Kondisi Website dan Riset Pengguna
#v(4pt)
Tahap awal penerapan dilakukan dengan menganalisis website LPPM Institut Teknologi PLN yang sedang digunakan. Website tersebut dikelola menggunakan sistem manajemen konten dan menyajikan informasi mengenai profil LPPM, kegiatan penelitian, pengabdian kepada masyarakat, publikasi, serta informasi kontak dan layanan @itpln:lppm. Berdasarkan hasil penelusuran, informasi pada website tersebar pada beberapa menu dan halaman, sehingga pengguna perlu melalui beberapa langkah untuk menemukan informasi tertentu.
#parbreak()
Hasil analisis menunjukkan beberapa hal yang perlu diperhatikan, antara lain struktur menu yang belum sepenuhnya menggambarkan pengelompokan informasi, keterbatasan sarana pencarian dan penyaringan (_filter_) informasi, serta penyajian daftar penelitian dan pengabdian kepada masyarakat yang belum disertai halaman detail yang memadai. Kondisi tersebut berpotensi menyulitkan pengguna dalam menemukan dan memahami informasi yang dibutuhkan.
#parbreak()
Selain analisis terhadap website, dilakukan identifikasi kebutuhan pengguna terhadap kelompok pengguna utama, yaitu dosen dan peneliti, mahasiswa, serta masyarakat umum. Kebutuhan tersebut di antaranya mencakup kemudahan menemukan informasi penelitian dan pengabdian, akses terhadap publikasi dan hasil inovasi, serta informasi mengenai peluang kerja sama. Hasil identifikasi kebutuhan pengguna dirangkum dalam bentuk _user persona_ sebagai dasar pengambilan keputusan perancangan.
#parbreak()
#figure(
	caption:  "User Persona Pengguna Website LPPM Institut Teknologi PLN",
	kFigPlaceholder("user persona pengguna utama website"),
)
#parbreak()
#v(1.5pt)
=== Penyusunan Arsitektur Informasi dan Navigasi
#v(4pt)
Berdasarkan hasil analisis kebutuhan, disusun arsitektur informasi berupa _sitemap_ yang menggambarkan struktur halaman website. Struktur tersebut dirancang agar informasi utama dapat diakses dalam sedikit langkah dan dikelompokkan sesuai jenisnya. Halaman-halaman utama yang dirancang meliputi Beranda, Riset & Pengabdian, Prototipe & Produk Inovasi, Mitra & Konsorsium, Pengumuman, serta halaman Detail Riset dan Penelitian. Struktur tersebut disajikan pada gambar berikut.
#parbreak()
#figure(
	caption:  "Arsitektur Informasi (Sitemap) Website LPPM Institut Teknologi PLN",
	kFigPlaceholder("sitemap website LPPM"),
)
#parbreak()
Pengelompokan halaman tersebut dijelaskan pada tabel berikut.
#parbreak()
#figure(
	caption: "Pengelompokan Halaman dan Navigasi Website LPPM Institut Teknologi PLN",
	table(
		columns: (3.4cm, 1fr, 1fr),
		inset: 6pt,
		align: (left, left, left),
		table.header(
			[*Halaman*], [*Isi Utama*], [*Peran dalam Navigasi*]
		),
		[Beranda],
		[Ringkasan statistik kegiatan, sorotan hasil inovasi, daftar publikasi terbaru, agenda, dan mitra.],
		[Pintu masuk utama dan pemberi gambaran umum kegiatan LPPM.],
		[Riset & Pengabdian],
		[Informasi dua pilar kegiatan, alur pengelolaan, sorotan riset dan pengabdian, serta akses cepat bagi dosen.],
		[Pusat informasi penelitian dan pengabdian, termasuk pencarian dan penyaringan daftar.],
		[Prototipe & Produk Inovasi],
		[Galeri purwarupa dan hasil inovasi beserta tahap kesiapterapan teknologi (_TRL_) dan peluang kerja sama.],
		[Menampilkan hasil hilirisasi inovasi kepada mitra dan publik.],
		[Mitra & Konsorsium],
		[Skema kolaborasi, direktori mitra, konsorsium prioritas, alur pengajuan kemitraan, dan formulir minat kerja sama.],
		[Menjembatani kerja sama antara LPPM dengan mitra industri dan lembaga penelitian.],
		[Pengumuman],
		[Panggilan proposal, agenda kegiatan, serta pengumuman publik lainnya.],
		[Menjadi saluran informasi terkini kegiatan LPPM.],
		[Detail Riset dan Penelitian],
		[Abstrak, informasi peneliti, luaran, metrik dampak, serta tautan unduhan dokumen publik.],
		[Halaman akses terbuka (_open access_) untuk setiap entri riset atau pengabdian.],
	)
)
#parbreak()
#v(1.5pt)
=== Perancangan Wireframe
#v(4pt)
_Wireframe_ dibuat sebagai kerangka awal tata letak setiap halaman sebelum perancangan desain beresolusi tinggi. _Wireframe_ ini menggambarkan penempatan elemen utama seperti navigasi, judul, area pencarian, daftar konten, serta tombol tindakan, tanpa memberikan penekanan pada aspek visual. Penyusunan _wireframe_ bertujuan memastikan struktur dan hierarki informasi pada setiap halaman telah tersusun dengan baik sebelum tahap perancangan tampilan dilakukan.
#parbreak()
#figure(
	caption:  "Wireframe Halaman Beranda Website LPPM Institut Teknologi PLN",
	kFigPlaceholder("wireframe halaman Beranda"),
)
#parbreak()
#v(1.5pt)
=== Perancangan Desain UI/UX pada Figma
#v(4pt)
Perancangan desain antarmuka dilakukan pada perangkat perancangan Figma dengan berpedoman pada identitas visual Institut Teknologi PLN serta hasil analisis kebutuhan pengguna. Tahap ini dimulai dengan penyusunan _design system_ yang mencakup palet warna, tipografi, ikon, serta komponen antarmuka. Penyusunan _design system_ bertujuan menjaga konsistensi tampilan antar halaman dan memudahkan proses penyempurnaan.
#parbreak()
Palet warna yang digunakan pada perancangan disusun dengan warna utama yang mencerminkan identitas institusi serta warna pendukung untuk membedakan elemen antarmuka. Nilai warna yang digunakan pada tahap implementasi disajikan pada tabel berikut.
#parbreak()
#figure(
	caption: "Palet Warna pada Perancangan Antarmuka Website LPPM Institut Teknologi PLN",
	table(
		columns: (3.6cm, 2.6cm, 1fr),
		inset: 6pt,
		align: (left, left, left),
		table.header(
			[*Token Warna*], [*Nilai*], [*Penggunaan*]
		),
		[Primary], table.cell(fill: rgb("#002a78"), inset: 10pt)[#align(center, text(fill: white, size: 9pt, raw("#002a78")))], [Warna utama: tombol, navigasi aktif, dan aksen],
		[Primary Dark], table.cell(fill: rgb("#001f61"), inset: 10pt)[#align(center, text(fill: white, size: 9pt, raw("#001f61")))], [Variasi warna utama untuk status interaksi],
		[Success], table.cell(fill: rgb("#45d48a"), inset: 10pt)[#align(center, text(fill: rgb("#0d2b6b"), size: 9pt, raw("#45d48a")))], [Aksen penekanan, misalnya pada judul],
		[Text Heading], table.cell(fill: rgb("#0d2b6b"), inset: 10pt)[#align(center, text(fill: white, size: 9pt, raw("#0d2b6b")))], [Warna teks judul],
		[Text Body], table.cell(fill: rgb("#596273"), inset: 10pt)[#align(center, text(fill: white, size: 9pt, raw("#596273")))], [Warna teks isi],
		[Text Muted], table.cell(fill: rgb("#7d8493"), inset: 10pt)[#align(center, text(fill: white, size: 9pt, raw("#7d8493")))], [Warna teks keterangan sekunder],
		[Surface], table.cell(fill: rgb("#ffffff"), stroke: 0.5pt, inset: 10pt)[#align(center, text(size: 9pt, raw("#ffffff")))], [Latar kartu dan panel],
		[Surface Soft], table.cell(fill: rgb("#f8f8ff"), stroke: 0.5pt, inset: 10pt)[#align(center, text(size: 9pt, raw("#f8f8ff")))], [Latar halaman],
		[Surface Blue], table.cell(fill: rgb("#f1f3ff"), stroke: 0.5pt, inset: 10pt)[#align(center, text(size: 9pt, raw("#f1f3ff")))], [Latar sorotan dan bagian informasi],
		[Border], table.cell(fill: rgb("#e7e9f3"), stroke: 0.5pt, inset: 10pt)[#align(center, text(size: 9pt, raw("#e7e9f3")))], [Garis pembatas dan tepi kartu],
	)
)
#parbreak()
Selain palet warna, _design system_ memuat ketentuan tipografi dan ikon. Huruf yang digunakan adalah _Plus Jakarta Sans_ dengan variasi ketebalan untuk membedakan judul, subjudul, dan teks isi, sedangkan ikon menggunakan _Material Symbols Outlined_ agar tampilan antarmuka konsisten dan mudah dikenali. Komponen antarmuka yang disusun meliputi tombol, kartu informasi, _badge_, _tab_, bidang pencarian, dan navigasi.
#parbreak()
#figure(
	caption:  "Design System: Warna, Tipografi, dan Komponen Antarmuka",
	kFigPlaceholder("design system (palet, tipografi, komponen)"),
)
#parbreak()
Berdasarkan _design system_ tersebut, disusun rancangan desain beresolusi tinggi untuk setiap halaman. Halaman Beranda dirancang dengan bagian pengantar (_hero_) yang memuat judul utama dan bidang pencarian, diikuti oleh ringkasan statistik kegiatan, sorotan inovasi, daftar publikasi terbaru, agenda dan pengumuman, serta jejaring mitra. Rancangan halaman Beranda dapat dilihat pada gambar berikut.
#parbreak()
#figure(
	caption:  "Desain Antarmuka Halaman Beranda",
	kFigPlaceholder("desain halaman Beranda"),
)
#parbreak()
Halaman Riset & Pengabdian dirancang untuk menyajikan informasi dua pilar kegiatan LPPM. Halaman ini memuat bagian pengantar, penjelasan mengenai penelitian terapan dan pengabdian kepada masyarakat, alur pengelolaan kegiatan, sorotan riset dan pengabdian unggulan, serta akses cepat beserta unduhan panduan bagi dosen.
#parbreak()
#figure(
	caption:  "Desain Antarmuka Halaman Riset & Pengabdian",
	kFigPlaceholder("desain halaman Riset & Pengabdian"),
)
#parbreak()
Halaman Prototipe & Produk Inovasi dirancang sebagai galeri hasil inovasi dengan penyaringan dan pengendalian lingkup penelitian, serta informasi tahap kesiapterapan teknologi. Halaman Mitra & Konsorsium dirancang untuk menyajikan skema kolaborasi, direktori mitra terverifikasi, konsorsium riset prioritas, alur pengajuan kemitraan, dan formulir minat kerja sama. Halaman Pengumuman dirancang dengan tata letak dua kolom yang memuat panggilan proposal sebagai sorotan, daftar pengumuman, serta agenda akademik.
#parbreak()
#figure(
	caption:  "Desain Antarmuka Halaman Prototipe & Produk Inovasi",
	kFigPlaceholder("desain halaman Prototipe & Produk Inovasi"),
)
#parbreak()
#figure(
	caption:  "Desain Antarmuka Halaman Mitra & Konsorsium",
	kFigPlaceholder("desain halaman Mitra & Konsorsium"),
)
#parbreak()
#figure(
	caption:  "Desain Antarmuka Halaman Pengumuman",
	kFigPlaceholder("desain halaman Pengumuman"),
)
#parbreak()
Halaman Detail Riset dan Penelitian dirancang sebagai halaman akses terbuka yang memuat judul, informasi peneliti, abstrak, metrik dampak, serta tautan unduhan dokumen publik. Rancangan halaman detail ini melengkapi daftar riset dan pengabdian dengan informasi yang lebih lengkap bagi pengguna.
#parbreak()
#figure(
	caption:  "Desain Antarmuka Halaman Detail Riset dan Penelitian",
	kFigPlaceholder("desain halaman Detail Riset"),
)
#parbreak()
#v(1.5pt)
=== Pembuatan Prototipe Interaktif
#v(4pt)
Setelah rancangan desain setiap halaman selesai, tahap berikutnya adalah pembuatan prototipe interaktif. Prototipe ini menghubungkan antar halaman melalui tautan dan tindakan (_interaction_) sehingga menggambarkan alur penggunaan website secara menyeluruh. Prototipe interaktif memungkinkan pengguna berpindah dari halaman Beranda ke halaman daftar, membuka halaman detail, serta mengakses bagian pencarian dan navigasi sebagaimana pada penggunaan website yang sesungguhnya.
#parbreak()
Pembuatan prototipe bertujuan untuk memvalidasi alur navigasi dan memastikan rancangan dapat dioperasikan sebelum tahap implementasi. Prototipe tersebut juga menjadi sarana komunikasi antara perancang dan pihak terkait, sehingga masukan terhadap rancangan dapat disampaikan secara lebih terarah.
#parbreak()
#figure(
	caption:  "Prototipe Interaktif Website LPPM Institut Teknologi PLN",
	kFigPlaceholder("alur prototipe interaktif"),
)
#parbreak()
#v(1.5pt)
=== Evaluasi Usability dan Penyempurnaan Rancangan
#v(4pt)
Evaluasi dilakukan terhadap prototipe rancangan untuk memperoleh gambaran mengenai kemudahan penggunaan website. Evaluasi dilaksanakan dengan meninjau rancangan berdasarkan prinsip _usability_ serta melibatkan calon pengguna dalam menyelesaikan sejumlah tugas, seperti menemukan informasi penelitian tertentu, mengakses halaman detail riset, dan menemukan informasi peluang kerja sama. Selama pengujian, penguji mengamati langkah yang ditempuh pengguna serta mencatat kesulitan yang muncul.
#parbreak()
Untuk memperoleh gambaran kuantitatif mengenai persepsi pengguna terhadap kemudahan penggunaan, digunakan kuesioner _System Usability Scale_ (SUS). Kuesioner diisi oleh sejumlah responden setelah mencoba prototipe, kemudian skor dihitung dan diinterpretasikan. Kriteria dan aspek yang dievaluasi disajikan pada tabel berikut.
#parbreak()
#figure(
	caption: "Aspek Evaluasi Usability pada Rancangan Website LPPM",
	table(
		columns: (1cm, 3.6cm, 1fr),
		inset: 6pt,
		align: (center, left, left),
		table.header(
			[*No*], [*Aspek*], [*Hal yang Dinilai*]
		),
		[1], [Efektivitas], [Ketepatan pengguna dalam menemukan informasi yang dibutuhkan sesuai tugas yang diberikan],
		[2], [Efisiensi], [Jumlah langkah dan waktu yang diperlukan pengguna untuk menyelesaikan tugas],
		[3], [Kepuasan], [Persepsi pengguna terhadap kemudahan dan kenyamanan penggunaan rancangan],
		[4], [Konsistensi Navigasi], [Kejelasan struktur menu dan keajegan penempatan elemen antar halaman],
		[5], [Bantuan Pencarian], [Kemudahan penggunaan sarana pencarian dan penyaringan informasi],
	)
)
#parbreak()
Hasil evaluasi menunjukkan beberapa masukan yang kemudian digunakan sebagai dasar penyempurnaan rancangan. Penyempurnaan dilakukan pada aspek kejelasan label menu, penyederhanaan langkah menuju halaman detail, serta peningkatan keterbacaan teks dan kontras elemen antarmuka. Ringkasan hasil pengukuran SUS disajikan pada tabel berikut.
#parbreak()
#figure(
	caption: "Ringkasan Hasil Pengukuran System Usability Scale (SUS)",
	table(
		columns: (1cm, 1fr, 2.4cm, 3cm),
		inset: 6pt,
		align: (center, left, center, center),
		table.header(
			[*No*], [*Responden*], [*Skor SUS*], [*Kategori*]
		),
		[1], [Responden 1], [……], [……],
		[2], [Responden 2], [……], [……],
		[3], [Responden 3], [……], [……],
		[4], [Responden 4], [……], [……],
		[5], [Responden 5], [……], [……],
		table.cell(colspan: 2)[*Rata-rata*], [……], [……],
	)
)
// TODO: Isi tabel hasil pengukuran SUS dengan data/responden sebenarnya.
#parbreak()
#figure(
	caption:  "Hasil Evaluasi Usability dan Penyempurnaan Rancangan",
	kFigPlaceholder("grafik hasil evaluasi usability"),
)
#parbreak()
Setelah penyempurnaan dilakukan, rancangan disusun kembali dalam bentuk aset desain dan prototipe akhir yang siap dijadikan acuan pada tahap pengembangan website LPPM Institut Teknologi PLN.
