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

#show heading.where(level: 1) : it => {
	show text: upper
	set align(center)
	set text(size: 14pt)
	set par(leading: 9pt)
	it
}

#show heading.where(level: 2) : it => {
	set text(size: 12pt)
	titlecase(it)
}
#v(13pt)
= bab I \ pendahuluan

#set heading(
  level: 2, 
  numbering: "1.1"
)

#set figure(
  numbering: (..n) => {
    let h = counter(heading).get().at(0)
    let f = n.pos().first()
    [#h.#f]
  }
)

#counter(heading).update((1))
#counter(figure.where(kind: table)).update(0)

#set par(
	spacing: 1.3em, 
	leading: 0.615em,
	justify: true,
	first-line-indent: (amount: 3em, all: true),
	hanging-indent: 1.75em,
)

#v(1.5pt)
== latar belakang
#v(4pt)
Perkembangan teknologi informasi dan komunikasi telah memberikan pengaruh yang signifikan terhadap berbagai aspek kehidupan, termasuk dalam bidang pendidikan tinggi. Pemanfaatan teknologi informasi menjadi salah satu upaya perguruan tinggi dalam meningkatkan kualitas pelayanan, memperluas akses informasi, serta mendukung pelaksanaan kegiatan akademik dan penelitian. Salah satu bentuk penerapan teknologi informasi tersebut adalah penggunaan website sebagai media informasi dan komunikasi antara institusi dengan mahasiswa, dosen, peneliti, maupun masyarakat umum. Website yang dirancang dengan baik tidak hanya berfungsi sebagai sarana penyampaian informasi, tetapi juga perlu memberikan pengalaman penggunaan yang mudah, efektif, dan efisien bagi penggunanya.
#parbreak()
Dalam lingkungan perguruan tinggi, Lembaga Penelitian dan Pengabdian kepada Masyarakat (LPPM) memiliki peran penting dalam mendukung pelaksanaan Tridharma Perguruan Tinggi, khususnya dalam bidang penelitian dan pengabdian kepada masyarakat. LPPM berperan dalam memfasilitasi kegiatan penelitian, mengoordinasikan program pengabdian kepada masyarakat, serta menyampaikan berbagai informasi mengenai program, publikasi, dan kegiatan yang berkaitan dengan pengembangan ilmu pengetahuan dan teknologi. Oleh karena itu, ketersediaan website LPPM yang informatif dan mudah digunakan menjadi salah satu faktor pendukung dalam penyebaran informasi serta peningkatan kualitas layanan digital kepada sivitas akademika dan masyarakat.
#parbreak()
Institut Teknologi PLN merupakan perguruan tinggi yang berfokus pada pengembangan ilmu pengetahuan dan teknologi, khususnya yang berkaitan dengan bidang ketenagalistrikan dan energi. Dalam mendukung kegiatan penelitian dan pengabdian kepada masyarakat, LPPM Institut Teknologi PLN memanfaatkan website sebagai media penyampaian informasi mengenai berbagai kegiatan dan layanan yang tersedia. Website tersebut memiliki peran strategis sebagai sumber informasi bagi dosen, peneliti, mahasiswa, dan pihak eksternal yang membutuhkan informasi terkait kegiatan penelitian maupun pengabdian kepada masyarakat.
#parbreak()
Meskipun website dapat menjadi sarana penyampaian informasi yang efektif, kualitas sebuah website tidak hanya ditentukan oleh kelengkapan informasi yang disajikan, tetapi juga oleh kemudahan pengguna dalam mengakses, memahami, dan menemukan informasi yang dibutuhkan. Aspek User Interface (UI) dan User Experience (UX) menjadi bagian penting dalam perancangan website karena berkaitan dengan tampilan antarmuka, struktur navigasi, penyusunan informasi, konsistensi elemen visual, serta kenyamanan pengguna ketika berinteraksi dengan sistem. Antarmuka yang kurang terstruktur atau navigasi yang tidak intuitif berpotensi menyebabkan pengguna mengalami kesulitan dalam menemukan informasi, memahami fungsi menu, dan menyelesaikan kebutuhan mereka melalui website.
#parbreak()
Permasalahan tersebut berkaitan erat dengan konsep usability, yaitu tingkat kemudahan suatu sistem untuk digunakan oleh pengguna dalam mencapai tujuan tertentu secara efektif, efisien, dan memuaskan. Dalam konteks website LPPM Institut Teknologi PLN, aspek usability perlu diperhatikan agar pengguna dapat mengakses informasi penelitian dan pengabdian kepada masyarakat secara lebih mudah. Evaluasi terhadap tampilan dan alur interaksi website diperlukan untuk mengetahui bagian-bagian yang berpotensi menimbulkan hambatan bagi pengguna. Hasil evaluasi tersebut dapat dijadikan dasar dalam merumuskan perbaikan desain yang berorientasi pada kebutuhan pengguna.
#parbreak()
Sebagai referensi dalam perancangan, website Lembaga Penelitian dan Pengabdian kepada Masyarakat Universitas Negeri Malang (LP2M UM) dapat dijadikan salah satu bahan studi pembanding dalam mengamati penyajian informasi dan struktur antarmuka website lembaga penelitian dan pengabdian kepada masyarakat. Studi pembanding ini dapat membantu mengidentifikasi pendekatan desain yang relevan, seperti pengelompokan informasi, penyusunan navigasi, penempatan elemen penting, serta konsistensi tampilan. Namun, penerapan pendekatan desain tersebut perlu disesuaikan dengan kebutuhan pengguna, karakteristik layanan, dan identitas visual LPPM Institut Teknologi PLN.
#parbreak()
Berdasarkan uraian tersebut, diperlukan perancangan UI/UX website LPPM Institut Teknologi PLN yang berorientasi pada peningkatan usability. Perancangan ini diarahkan untuk menghasilkan rancangan antarmuka yang lebih terstruktur, konsisten, informatif, dan mudah dipahami oleh pengguna. Proses perancangan dapat dilakukan melalui identifikasi kebutuhan pengguna, analisis kondisi website yang sedang digunakan, penyusunan struktur informasi, pembuatan _wireframe_, pengembangan desain antarmuka, serta pengujian rancangan untuk memperoleh masukan terkait kemudahan penggunaannya. Dengan demikian, hasil perancangan diharapkan dapat menjadi rekomendasi pengembangan website yang mampu meningkatkan kemudahan akses informasi dan memberikan pengalaman penggunaan yang lebih baik bagi sivitas akademika maupun masyarakat umum.
#parbreak()
Oleh karena itu, penulis mengangkat judul “Perancangan UI/UX Website untuk Meningkatkan Usability pada LPPM Institut Teknologi PLN” sebagai topik laporan kerja magang. Melalui kegiatan ini, penulis diharapkan dapat menerapkan pengetahuan dan keterampilan dalam bidang desain UI/UX untuk menghasilkan rancangan website yang sesuai dengan kebutuhan pengguna serta mendukung penyampaian informasi dan layanan LPPM Institut Teknologi PLN secara lebih optimal.
#v(0.5pt)
== ruang lingkup
#v(4pt)
Agar pembahasan dalam laporan kerja magang lebih terarah dan sesuai dengan tujuan yang ingin dicapai, ruang lingkup pada kegiatan magang ini dibatasi pada perancangan UI/UX website Lembaga Penelitian dan Pengabdian kepada Masyarakat (LPPM) Institut Teknologi PLN. Adapun ruang lingkup pembahasan dalam laporan ini adalah sebagai berikut:
#block(inset: (left: 2em))[
+ Objek Perancangan
  Objek yang menjadi fokus dalam kegiatan magang ini adalah website LPPM Institut Teknologi PLN yang digunakan sebagai media penyampaian informasi mengenai kegiatan penelitian, pengabdian kepada masyarakat, publikasi, serta informasi lain yang berkaitan dengan layanan LPPM.
