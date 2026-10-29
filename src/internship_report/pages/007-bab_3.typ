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

// Judul bab tidak dinomori; penomoran sub-bab diaktifkan setelah judul bab.
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

= bab III\ METODE PELAKSANAAN KEGIATAN

#set heading(numbering: "1.1")

#set figure(
  numbering: (..n) => {
    let h = counter(heading).get().at(0)
    let f = n.pos().first()
    [#h.#f]
  }
)

// Izinkan figure bertipe tabel untuk terpecah antar halaman agar ruang
// kosong di akhir halaman berkurang.
#show figure.where(kind: table): set block(breakable: true)

#counter(heading).update((3))
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
== Rencana Kegiatan
#v(4pt)
Rencana kegiatan disusun untuk memastikan pelaksanaan kerja magang berjalan secara terarah dan sesuai dengan tujuan yang telah ditetapkan. Bagian ini menjelaskan langkah-langkah kerja yang dilakukan dalam perancangan UI/UX website LPPM Institut Teknologi PLN serta lokasi pelaksanaan kegiatan magang.
#parbreak()
#v(1.5pt)
=== Rencana Kegiatan (Langkah-Langkah Kerja)
#v(4pt)
Perancangan UI/UX website LPPM Institut Teknologi PLN dilaksanakan dengan pendekatan _User-Centered Design_ (UCD), yaitu pendekatan perancangan yang menempatkan kebutuhan pengguna sebagai dasar dalam setiap tahapan perancangan @garrett2011elements. Pendekatan ini dipilih karena permasalahan utama yang diangkat berkaitan dengan kemudahan penggunaan (_usability_), sehingga proses perancangan perlu dimulai dari pemahaman terhadap kebutuhan dan perilaku pengguna, bukan semata dari aspek tampilan. Tahapan kerja dalam pendekatan ini sejalan dengan prinsip _Design Thinking_, yaitu proses perancangan yang bersifat iteratif dan berpusat pada pengguna @norman2013design.
#parbreak()
Sebagai gambaran umum, tahapan perancangan yang dilakukan ditunjukkan pada gambar berikut.
#parbreak()
#figure(
	caption:  "Tahapan Perancangan UI/UX Website LPPM Institut Teknologi PLN",
	kFigPlaceholder("diagram tahapan User-Centered Design / Design Thinking"),
)
#parbreak()
Langkah-langkah utama yang dilaksanakan selama kegiatan magang adalah sebagai berikut.
#block(inset: (left: 2em))[
	+ *Tahap Pemahaman (_Empathize dan Discover_)* \
		Melakukan observasi terhadap website LPPM Institut Teknologi PLN yang sedang digunakan, menelusuri struktur menu dan penyajian informasi, serta mengumpulkan informasi mengenai kebutuhan pengguna. Tahap ini juga mencakup studi pembanding terhadap website lembaga penelitian dan pengabdian kepada masyarakat pada perguruan tinggi lain sebagai bahan pertimbangan desain.
	+ *Tahap Perumusan Masalah (_Define_)* \
		Mengidentifikasi permasalahan antarmuka dan _usability_ yang dihadapi pengguna, merumuskan kebutuhan informasi, serta menyusun gambaran pengguna (_user persona_) sebagai dasar penentuan prioritas perancangan.
	+ *Tahap Penyusunan Ide dan Struktur (_Ideate_)* \
		Menyusun struktur informasi (_sitemap_), navigasi, dan alur penggunaan (_user flow_) website, kemudian membuat _wireframe_ sebagai kerangka awal tata letak setiap halaman.
	+ *Tahap Perancangan dan Prototipe (_Prototype_)* \
		Merancang desain antarmuka beresolusi tinggi (_high-fidelity_) pada perangkat perancangan Figma, meliputi penyusunan _design system_ (warna, tipografi, ikon, dan komponen antarmuka), perancangan tampilan setiap halaman, serta pembuatan prototipe interaktif.
	+ *Tahap Pengujian (_Test_)* \
		Melakukan evaluasi terhadap rancangan yang dihasilkan untuk memperoleh gambaran mengenai kemudahan penggunaan, baik melalui peninjauan (_review_) bersama pembimbing maupun pengujian kepada calon pengguna.
	+ *Tahap Penyempurnaan dan Dokumentasi* \
		Menyempurnakan rancangan berdasarkan masukan yang diperoleh, mendokumentasikan aset desain, serta menyusun laporan hasil kegiatan magang. Tahapan ini bersifat iteratif sehingga penyempurnaan dapat dilakukan apabila ditemukan kebutuhan perbaikan pada tahap sebelumnya.
]
#parbreak()
Rencana dan realisasi pelaksanaan tahapan tersebut dijadwalkan dalam rentang waktu kegiatan magang sebagaimana disajikan pada Tabel 1.1. Setiap tahapan saling berkaitan, dengan hasil dari satu tahapan menjadi masukan bagi tahapan berikutnya.
#parbreak()
#v(1.5pt)
=== Lokasi Kegiatan Magang
#v(4pt)
Kegiatan kerja magang dilaksanakan pada instansi berikut.
#block(inset: (left: 2em))[
	- *Nama Instansi*: #titlecase(kInstitute) (#upper(kOrgLppm))
	- *Alamat Instansi*: Jl. Lingkar Luar Barat, Duri Kosambi, Cengkareng, Jakarta Barat 11750
	- *Unit/Bagian Tempat Magang*: Lembaga Penelitian dan Pengabdian kepada Masyarakat (LPPM), unit pengelola sistem informasi dan website
	- *Periode Pelaksanaan*: #kInternshipPeriode
]
// TODO: Sesuaikan alamat lengkap dan unit kerja dengan data resmi tempat magang.
#parbreak()
Kegiatan magang dilaksanakan secara terintegrasi dengan kegiatan pengelolaan informasi dan pengembangan sarana digital LPPM. Pelaksanaan kegiatan melibatkan koordinasi dengan Pembimbing Lapangan serta pihak-pihak terkait di lingkungan LPPM untuk memperoleh data dan masukan yang dibutuhkan dalam perancangan.

