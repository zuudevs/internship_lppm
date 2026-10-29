#let kDebug = false
#let kColor = if kDebug == true { red } else { black }
#let kMargin = (
	top: 3.5cm,
	left: 4cm,
	bottom: 2.5cm,
	right: 2cm
);

// Placeholder gambar. Dipakai sebagai isi #figure(...) selama aset gambar
// (tangkapan layar / diagram) belum tersedia, agar penomoran Gambar x.y dan
// Daftar Gambar tetap berjalan. Ganti dengan image("...") bila aset sudah ada.
// Catatan: jangan set `kind` secara eksplisit; biarkan Typst mendeteksi otomatis
// (kind image) agar cocok dengan outline target figure.where(kind: image).
#let kFigPlaceholder(label, height: 6cm) = align(center, box(
	width: 100%,
	height: height,
	stroke: 0.8pt + rgb("#9aa0b1"),
	fill: rgb("#f4f5f9"),
	radius: 4pt,
	inset: 8pt,
	align(center + horizon, text(size: 10pt, style: "italic", fill: rgb("#6b7280"))[
		Placeholder gambar: #label
	])
))