+ Analisis Antarmuka Website
  Analisis dilakukan terhadap tampilan dan struktur website yang sedang digunakan, meliputi tata letak elemen, struktur navigasi, penyajian informasi, konsistensi visual, serta kemudahan pengguna dalam menemukan informasi yang dibutuhkan.
+ Perancangan User Interface (UI)
  Perancangan UI mencakup pengembangan tampilan visual website, meliputi pemilihan warna, tipografi, ikon, komponen antarmuka, tata letak, dan konsistensi desain yang disesuaikan dengan identitas Institut Teknologi PLN.
+ Perancangan User Experience (UX)
  Perancangan UX berfokus pada penyusunan struktur informasi, alur navigasi, dan interaksi pengguna agar website lebih mudah dipahami dan digunakan oleh pengunjung, khususnya dosen, peneliti, mahasiswa, serta masyarakat umum.
+ Pembuatan Desain dan Prototipe
  Hasil perancangan diwujudkan dalam bentuk _wireframe_, desain antarmuka, dan prototipe interaktif sebagai gambaran rancangan website yang dapat digunakan untuk mengevaluasi alur interaksi dan kemudahan penggunaan sebelum tahap implementasi.
+ Evaluasi Usability
  Evaluasi dilakukan untuk memperoleh gambaran mengenai kemudahan penggunaan rancangan website berdasarkan metode pengujian yang dipilih. Evaluasi dapat mencakup aspek efektivitas, efisiensi, dan kepuasan pengguna dalam menyelesaikan tugas yang berkaitan dengan akses informasi pada website.
