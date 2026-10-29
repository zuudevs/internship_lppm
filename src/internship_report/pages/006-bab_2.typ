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

// Nonaktifkan penomoran untuk judul bab (level 1) agar tidak muncul angka
// liar di Daftar Isi; penomoran sub-bab diaktifkan kembali setelah judul bab.
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

= bab II\ GAMBARAN UMUM Organisasi/PROYEK

#set heading(numbering: "1.1")

#set figure(
  numbering: (..n) => {
    let h = counter(heading).get().at(0)
    let f = n.pos().first()
    [#h.#f]
  }
)

#counter(heading).update((2))
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
== Sejarah Singkat Organisasi
#v(4pt)
Lembaga Penelitian dan Pengabdian kepada Masyarakat (LPPM) merupakan salah satu unit di lingkungan Institut Teknologi PLN (ITPLN) yang berperan dalam mendukung pelaksanaan Tridharma Perguruan Tinggi, khususnya pada bidang penelitian dan pengabdian kepada masyarakat. Keberadaan LPPM menjadi bagian penting dalam mendorong pengembangan ilmu pengetahuan dan teknologi, meningkatkan kualitas penelitian dosen, serta mengimplementasikan hasil penelitian untuk memberikan manfaat bagi masyarakat. @itpln:priyaningrum_sistem_2016
#parbreak()
Berdasarkan dokumen akademik yang tersedia di repositori Institut Teknologi PLN, LPPM telah menjalankan kegiatan penelitian dan pengabdian kepada masyarakat ketika institusi masih bernama Sekolah Tinggi Teknik PLN (STT-PLN). Pada periode tersebut, LPPM berperan dalam mengelola kegiatan penelitian dosen, termasuk proses pengajuan proposal, penilaian penelitian, dan pelaksanaan kegiatan pengabdian kepada masyarakat. Hal ini menunjukkan bahwa fungsi LPPM telah menjadi bagian dari upaya institusi dalam mendukung kegiatan akademik dan penerapan ilmu pengetahuan bagi masyarakat.
#parbreak()
Seiring dengan perkembangan institusi menjadi Institut Teknologi PLN, peran LPPM terus menjadi bagian dari pengembangan kegiatan penelitian dan pengabdian kepada masyarakat. Kegiatan yang dilaksanakan mencakup fasilitasi program penelitian, pengembangan publikasi ilmiah, serta pelaksanaan program pengabdian yang melibatkan dosen dan mahasiswa. Salah satu bentuk kegiatan tersebut adalah program Student Research yang diselenggarakan oleh LPPM bersama Bagian Kegiatan Mahasiswa dan Konseling. Program ini memberikan kesempatan kepada mahasiswa untuk mengembangkan ide penelitian melalui proses seleksi dan penilaian proposal. @itpln:student_research2
#parbreak()
Pengembangan kegiatan penelitian juga tercermin dalam capaian Institut Teknologi PLN pada bidang riset dan publikasi ilmiah. Pada November 2025, ITPLN mengumumkan pencapaian Klaster Utama dalam pemeringkatan SINTA untuk tahun 2026, setelah sebelumnya berada pada Klaster Madya. Capaian tersebut menunjukkan adanya perkembangan kinerja penelitian dan publikasi ilmiah di lingkungan institusi yang turut didukung oleh upaya penguatan budaya riset. @itpln:budaya_riset_dan_publikasi_ilmiah
#parbreak()
Dalam pelaksanaan tugasnya, LPPM Institut Teknologi PLN juga didukung oleh pengelolaan informasi melalui website resmi yang dapat diakses oleh sivitas akademika dan masyarakat. Website tersebut menjadi salah satu sarana untuk menyampaikan informasi mengenai kegiatan, program, publikasi, dan berbagai hal yang berkaitan dengan penelitian serta pengabdian kepada masyarakat. Dengan demikian, keberadaan website memiliki peran penting dalam mendukung penyebaran informasi dan mempermudah akses pengguna terhadap informasi yang disediakan oleh LPPM.
#parbreak()
Sejalan dengan perkembangan teknologi informasi, pengelolaan website LPPM perlu memperhatikan aspek kemudahan penggunaan, kejelasan navigasi, dan keteraturan penyajian informasi. Oleh karena itu, perancangan UI/UX website LPPM Institut Teknologi PLN menjadi salah satu upaya yang dapat dilakukan untuk mendukung penyampaian informasi secara lebih efektif dan meningkatkan pengalaman pengguna dalam mengakses layanan informasi digital.
#v(1.5pt)
== Profil Umum Organisasi
#v(4pt)
Lembaga Penelitian dan Pengabdian kepada Masyarakat (LPPM) merupakan unit organisasi di lingkungan Institut Teknologi PLN (ITPLN) yang berperan dalam mendukung pelaksanaan Tridharma Perguruan Tinggi, khususnya pada bidang penelitian dan pengabdian kepada masyarakat. LPPM menjadi salah satu unsur pendukung pengembangan ilmu pengetahuan dan teknologi melalui kegiatan penelitian, pelaksanaan program pengabdian kepada masyarakat, serta pengembangan dan penyebarluasan hasil penelitian. Keberadaan LPPM tercantum dalam struktur organisasi Institut Teknologi PLN sebagai salah satu unit yang mendukung pelaksanaan kegiatan akademik dan pengembangan institusi @itpln:struktur_organisasi. 
#parbreak()
Dalam menjalankan tugasnya, LPPM Institut Teknologi PLN memiliki beberapa bidang pengembangan, yaitu pengembangan penelitian, pengembangan pengabdian kepada masyarakat, Hak Kekayaan Intelektual (HKI) dan inkubasi, serta pengembangan publikasi dan penerbitan. Pembagian tersebut menunjukkan bahwa kegiatan LPPM tidak hanya berfokus pada pelaksanaan penelitian, tetapi juga mencakup pengembangan hasil penelitian, perlindungan kekayaan intelektual, dan penyebarluasan karya ilmiah. Susunan bidang tersebut dapat dilihat pada halaman struktur organisasi resmi Institut Teknologi PLN @itpln:struktur_organisasi.
#parbreak()
Dalam mendukung pelaksanaan kegiatan penelitian dan pengabdian kepada masyarakat, LPPM berperan sebagai bagian dari lingkungan akademik yang mendorong dosen dan mahasiswa untuk berpartisipasi dalam kegiatan ilmiah dan pengembangan inovasi. Kegiatan penelitian dan pengabdian tersebut menjadi bagian dari upaya perguruan tinggi dalam menerapkan ilmu pengetahuan dan teknologi serta memberikan kontribusi bagi masyarakat. Peran ini sejalan dengan kedudukan LPPM dalam struktur organisasi Institut Teknologi PLN dan kegiatan penelitian yang dilaksanakan di lingkungan institusi @itpln:struktur_organisasi,@itpln:student_research2.
#parbreak()
Untuk menunjang penyampaian informasi, LPPM Institut Teknologi PLN memiliki website resmi yang dapat diakses melalui alamat https://lppm.itpln.ac.id/. Website tersebut menyediakan informasi terkait LPPM serta menjadi salah satu media digital yang dapat dimanfaatkan oleh sivitas akademika dan masyarakat untuk memperoleh informasi mengenai kegiatan dan program yang berkaitan dengan penelitian dan pengabdian kepada masyarakat. Pada website tersebut juga tersedia informasi kontak dan akses menuju berbagai layanan yang berkaitan dengan lingkungan kampus @itpln:lppm.
#parbreak()
Seiring dengan pemanfaatan website sebagai media informasi digital, aspek tampilan antarmuka, struktur navigasi, dan kemudahan akses informasi menjadi hal yang perlu diperhatikan. Website yang memiliki penyajian informasi terstruktur dapat membantu pengguna menemukan informasi yang dibutuhkan secara lebih mudah. Oleh karena itu, perancangan *User Interface* (UI) dan *User Experience* (UX) pada website LPPM Institut Teknologi PLN menjadi fokus kegiatan magang ini, dengan tujuan menghasilkan rekomendasi rancangan antarmuka yang lebih terstruktur, konsisten, dan berorientasi pada kebutuhan pengguna.
#v(1.5pt)
=== Visi dan Misi Organisasi
#v(4pt)
LPPM Institut Teknologi PLN merupakan unit yang mendukung pelaksanaan kegiatan penelitian dan pengabdian kepada masyarakat di lingkungan Institut Teknologi PLN. Dalam menjalankan perannya, LPPM mendukung pencapaian visi dan misi institusi, khususnya dalam pengembangan ilmu pengetahuan, penelitian, publikasi ilmiah, penerapan teknologi, dan pemberian manfaat bagi masyarakat. Oleh karena itu, visi dan misi Institut Teknologi PLN menjadi landasan institusional yang relevan bagi pelaksanaan kegiatan LPPM @itpln:visi_dan_misi.
#block(inset: (left: 2em))[
	- Visi \
		Menjadi Perguruan Tinggi yang berkelas internasional serta unggul di bidang energi dan penerapan teknologi yang berwawasan lingkungan @itpln:visi_dan_misi.
	- Misi \
		#block(inset: (top: -0.5em))[Misi Institut Teknologi PLN yang relevan dengan pelaksanaan tugas LPPM adalah sebagai berikut:]
		- Menyelenggarakan kegiatan pendidikan akademik, vokasi, dan profesi dengan tata kelola yang berstandar internasional.
		- Menyelenggarakan penelitian (riset) dan publikasi ilmiah pada bidang-bidang keilmuan yang relevan, berdasarkan integritas akademik, etika, dan tanggung jawab, dengan orientasi pada pengembangan ilmu pengetahuan, penerapan teknologi, nilai tambah lingkungan, serta kesejahteraan umat manusia.
		- Menyelenggarakan kegiatan pengabdian kepada masyarakat yang bertujuan memberikan manfaat dan nilai tambah bagi masyarakat maupun lingkungan.
		- Mendorong inovasi berkelanjutan untuk menciptakan keunggulan dan daya saing institusi serta bangsa Indonesia.
		- Membangun kolaborasi dengan industri dan pemangku kepentingan lainnya pada tingkat nasional maupun internasional untuk meningkatkan kualitas dan kontribusi institusi di tingkat global.
		- Membangun kekuatan dan kemandirian sumber daya Institut Teknologi PLN guna mendukung keberlangsungan Tridharma Perguruan Tinggi, peningkatan kualitas, serta pengembangan akademik, sarana, dan prasarana @itpln:visi_dan_misi.
]
#v(1.5pt)
=== Filosofi dan Makna Logo Organisasi
#v(4pt)
Logo merupakan salah satu elemen identitas visual yang digunakan untuk merepresentasikan karakter, identitas, dan citra suatu organisasi. Dalam lingkungan Institut Teknologi PLN (ITPLN), logo berfungsi sebagai identitas institusi yang digunakan dalam berbagai media komunikasi, baik cetak maupun digital. Penggunaan logo secara konsisten bertujuan untuk menjaga keseragaman identitas visual dan membangun citra institusi yang profesional. Institut Teknologi PLN menyediakan panduan identitas visual sebagai acuan dalam penggunaan logo dan merek institusi pada berbagai media (Institut Teknologi PLN, n.d.).
#parbreak()
#align(center, figure(
	caption:  "Logo Institut Teknologi PLN",
	alt: " Website resmi Institut Teknologi PLN, https://itpln.ac.id/brand-guidelines.html",
	image(
	"../assets/brand-guidelines.png", width: 50%)
))
LPPM Institut Teknologi PLN merupakan bagian dari Institut Teknologi PLN sehingga identitas visual institusi induk menjadi acuan yang relevan dalam penyajian identitas organisasi. Dalam konteks perancangan UI/UX website LPPM, penggunaan logo perlu memperhatikan proporsi, warna, ukuran, dan penempatan yang sesuai dengan panduan identitas visual resmi. Penerapan identitas visual secara konsisten pada website dapat membantu menjaga keselarasan tampilan antarmuka dengan identitas institusi serta memberikan pengalaman visual yang lebih profesional kepada pengguna.
#parbreak()
Filosofi logo Institut Teknologi PLN perlu dipahami berdasarkan pedoman resmi identitas visual yang diterbitkan oleh institusi. Oleh karena itu, dalam perancangan website LPPM, logo digunakan sebagai elemen identitas utama tanpa mengubah bentuk maupun karakter visualnya. Penempatan logo pada bagian website juga perlu mempertimbangkan keterbacaan, keseimbangan tata letak, dan konsistensi desain agar identitas institusi tetap terlihat jelas pada berbagai ukuran layar.
#v(1.5pt)
=== Lingkup Pekerjaan
#v(4pt)
Lembaga Penelitian dan Pengabdian kepada Masyarakat (LPPM) Institut Teknologi PLN merupakan unit yang berperan dalam mendukung pelaksanaan Tridharma Perguruan Tinggi, khususnya dalam bidang penelitian dan pengabdian kepada masyarakat. Lingkup pekerjaan LPPM mencakup pengelolaan, koordinasi, fasilitasi, serta pengembangan kegiatan penelitian dan pengabdian kepada masyarakat yang dilaksanakan oleh sivitas akademika Institut Teknologi PLN. Kegiatan tersebut bertujuan untuk mendorong pengembangan ilmu pengetahuan dan teknologi serta menghasilkan kontribusi yang bermanfaat bagi masyarakat dan lingkungan.
#parbreak()
Secara umum, lingkup pekerjaan LPPM Institut Teknologi PLN meliputi beberapa bidang berikut.
#block(inset: (left: 2em))[
	+ *Pengelolaan Kegiatan Penelitian* \
		LPPM mendukung pelaksanaan kegiatan penelitian di lingkungan Institut Teknologi PLN, mulai dari fasilitasi pengajuan proposal, koordinasi pelaksanaan penelitian, hingga pemantauan hasil penelitian. Kegiatan ini bertujuan untuk mendorong dosen dan peneliti dalam menghasilkan karya ilmiah serta mengembangkan ilmu pengetahuan dan teknologi, khususnya yang berkaitan dengan bidang energi dan teknologi.
	+ *Pengelolaan Kegiatan Pengabdian kepada Masyarakat* \
		LPPM mendukung pelaksanaan program pengabdian kepada masyarakat yang melibatkan dosen dan mahasiswa. Kegiatan ini diarahkan pada penerapan ilmu pengetahuan dan teknologi untuk membantu menyelesaikan permasalahan di masyarakat serta memberikan manfaat sosial, ekonomi, dan lingkungan.
	+ *Pengembangan Publikasi dan Penerbitan Ilmiah* \
		LPPM berperan dalam mendukung penyebarluasan hasil penelitian melalui publikasi ilmiah. Lingkup kegiatan ini berkaitan dengan peningkatan kualitas publikasi, penyebaran hasil penelitian, serta penguatan budaya akademik dan riset di lingkungan Institut Teknologi PLN.
	+ *Pengelolaan Hak Kekayaan Intelektual dan Inkubasi* \
		LPPM turut mendukung pengembangan dan perlindungan hasil inovasi melalui kegiatan yang berkaitan dengan Hak Kekayaan Intelektual (HKI). Selain itu, kegiatan inkubasi dapat menjadi sarana untuk mendorong pengembangan hasil penelitian dan inovasi agar memiliki potensi penerapan serta nilai tambah.
	+ *Koordinasi Program dan Pendanaan Penelitian* \
		LPPM mendukung koordinasi program penelitian, termasuk fasilitasi informasi mengenai hibah dan peluang pendanaan penelitian. Kegiatan ini membantu dosen dan peneliti memperoleh informasi serta mengikuti program penelitian yang sesuai dengan ketentuan yang berlaku.
	+ *Penyebarluasan Informasi dan Dokumentasi Kegiatan* \
		LPPM menyediakan dan menyebarluaskan informasi mengenai program, kegiatan, publikasi, serta hasil penelitian dan pengabdian kepada masyarakat. Pemanfaatan website resmi menjadi salah satu sarana untuk mendukung akses informasi bagi dosen, mahasiswa, peneliti, dan masyarakat umum.
]
Melalui lingkup pekerjaan tersebut, LPPM Institut Teknologi PLN berperan dalam mendukung pengembangan kegiatan penelitian dan pengabdian kepada masyarakat secara terarah. Pelaksanaan fungsi tersebut juga memerlukan dukungan pengelolaan informasi yang baik agar berbagai program, hasil penelitian, dan kegiatan pengabdian dapat diketahui serta diakses oleh pihak yang berkepentingan.
#v(1.5pt)
=== Portofolio #upper(kOrgLppm + " " + kInstitute)
#v(4pt)
Portofolio LPPM Institut Teknologi PLN mencerminkan kontribusi lembaga dalam mendukung kegiatan penelitian dan pengabdian kepada masyarakat di lingkungan institusi. Portofolio tersebut meliputi pelaksanaan penelitian yang didanai melalui berbagai skema hibah, kegiatan pengabdian kepada masyarakat yang berorientasi pada penerapan teknologi, perolehan Hak Kekayaan Intelektual (HKI), serta penyebarluasan hasil penelitian melalui publikasi ilmiah. Capaian tersebut menunjukkan bahwa LPPM berperan sebagai fasilitator dan penggerak kegiatan ilmiah bagi dosen maupun mahasiswa.
#parbreak()
Salah satu bentuk kegiatan yang dikelola LPPM adalah penyelenggaraan program penelitian bagi mahasiswa, seperti program _Student Research_ yang dilaksanakan bersama Bagian Kegiatan Mahasiswa dan Konseling. Melalui program tersebut, mahasiswa memperoleh kesempatan untuk mengembangkan ide penelitian melalui proses seleksi dan penilaian proposal @itpln:student_research2. Selain itu, penguatan budaya riset di lingkungan Institut Teknologi PLN tercermin dari capaian pemeringkatan SINTA pada Klaster Utama, yang menunjukkan adanya peningkatan kinerja penelitian dan publikasi ilmiah @itpln:budaya_riset_dan_publikasi_ilmiah.
#parbreak()
Portofolio kegiatan pengabdian kepada masyarakat diarahkan pada penerapan ilmu pengetahuan dan teknologi untuk memberikan manfaat bagi masyarakat. Kegiatan ini mencakup penerapan teknologi tepat guna, pendampingan masyarakat, serta program yang mendukung kemandirian dan kesejahteraan, khususnya pada bidang energi dan lingkungan. Seluruh informasi mengenai program, kegiatan, dan hasil pelaksanaan penelitian serta pengabdian tersebut disampaikan kepada publik melalui website resmi LPPM Institut Teknologi PLN @itpln:lppm.
#parbreak()
#figure(
	caption:  "Portofolio Penelitian dan Publikasi Ilmiah LPPM Institut Teknologi PLN",
	kFigPlaceholder("portofolio penelitian dan publikasi"),
)
#parbreak()
#figure(
	caption:  "Portofolio Pengabdian kepada Masyarakat dan Hilirisasi Hasil Inovasi LPPM Institut Teknologi PLN",
	kFigPlaceholder("portofolio pengabdian kepada masyarakat"),
)
#parbreak()
Portofolio yang dimiliki LPPM menjadi salah satu bahan pertimbangan dalam perancangan website. Informasi mengenai penelitian, publikasi, pengabdian, serta hasil inovasi perlu disajikan secara terstruktur agar pengguna dapat memahami cakupan kegiatan LPPM dan menemukan informasi yang dibutuhkan. Oleh karena itu, penyajian portofolio pada website menjadi salah satu aspek yang diperhatikan dalam perancangan UI/UX yang dilakukan pada kegiatan magang ini.

