#import "../config.typ" : *
#import "../metadata.typ" : *
#import "../utils/strfmt.typ" : strfmt
#import "@preview/titleize:0.1.1": titlecase

#set page(
	paper: "a4",
	margin: kMargin,
	background: if kDebug == true { image("../slicing/002.pdf") }
)
#set align(center)
#set text(
	font: "Arial", 
	weight: "bold",
	size: 14pt,
	fill: kColor,
)
#set par(
	leading: 1em + 0.275pt,
)
#v(3pt)
#upper()[
	laporan pelaksanaan kerja magang \
	#strfmt("di {0} {1}", kOrgLppm, kTitle) \
]
#strfmt("({periode})", periode: kInternshipPeriode)
#v(1em + 8.5pt)
#upper()[
	#text(size: 16pt, kTitle) 
	#v(1pt)
	#image(
		"../assets/itpln-logo.png",
		width: 4.5cm,
		height: 4.5cm,
	)
]
#text(weight: "regular")[
	#v(-0.475em)
	Diajukan guna memenuhi persyaratan mata kuliah Kerja Magang Program Studi Strata Satu #titlecase(kFaculty)\
	#v(0.375em)
	#titlecase("disusun oleh:") \
]
#upper()[
	#v(0.375em)
	#underline(kName) \
	#strfmt("nim : {0}", kStudentId) \ \
	#v(0.925em)
	#par(leading: 1.5em + 1.15pt)[
		#strfmt("program studi {0} {1}", kDegree, kMajor) \
		#strfmt("fakultas {0}", kFaculty) \
		#kInstitute \
		#kCity #kBaseYear
	]
]