+ Batasan Implementasi
  Pembahasan dalam laporan ini berfokus pada tahap analisis dan perancangan UI/UX website. Pengembangan sistem pada sisi _back-end_, pengelolaan basis data, integrasi sistem, serta implementasi fitur secara menyeluruh tidak menjadi fokus utama pembahasan, kecuali apabila diperlukan sebagai bagian dari kegiatan magang.
]
Dengan adanya ruang lingkup tersebut, kegiatan magang diharapkan dapat menghasilkan rancangan UI/UX website LPPM Institut Teknologi PLN yang lebih terstruktur, konsisten, dan berorientasi pada kebutuhan pengguna sehingga dapat menjadi rekomendasi untuk meningkatkan _usability_ website.
#v(0.5pt)
== tujuan dan manfaat
#v(4pt)
Tujuan dari pelaksanaan kegiatan magang dengan judul “Perancangan UI/UX Website untuk Meningkatkan Usability pada LPPM Institut Teknologi PLN” adalah sebagai berikut:
#block(inset: (left: 2em))[
	+ Menganalisis tampilan dan struktur navigasi website LPPM Institut Teknologi PLN untuk mengidentifikasi aspek antarmuka yang perlu diperbaiki dalam mendukung kemudahan penggunaan website.
	+ Merancang _User Interface_ (UI) yang informatif, konsisten, dan sesuai dengan identitas visual Institut Teknologi PLN agar penyajian informasi pada website menjadi lebih terstruktur.
	+ Merancang _User Experience_ (UX) dengan memperhatikan kebutuhan pengguna, struktur informasi, dan alur navigasi agar pengguna dapat menemukan informasi yang dibutuhkan secara lebih mudah dan efisien.
	+ Menghasilkan rancangan desain dan prototipe website sebagai gambaran pengembangan antarmuka yang dapat digunakan sebagai acuan dalam proses implementasi website LPPM Institut Teknologi PLN.
	+ Mendukung upaya peningkatan _usability_ website melalui perancangan yang berorientasi pada kebutuhan dan kemudahan pengguna.
]
Pelaksanaan kegiatan magang ini diharapkan dapat memberikan manfaat bagi beberapa pihak, yaitu sebagai berikut.
#block(inset: (left: 2em))[	
	+ Bagi Mahasiswa \
		Dengan adanya kegiatan magang ini, mahasiswa dapat menerapkan pengetahuan dan keterampilan yang telah diperoleh selama perkuliahan dalam bidang perancangan UI/UX website, mampu meningkatkan kemampuan dalam melakukan analisis kebutuhan pengguna, menyusun struktur informasi, merancang antarmuka, serta membuat prototipe desain website, menambah pengalaman dalam menyelesaikan permasalahan perancangan antarmuka pada lingkungan kerja profesional, khususnya di bidang pendidikan tinggi, serta dapat mengembangkan kemampuan berpikir kritis dan sistematis dalam merancang solusi digital yang berorientasi pada kebutuhan pengguna.
	+ Bagi LPPM Institut Teknologi PLN
		- Memperoleh rekomendasi rancangan UI/UX website yang dapat menjadi bahan pertimbangan dalam pengembangan dan penyempurnaan website LPPM Institut Teknologi PLN.
		- Mendukung penyajian informasi mengenai kegiatan penelitian dan pengabdian kepada masyarakat agar lebih terstruktur, konsisten, dan mudah diakses oleh pengguna.
		- Menjadi bahan evaluasi dalam mengidentifikasi aspek tampilan dan navigasi website yang perlu ditingkatkan untuk mendukung kualitas layanan informasi digital.
		- Mendukung pengembangan website yang lebih berorientasi pada kebutuhan pengguna sehingga dapat membantu meningkatkan kemudahan akses informasi bagi sivitas akademika dan masyarakat umum.
	+ Bagi Institut Teknologi PLN
		- Mendukung pemanfaatan teknologi informasi dalam penyampaian informasi dan pelayanan digital di lingkungan perguruan tinggi.
		- Menjadi salah satu bentuk kontribusi mahasiswa dalam memberikan rekomendasi pengembangan website yang mendukung kegiatan penelitian dan pengabdian kepada masyarakat.
		- Memperkuat penerapan pengetahuan akademik dalam penyelesaian permasalahan nyata melalui kegiatan magang yang relevan dengan bidang keilmuan.
	+ Bagi Pembaca dan Peneliti Selanjutnya
		- Menjadi sumber referensi dalam memahami proses perancangan UI/UX website, khususnya pada lembaga penelitian dan pengabdian kepada masyarakat di lingkungan perguruan tinggi.
		- Memberikan gambaran mengenai penerapan prinsip _usability_ dalam perancangan antarmuka website yang berorientasi pada kebutuhan pengguna.
		- Menjadi bahan pertimbangan bagi penelitian atau pengembangan selanjutnya yang berkaitan dengan evaluasi dan peningkatan kualitas pengalaman pengguna pada website institusi pendidikan.
]
#v(0.5pt)
== Rencana Waktu dan Penjadwalan Kerja Magang
#v(4pt)
Pelaksanaan kerja magang dalam kegiatan perancangan UI/UX website LPPM Institut Teknologi PLN direncanakan melalui beberapa tahapan kerja yang disusun secara sistematis agar kegiatan dapat berjalan sesuai dengan tujuan yang telah ditetapkan. Setiap tahapan memiliki aktivitas dan target hasil yang menjadi dasar dalam pelaksanaan kegiatan magang.
#parbreak()
Tahapan kerja magang meliputi observasi dan pengumpulan informasi, analisis website, identifikasi kebutuhan pengguna, penyusunan struktur informasi, perancangan wireframe, pengembangan desain antarmuka, pembuatan prototipe, serta evaluasi hasil rancangan. Penjadwalan dilakukan dengan mempertimbangkan urutan pelaksanaan setiap aktivitas dan keterkaitan antara satu tahapan dengan tahapan lainnya.
#parbreak()
Rencana waktu dan penjadwalan kerja magang disajikan pada tabel berikut.
#let actMatrix = (
	(title: "Observasi dan pengumpulan informasi", start: 1, end: 1),
	(title: "Analisis website yang sedang digunakan", start: 1, end: 2),
	(title: "Identifikasi kebutuhan pengguna", start: 2, end: 2),
	(title: "Penyusunan struktur informasi dan navigasi", start: 2, end: 3),
	(title: "Pembuatan wireframe", start: 3, end: 3),
	(title: "Perancangan desain UI/UX", start: 3, end: 4),
	(title: "Pembuatan prototipe interaktif", start: 4, end: 5),
	(title: "Evaluasi dan penyempurnaan rancangan", start: 5, end: 5),
	(title: "Penyusunan dokumentasi dan laporan magang", start: 5, end: 6),
)
#block(inset: (left: 2em - 2pt))[
	#figure(
		caption: "Rencana Waktu dan Penjadwalan Kerja Magang",
		table(
			columns: 8,
			table.header(
				table.cell(rowspan: 2)[*No*], 
				table.cell(rowspan: 2)[*Kegiatan*], 
				table.cell(colspan: 6)[*Minggu*],
				..range(1, 7).map(num => table.cell()[#num])
			),
			..actMatrix.enumerate().map(((idx, item)) => {(
					str(idx + 1),
					align(left, item.title),
					..range(1, 7).map(w => {
						if w >= item.start and w <= item.end {sym.checkmark}
					}
				))
			}).flatten()
		)
	)
]
Berdasarkan tabel tersebut, kegiatan magang diawali dengan observasi dan analisis terhadap website LPPM Institut Teknologi PLN untuk memperoleh gambaran mengenai kondisi antarmuka dan penyajian informasi. Tahap selanjutnya adalah mengidentifikasi kebutuhan pengguna serta menyusun struktur informasi dan navigasi yang mendukung kemudahan penggunaan website.
#parbreak()
Setelah tahap analisis selesai, kegiatan dilanjutkan dengan pembuatan wireframe sebagai kerangka awal tampilan website, kemudian pengembangan desain UI/UX yang mencakup tata letak, pemilihan warna, tipografi, dan komponen antarmuka. Desain yang telah dibuat selanjutnya dikembangkan menjadi prototipe interaktif untuk menggambarkan alur penggunaan website.
#parbreak()
Pada tahap akhir, rancangan dievaluasi dan disempurnakan berdasarkan hasil peninjauan atau masukan yang diperoleh. Seluruh proses kemudian didokumentasikan sebagai bagian dari penyusunan laporan kerja magang. Dengan adanya penjadwalan tersebut, pelaksanaan kegiatan diharapkan dapat berjalan secara terarah dan menghasilkan rancangan UI/UX website yang sesuai dengan ruang lingkup serta tujuan magang.
#v(0.5pt)
== sistematika penulisan
#v(4pt)
Sistematika penulisan Laporan Kerja Magang ini disusun berdasarkan pedoman yang berlaku dan dibagi menjadi lima bab utama. Setiap bab membahas aspek yang saling berkaitan, mulai dari pendahuluan, gambaran umum tempat pelaksanaan magang, metode pelaksanaan kegiatan, konsep teori dan penerapannya, hingga penutup. Sistematika ini disusun untuk memudahkan pembaca dalam memahami proses dan hasil kegiatan magang yang berfokus pada perancangan UI/UX website untuk meningkatkan usability pada LPPM Institut Teknologi PLN. Adapun sistematika penulisan laporan ini adalah sebagai berikut.
#block(inset: (left: 2em))[
- *BAB I PENDAHULUAN* \
	Bab ini membahas latar belakang pelaksanaan kegiatan magang yang berkaitan dengan perancangan UI/UX website LPPM Institut Teknologi PLN. Pembahasan meliputi latar belakang permasalahan, ruang lingkup kegiatan magang yang berfokus pada perancangan antarmuka dan pengalaman pengguna website, tujuan dan manfaat kegiatan magang, rencana waktu dan penjadwalan kerja magang, serta sistematika penulisan laporan.
