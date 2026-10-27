#import "../config.typ" : *
#import "../metadata.typ" : *
#import "../utils/strfmt.typ" : strfmt
#import "@preview/titleize:0.1.1": titlecase, string-to-titlecase

#set page(
	paper: "a4",
	margin: kMargin,
	background: if kDebug == true { image("../slicing/004.pdf") }
)
#set text(
	font: "Arial", 
	weight: "bold",
	size: 12pt,
	fill: kColor
)
#set par(
	spacing: 8pt, 
	leading: 7.25pt,
	justify: true
)
#show heading.where(level: 1) : set block(
	above: 18pt, 
	below: 12pt
)
#set align(left)
#show heading.where(level: 1): set text(size: 14pt)
#show heading.where(level: 1): it => {upper(it.body)}
#v(1em + 1pt)
#align(center)[= ucapan terimakasih]
#v(4.4pt)
#text(weight: "regular", "Dengan ini saya menyampaikan penghargaan dan ucapan terimakasih yang sebesar-besarnya kepada yang terhormat:") 
#v(0.5em + 1.75pt)
#text(weight: "bold")[
	#align(center, for e in kEmployeeDict.slice(0, 2) {
		[#strfmt("{0} Selaku {1}", e.name, string-to-titlecase((e.job))) #v(7.25pt) ]
	})
]
#text(weight: "regular")[
	Yang telah memberikan petunjuk, saran-saran, serta bimbingannya sehingga laporan kerja magang ini dapat diselesaikan.
	#v(0.5em + 1.6pt)
	Terima kasih yang sama, saya sampaikan kepada: 
	// TODO: 
	\ \ \ \ \ 
	Yang telah mengizinkan untuk melakukan Kerja Magang di #strfmt("{0} {1}", string-to-titlecase(kOrgLppm), string-to-titlecase(kInstitute)). \
	#v(1fr)
	#align(right, 
	grid(
		rows: (1em, 8em, 2em + 0.125pt, auto),
		align: center,
		grid.cell(inset: (top: 1em))[#strfmt("{0}, {1}", string-to-titlecase(kCity), kDate)], 
		[],
		[#text(weight: "bold", titlecase(kName))],
		[#text(weight: "bold", titlecase(kStudentId))]
	)) 
	#v(5em)
]