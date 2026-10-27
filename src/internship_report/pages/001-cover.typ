#import "../config.typ" : *
#import "../metadata.typ" : *
#import "../utils/strfmt.typ" : strfmt

#set page(
	paper: "a4",
	margin: kMargin,
	background: if kDebug == true { image("../slicing/001.pdf") }
)

#set align(center)
#set text(
	font: "Arial", 
	weight: "bold",
	size: 14pt,
	fill: kColor,
)
#set par(
	leading: 1em + 1pt,
)
#image(
	"../assets/itpln-logo.png",
	width: 4.5cm,
	height: 4.5cm,
	scaling: "smooth"
)
#v(1pt)
#upper()[
	laporan kerja magang \
	#v(2.5em + 3.25pt)
	#par(leading: 1.15em)[ #text(size: 16pt, kTitle) \ ]
	#v(3em + 0.5pt)
	#text(weight: "regular", "disusun oleh:") \
	#v(5.5pt)
	#underline(kName) \
	#v(0.375em)
	#strfmt("nim : {0}", kStudentId)
	#v(8em)
	#par(leading: 1.5em + 1.25pt)[
		#strfmt("program studi {0} {1}", kDegree, kMajor) \
		#strfmt("fakultas {0}", kFaculty) \
		#kInstitute \
		#kCity #kBaseYear
	]
]