#import "../config.typ" : *
#import "../metadata.typ" : *
#import "@preview/titleize:0.1.1": *

#set page(
	paper: "a4",
	margin: kMargin,
	background: if kDebug == true { image("../slicing/011.pdf") }
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

= bab V\ PENUTUP

#set heading(numbering: "1.1")

#set figure(
  numbering: (..n) => {
    let h = counter(heading).get().at(0)
    let f = n.pos().first()
    [#h.#f]
  }
)

#counter(heading).update((5))
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
== Kesimpulan
#v(4pt)
Kegiatan kerja magang yang dilaksanakan pada LPPM Institut Teknologi PLN menghasilkan rancangan UI/UX website yang berorientasi pada peningkatan _usability_. Berdasarkan proses dan hasil pelaksanaan kegiatan, dapat disimpulkan beberapa hal sebagai berikut.
#block(inset: (left: 2em))[
	+ Perancangan UI/UX website LPPM Institut Teknologi PLN dilaksanakan melalui tahapan _User-Centered Design_, mulai dari analisis kondisi website dan kebutuhan pengguna, penyusunan arsitektur informasi dan navigasi, pembuatan _wireframe_, perancangan desain antarmuka, pembuatan prototipe interaktif, hingga evaluasi dan penyempurnaan rancangan.
	+ Hasil analisis menunjukkan bahwa permasalahan utama pada website LPPM berkaitan dengan struktur penyajian informasi, kemudahan pencarian informasi, serta penyajian daftar penelitian dan pengabdian kepada masyarakat yang belum disertai halaman detail yang memadai. Permasalahan tersebut menjadi dasar dalam perumusan kebutuhan pengguna dan penyusunan prioritas perancangan.
	+ Rancangan yang dihasilkan meliputi _design system_ berisi pedoman warna, tipografi, ikon, dan komponen antarmuka, serta desain antarmuka untuk halaman Beranda, Riset & Pengabdian, Prototipe & Produk Inovasi, Mitra & Konsorsium, Pengumuman, dan Detail Riset dan Penelitian. Rancangan tersebut disertai prototipe interaktif yang menggambarkan alur penggunaan website.
	+ Penerapan prinsip _usability_ dan identitas visual institusi dilakukan secara konsisten melalui _design system_, sehingga rancangan antarmuka menjadi lebih terstruktur, konsisten, dan selaras dengan identitas Institut Teknologi PLN.
	+ Evaluasi terhadap rancangan menghasilkan masukan yang digunakan untuk menyempurnakan desain, khususnya pada aspek kejelasan navigasi, penyederhanaan langkah menuju halaman detail, serta peningkatan keterbacaan dan kontras elemen antarmuka.
	+ Secara keseluruhan, tujuan kegiatan magang dapat tercapai, yaitu menghasilkan rekomendasi rancangan UI/UX website LPPM Institut Teknologi PLN yang dapat dijadikan acuan dalam pengembangan website dengan penyajian informasi yang lebih mudah diakses oleh sivitas akademika dan masyarakat umum.
]
#parbreak()
#v(1.5pt)
== Saran
#v(4pt)
Berdasarkan hasil pelaksanaan kegiatan magang, terdapat beberapa saran yang dapat dipertimbangkan oleh pihak-pihak terkait.
#block(inset: (left: 2em))[
	+ *Bagi LPPM Institut Teknologi PLN* \
		Rancangan yang dihasilkan dapat dimanfaatkan sebagai acuan dalam pengembangan atau penyempurnaan website LPPM. Pengembangan dapat dilanjutkan pada tahap implementasi dengan memanfaatkan aset desain dan prototipe interaktif yang telah disusun. Selain itu, pengelolaan konten secara berkala serta evaluasi _usability_ secara berkelanjutan perlu dilakukan agar kualitas website tetap terjaga sesuai kebutuhan pengguna.
	+ *Bagi Pengembangan Website* \
		_Design system_ yang telah disusun dapat dikembangkan menjadi pustaka komponen (_component library_) pada tahap implementasi agar konsistensi tampilan tetap terjaga dan proses pengembangan menjadi lebih efisien. Integrasi data penelitian dan pengabdian kepada masyarakat dengan sistem pengelolaan data yang digunakan LPPM juga perlu diperhatikan agar penyajian informasi pada website dapat diperbarui secara terarah.
	+ *Bagi Pembaca dan Penelitian Selanjutnya* \
		Hasil perancangan ini dapat dijadikan referensi dalam memahami proses perancangan UI/UX website, khususnya pada lembaga penelitian dan pengabdian kepada masyarakat di lingkungan perguruan tinggi. Penelitian selanjutnya dapat melanjutkan tahap evaluasi dengan jumlah responden yang lebih banyak, pengujian pada perangkat dan ukuran layar yang beragam, serta peninjauan pada aspek aksesibilitas agar rancangan dapat digunakan oleh pengguna dengan kebutuhan yang beragam.
]