- *BAB II GAMBARAN UMUM PERUSAHAAN/PROYEK* \
	Bab ini menjelaskan gambaran umum Institut Teknologi PLN, khususnya Lembaga Penelitian dan Pengabdian kepada Masyarakat (LPPM) sebagai tempat atau unit yang berkaitan dengan pelaksanaan kegiatan magang. Uraian mencakup profil dan sejarah singkat institusi, visi dan misi yang relevan, struktur organisasi, serta gambaran umum website LPPM Institut Teknologi PLN. Bab ini juga menjelaskan konteks proyek perancangan UI/UX website dan tugas yang dilaksanakan selama kegiatan magang.
- *BAB III METODE PELAKSANAAN KEGIATAN* \
	Bab ini memaparkan metode dan tahapan yang dilakukan selama pelaksanaan kerja magang dalam perancangan UI/UX website LPPM Institut Teknologi PLN. Pembahasan mencakup rencana dan realisasi kegiatan magang, observasi terhadap website yang sedang digunakan, analisis kebutuhan pengguna, identifikasi permasalahan antarmuka, penyusunan struktur informasi dan navigasi, pembuatan wireframe, perancangan desain menggunakan Figma, pembuatan prototipe interaktif, serta tahapan evaluasi dan penyempurnaan rancangan sesuai dengan kegiatan yang dilaksanakan.