#v(1.5pt)
== Struktur Organisasi
#v(4pt)
Struktur organisasi merupakan kerangka formal yang menggambarkan kedudukan, tugas, dan hubungan kerja antar unit dalam suatu organisasi. Pada bagian ini diuraikan struktur organisasi Institut Teknologi PLN secara umum, struktur organisasi LPPM sebagai unit tempat pelaksanaan kegiatan magang, serta posisi mahasiswa dalam struktur tersebut. Uraian ini bertujuan memberikan gambaran mengenai konteks kelembagaan yang melatarbelakangi perancangan UI/UX website LPPM Institut Teknologi PLN.
#parbreak()
#v(1.5pt)
=== Struktur Organisasi Institut Teknologi PLN
#v(4pt)
Institut Teknologi PLN merupakan perguruan tinggi yang dipimpin oleh Rektor dan dibantu oleh Wakil Rektor dalam menjalankan fungsi akademik maupun non-akademik. Dalam struktur organisasi institusi, LPPM berada pada ranah non-akademik yang mendukung pelaksanaan Tridharma Perguruan Tinggi, khususnya pada bidang penelitian dan pengabdian kepada masyarakat. Kedudukan LPPM sebagai salah satu unit di lingkungan Institut Teknologi PLN tercantum dalam struktur organisasi resmi institusi @itpln:struktur_organisasi.
#parbreak()
#figure(
	caption:  "Struktur Organisasi Institut Teknologi PLN",
	kFigPlaceholder("struktur organisasi institusi (bagian terkait LPPM)"),
)
#parbreak()
#v(1.5pt)
=== Struktur Organisasi Unit Kerja LPPM
#v(4pt)
LPPM Institut Teknologi PLN dipimpin oleh seorang Ketua LPPM yang bertanggung jawab atas penyelenggaraan kegiatan penelitian dan pengabdian kepada masyarakat. Dalam melaksanakan tugasnya, Ketua LPPM dibantu oleh seorang Sekretaris serta beberapa unsur pengelola yang menangani bidang penelitian, pengabdian kepada masyarakat, Hak Kekayaan Intelektual (HKI) dan inkubasi, serta publikasi dan penerbitan. Selain itu, terdapat staf administrasi yang mendukung kelancaran operasional kegiatan LPPM.
#parbreak()
Untuk menunjang penyampaian informasi dan layanan digital, LPPM memiliki pengelola sistem informasi dan website yang bertanggung jawab atas pengelolaan serta pengembangan sarana informasi digital LPPM. Unit inilah yang menjadi tempat pelaksanaan kegiatan magang dalam perancangan UI/UX website LPPM Institut Teknologi PLN. Susunan unit kerja tersebut dapat dilihat pada gambar berikut.
#parbreak()
#figure(
	caption:  "Struktur Organisasi Unit Kerja LPPM Institut Teknologi PLN",
	kFigPlaceholder("struktur organisasi unit kerja LPPM"),
)
#parbreak()
#v(1.5pt)
=== Posisi Mahasiswa dalam Struktur
#v(4pt)
Mahasiswa ditempatkan pada unit pengelola sistem informasi dan website di lingkungan LPPM Institut Teknologi PLN. Penempatan tersebut berkaitan langsung dengan proyek perancangan UI/UX website LPPM, sehingga mahasiswa memperoleh kesempatan untuk menerapkan pengetahuan di bidang perancangan antarmuka dan pengalaman pengguna pada lingkungan kerja yang nyata. Dalam pelaksanaannya, mahasiswa diarahkan dan dibimbing oleh Pembimbing Lapangan yang memberikan arahan teknis serta mengawasi jalannya kegiatan.
#parbreak()
#figure(
	caption:  "Posisi Mahasiswa dalam Struktur Organisasi LPPM Institut Teknologi PLN",
	kFigPlaceholder("posisi mahasiswa dalam struktur organisasi"),
)
#parbreak()