#v(1.5pt)
== Pelaksanaan Kegiatan
#v(4pt)
Pelaksanaan kegiatan magang mencakup bentuk dan bidang kerja, prosedur kerja, catatan kegiatan harian dalam bentuk _log book_, serta kendala yang dihadapi beserta solusi yang dilakukan. Uraian pada bagian ini memberikan gambaran mengenai pelaksanaan kegiatan perancangan UI/UX website LPPM Institut Teknologi PLN secara aktual.
#parbreak()
#v(1.5pt)
=== Bentuk dan Bidang Kerja
#v(4pt)
Bentuk kerja utama dalam pelaksanaan kegiatan magang ini adalah perancangan _User Interface_ (UI) dan _User Experience_ (UX) website, yang berada pada bidang perancangan pengalaman pengguna dan pengembangan produk digital. Penulis ditempatkan pada #upper(kOrgLppm) #titlecase(kInstitute), khususnya pada unit yang menangani pengelolaan sistem informasi dan website LPPM.
#parbreak()
Pekerjaan yang dilaksanakan berpusat pada perancangan UI/UX website LPPM Institut Teknologi PLN, mulai dari analisis kondisi website dan kebutuhan pengguna, penyusunan struktur informasi, pembuatan _wireframe_, perancangan desain antarmuka menggunakan Figma, pembuatan prototipe interaktif, hingga evaluasi terhadap rancangan yang dihasilkan. Bidang kerja ini relevan dengan konsentrasi keilmuan Program Studi Teknik Informatika karena melibatkan penerapan pengetahuan pada bidang perancangan antarmuka, interaksi manusia dan komputer, serta perancangan sistem informasi berbasis web.
#parbreak()
Selama pelaksanaan magang, penulis mengikuti ketentuan kerja yang berlaku di lingkungan instansi, meliputi kedisiplinan waktu, etika komunikasi, serta pelaporan berkala kepada Pembimbing Lapangan. Pelaksanaan kegiatan juga menuntut koordinasi dengan pihak yang berkaitan dengan pengelolaan data dan konten website agar rancangan yang dihasilkan sesuai dengan kebutuhan dan ketersediaan informasi.
#parbreak()
#v(1.5pt)
=== Prosedur Kerja
#v(4pt)
Prosedur kerja dalam pelaksanaan kegiatan magang ini mengacu pada tahapan _User-Centered Design_, sehingga setiap kegiatan dilaksanakan secara sistematis mulai dari pemahaman kebutuhan pengguna hingga evaluasi rancangan. Ringkasan prosedur kerja tersebut disajikan pada tabel berikut.
#parbreak()
#figure(
	caption: "Prosedur Pelaksanaan Perancangan UI/UX Website LPPM Institut Teknologi PLN",
	{
		set text(size: 11pt)
		table(
			columns: (2.9cm, 1fr, 1fr, 1.6fr),
			inset: 5pt,
			align: (left, left, left, left),
			table.header(
				[*Tahapan*], [*Tujuan Pelaksanaan*], [*Pihak Terkait*], [*Tata Cara Pelaksanaan*]
			),
			[Analisis Kondisi dan Kebutuhan Pengguna],
			[Memahami kondisi website yang ada serta mengidentifikasi kebutuhan dan permasalahan pengguna.],
			[Pembimbing Lapangan dan pengelola konten LPPM],
			[Observasi langsung terhadap website, penelusuran struktur menu dan konten, wawancara dengan pihak terkait, serta pencatatan kebutuhan pengguna.],
			[Perumusan Masalah dan Struktur],
			[Menentukan prioritas permasalahan antarmuka dan menyusun kerangka informasi yang lebih mudah diakses.],
			[Pembimbing Lapangan dan pengelola konten LPPM],
			[Penyusunan _user persona_, _sitemap_, alur penggunaan (_user flow_), dan penentuan prioritas konten tiap halaman.],
			[Pembuatan _Wireframe_],
			[Menghasilkan kerangka tata letak halaman sebagai dasar perancangan.],
			[Pembimbing Lapangan],
			[Pembuatan _wireframe_ beresolusi rendah untuk setiap halaman utama dan peninjauan bersama pembimbing.],
			[Perancangan Desain UI/UX],
			[Menghasilkan rancangan antarmuka yang informatif, konsisten, dan sesuai identitas institusi.],
			[Pembimbing Lapangan dan pengelola konten LPPM],
			[Penyusunan _design system_ dan perancangan desain _high-fidelity_ setiap halaman pada perangkat perancangan Figma.],
			[Pembuatan Prototipe dan Evaluasi],
			[Memvalidasi alur interaksi dan kemudahan penggunaan rancangan.],
			[Pembimbing Lapangan dan calon pengguna],
			[Pembuatan prototipe interaktif, pelaksanaan evaluasi _usability_, pencatatan masukan, serta penyempurnaan rancangan.],
		)
	}
)
#parbreak()
Secara umum, prosedur kerja dilaksanakan melalui koordinasi berkala dengan Pembimbing Lapangan. Setiap tahapan melibatkan peninjauan kembali (_review_) agar rancangan yang dihasilkan tetap sejalan dengan kebutuhan pengguna dan identitas institusi. Hasil dari setiap tahapan didokumentasikan sebagai bagian dari penyusunan laporan kerja magang.
#parbreak()
#v(1.5pt)
=== Log Book Kegiatan
#v(4pt)
Selama pelaksanaan kegiatan magang, penulis mencatat kegiatan yang dilakukan dalam bentuk _log book_. _Log book_ tersebut mencatat aktivitas harian maupun mingguan yang berkaitan dengan tahapan perancangan UI/UX website LPPM Institut Teknologi PLN. Ringkasan _log book_ kegiatan disajikan pada tabel berikut.
#parbreak()
#figure(
	caption: "Log Book Kegiatan Perancangan UI/UX Website LPPM Institut Teknologi PLN",
	{
		set text(size: 11pt)
		table(
			columns: (0.8cm, 2.5cm, 1fr, 1.7cm),
			inset: 4pt,
			align: (center, left, left, center),
			table.header(
				[*No*], [*Tanggal*], [*Kegiatan*], [*Bukti*]
			),
			[1], [1 #sym.dash 4 September 2026], [Pengenalan lingkungan kerja, arahan Pembimbing Lapangan, dan observasi awal website LPPM.], [……],
			[2], [7 #sym.dash 11 September 2026], [Analisis kondisi website yang digunakan serta inventarisasi menu dan konten.], [……],
			[3], [14 #sym.dash 18 September 2026], [Wawancara pihak terkait, identifikasi kebutuhan pengguna, dan studi pembanding.], [……],
			[4], [21 #sym.dash 25 September 2026], [Penyusunan _user persona_ dan perumusan permasalahan _usability_.], [……],
			[5], [28 September #sym.dash 2 Oktober 2026], [Penyusunan arsitektur informasi (_sitemap_) dan alur penggunaan (_user flow_).], [……],
			[6], [5 #sym.dash 9 Oktober 2026], [Pembuatan _wireframe_ untuk setiap halaman utama website.], [……],
			[7], [12 #sym.dash 16 Oktober 2026], [Penyusunan _design system_ (warna, tipografi, ikon, dan komponen).], [……],
			[8], [19 #sym.dash 23 Oktober 2026], [Perancangan desain _high-fidelity_ halaman Beranda dan Riset & Pengabdian.], [……],
			[9], [26 #sym.dash 30 Oktober 2026], [Perancangan desain halaman Prototipe & Inovasi, Mitra, Pengumuman, dan Detail Riset.], [……],
			[10], [2 #sym.dash 6 November 2026], [Pembuatan prototipe interaktif dan penyusunan alur navigasi antar halaman.], [……],
			[11], [9 #sym.dash 13 November 2026], [Pelaksanaan evaluasi _usability_ dan pengumpulan masukan terhadap rancangan.], [……],
			[12], [16 #sym.dash 20 November 2026], [Penyempurnaan rancangan berdasarkan hasil evaluasi dan masukan pembimbing.], [……],
			[13], [23 #sym.dash 27 November 2026], [Dokumentasi aset desain dan penyusunan laporan kerja magang.], [……],
		)
	}
)
// TODO: Ganti isi tabel log book di atas dengan catatan kegiatan resmi (tanggal,
// uraian, dan bukti dokumen) sesuai log book yang telah diisi selama magang.
#parbreak()
#v(1.5pt)
=== Kendala dan Solusi
#v(4pt)
Pelaksanaan kegiatan magang tidak terlepas dari berbagai kendala, baik yang bersifat teknis maupun non-teknis. Identifikasi kendala dan upaya penyelesaiannya disajikan sebagai berikut.
#block(inset: (left: 2em))[
	+ *Ketersediaan dan Keragaman Data Konten* \
		Website LPPM memuat beragam jenis informasi, seperti data penelitian, pengabdian kepada masyarakat, publikasi, dan informasi program, yang tersebar pada berbagai sumber. Kondisi tersebut menyulitkan penyusunan struktur informasi yang konsisten. Upaya penyelesaian yang dilakukan adalah menginventarisasi jenis konten dan menyusun pengelompokan informasi berdasarkan kebutuhan pengguna, sehingga setiap halaman memiliki cakupan informasi yang jelas.
	+ *Keterbatasan Referensi Perilaku Pengguna* \
		Pada tahap awal, belum tersedia data perilaku pengguna yang terdokumentasi, sehingga kebutuhan pengguna perlu disusun berdasarkan hasil observasi dan wawancara. Solusi yang dilakukan adalah memanfaatkan studi pembanding terhadap website lembaga sejenis serta menyusun _user persona_ sebagai dasar pengambilan keputusan perancangan.
	+ *Konsistensi Tampilan Antar Halaman* \
		Jumlah halaman yang cukup banyak berpotensi menimbulkan ketidakkonsistenan pada elemen antarmuka. Untuk mengatasi hal tersebut, disusun _design system_ berisi pedoman warna, tipografi, dan komponen antarmuka yang digunakan secara berulang, sehingga tampilan antar halaman tetap konsisten.
	+ *Penyesuaian dengan Identitas Visual Institusi* \
		Rancangan perlu selaras dengan identitas visual Institut Teknologi PLN. Upaya yang dilakukan adalah menggunakan logo dan prinsip identitas visual institusi secara konsisten serta menyesuaikan pemilihan warna dan tipografi dengan karakter visual institusi.
	+ *Keterbatasan Tahap Implementasi* \
		Kegiatan magang berfokus pada tahap analisis dan perancangan UI/UX, sedangkan implementasi sistem secara menyeluruh berada di luar lingkup kegiatan. Untuk menjaga keberlanjutan, rancangan disusun dalam bentuk aset desain dan prototipe interaktif yang dapat dijadikan acuan pada tahap pengembangan selanjutnya.
]