- *BAB IV KONSEP TEORI DAN PENERAPAN* \
	Bab ini membahas landasan teori yang digunakan sebagai dasar dalam perancangan UI/UX website LPPM Institut Teknologi PLN. Konsep yang dibahas meliputi pengertian website, User Interface (UI), User Experience (UX), usability, prinsip desain antarmuka, navigasi dan arsitektur informasi, desain responsif, serta metode evaluasi usability yang relevan. Selanjutnya, bab ini menjelaskan penerapan konsep teori tersebut dalam proses perancangan, mulai dari analisis tampilan website, penyusunan struktur informasi, pembuatan wireframe, pengembangan desain antarmuka, hingga pembuatan prototipe sebagai rekomendasi pengembangan website LPPM Institut Teknologi PLN.
- *BAB V PENUTUP* \
	Bab ini merupakan bagian akhir dari laporan kerja magang yang berisi kesimpulan berdasarkan proses dan hasil perancangan UI/UX website LPPM Institut Teknologi PLN. Kesimpulan mencakup pencapaian tujuan magang serta hasil rancangan yang dihasilkan sesuai dengan ruang lingkup kegiatan. Bab ini juga memuat saran yang bersifat konstruktif bagi LPPM Institut Teknologi PLN untuk pengembangan website selanjutnya, serta bagi mahasiswa atau peneliti berikutnya yang ingin mengembangkan atau mengevaluasi kualitas UI/UX dan usability website.
]