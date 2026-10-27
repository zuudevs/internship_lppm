#import "../config.typ" : *
#import "../metadata.typ" : *
#import "../utils/strfmt.typ" : strfmt
#import "@preview/titleize:0.1.1": titlecase

// Set Default Page

#set page(
	paper: "a4",
	margin: kMargin,
	background: if kDebug == true { image("../slicing/003.pdf") }
)

#set align(center)
#set text(
	font: "Arial", 
	weight: "bold",
	size: 12pt,
	fill: kColor
)
#set par(
	spacing: 8pt, 
	leading: 1em,
)

#show heading.where(level: 1): set text(size: 12pt)

#upper()[
	#v(1em + 0.75pt)
	= Lembar Pengesahan
	#v(-4pt)
	#strfmt("laporan pelaksanaan kerja magang di {0} {1}", kOrgLppm, kTitle) \
	#strfmt("({0})", kInternshipPeriode)
	#v(3.425em)
	#kTitle \
]
#text(weight: "regular", titlecase("disusun oleh"))
#upper()[
	#v(1em + 0.125pt)
	#underline(kName) \
	#kStudentId
	#v(3.25em + 2pt)
]
#text(weight: "regular")[
	Telah diperiksa dan disetujui oleh pembimbing \
	pada tanggal :
	#v(2em + 0.75pt)
	#grid(
		columns: (1fr, 1fr),
		rows: (auto, 6em + 2.3pt, auto, 5em + 2.25pt, auto, 6em + 2pt, auto),
		align: (center, center),
		[#titlecase("pembimbing lapangan")], 
		[#titlecase("dosen pembimbing magang")],
		[], [], 
		grid.cell(colspan: 2)[],
		[#kEmployeeDict.at(0).name], 
		[	#v(-1pt)
			#par(leading: 1.1em)[
				#kEmployeeDict.at(1).name \ 
				NIP. #kEmployeeDict.at(1).nidn
			]
		],
		grid.cell(colspan: 2)[
			#v(-0.25pt)
			#par(leading: 1em + 0.125pt)[
				#titlecase()[
					Mengetahui, \
					Kepala Program Studi \
					#kDegree #kMajor 
				]
			]
		], 
		grid.cell(colspan: 2)[],
		grid.cell(
			colspan: 2, 
			inset: (top: 0.25pt)
		)[
			#kEmployeeDict.at(2).name \ NIP. #kEmployeeDict.at(2).nidn
		]
	)
]