#v(1.5pt)
== Deskripsi Tugas
#v(4pt)
Bagian ini menjelaskan tugas utama dari masing-masing bagian pada unit kerja LPPM, khususnya yang berkaitan dengan pengelolaan informasi dan pengembangan website, serta uraian mengenai posisi dan tugas mahasiswa selama pelaksanaan kegiatan magang.
#parbreak()
#v(1.5pt)
=== Tugas Masing-Masing Bagian pada Unit Kerja LPPM
#v(4pt)
Secara umum, unit kerja LPPM Institut Teknologi PLN menjalankan fungsi-fungsi yang saling berkaitan dalam mendukung pelaksanaan penelitian dan pengabdian kepada masyarakat. Tugas masing-masing bagian tersebut adalah sebagai berikut.
#block(inset: (left: 2em))[
	+ *Pengelolaan Penelitian* \
		Bertanggung jawab dalam fasilitasi pengajuan proposal penelitian, koordinasi pelaksanaan penelitian, pemantauan hasil penelitian, serta pengelolaan informasi mengenai program dan pendanaan penelitian di lingkungan Institut Teknologi PLN.
	+ *Pengelolaan Pengabdian kepada Masyarakat* \
		Bertanggung jawab dalam fasilitasi dan koordinasi program pengabdian kepada masyarakat yang dilaksanakan oleh dosen maupun mahasiswa, termasuk pengelolaan informasi mengenai kegiatan dan hasil pelaksanaan pengabdian.
	+ *Pengelolaan Hak Kekayaan Intelektual dan Inkubasi* \
		Bertanggung jawab dalam pendampingan pengajuan Hak Kekayaan Intelektual (HKI) atas hasil penelitian dan inovasi, serta pengelolaan kegiatan inkubasi untuk mendorong pemanfaatan hasil inovasi.
	+ *Pengelolaan Publikasi dan Penerbitan* \
		Bertanggung jawab dalam mendukung penyebarluasan hasil penelitian melalui publikasi ilmiah serta pengelolaan penerbitan yang berkaitan dengan karya ilmiah.
	+ *Pengelolaan Sistem Informasi dan Website* \
		Bertanggung jawab dalam pengelolaan dan pengembangan sarana informasi digital LPPM, termasuk website resmi LPPM, penyajian konten informasi, serta integrasi data yang berkaitan dengan kegiatan penelitian dan pengabdian kepada masyarakat. Unit inilah yang menjadi tempat penempatan mahasiswa selama kegiatan magang.
]
Uraian tugas tersebut menunjukkan bahwa pengelolaan informasi digital merupakan salah satu fungsi penting dalam mendukung penyampaian informasi LPPM kepada sivitas akademika dan masyarakat umum. Oleh karena itu, kualitas tampilan dan kemudahan penggunaan website menjadi bagian yang perlu diperhatikan.
#parbreak()
#v(1.5pt)
=== Posisi dan Tugas Mahasiswa
#v(4pt)
Mahasiswa ditempatkan pada unit pengelola sistem informasi dan website LPPM dengan posisi sebagai perancang antarmuka dan pengalaman pengguna (UI/UX _Designer_). Pada posisi tersebut, mahasiswa bertanggung jawab merancang tampilan website LPPM Institut Teknologi PLN yang lebih terstruktur, konsisten, dan berorientasi pada kebutuhan pengguna. Adapun tugas dan tanggung jawab mahasiswa selama kegiatan magang meliputi:
#block(inset: (left: 2em))[
	+ *Analisis Kondisi dan Kebutuhan* \
		Melakukan observasi terhadap website LPPM yang sedang digunakan serta mengidentifikasi kebutuhan pengguna dan permasalahan antarmuka yang berpotensi menyulitkan akses informasi.
	+ *Perancangan Struktur Informasi dan Navigasi* \
		Menyusun struktur informasi, menu navigasi, serta alur penggunaan website agar informasi dapat ditemukan secara lebih mudah dan terarah.
	+ *Pembuatan Wireframe* \
		Membuat kerangka tampilan (wireframe) sebagai dasar penyusunan tata letak informasi pada setiap halaman website.
	+ *Perancangan Desain UI/UX* \
		Merancang desain antarmuka website menggunakan perangkat perancangan Figma, meliputi tata letak, tipografi, warna, ikon, dan komponen antarmuka yang sesuai dengan identitas visual Institut Teknologi PLN.
	+ *Pembuatan Prototipe Interaktif* \
		Mengembangkan prototipe interaktif untuk menggambarkan alur interaksi pengguna pada website.
	+ *Evaluasi Usability* \
		Melakukan evaluasi terhadap rancangan yang dibuat untuk memperoleh masukan mengenai kemudahan penggunaan serta melakukan penyempurnaan sesuai hasil evaluasi.
	+ *Dokumentasi dan Pendukung Pengembangan* \
		Mendokumentasikan seluruh proses perancangan dan menyiapkan aset desain yang dapat digunakan sebagai acuan pada tahap implementasi pengembangan website.
]