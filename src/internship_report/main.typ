#import "config.typ" : *
#import "utils/strfmt.typ" : strfmt

#set page(
  paper: "a4",
  margin: kMargin,
)
#set text(lang: "id")

#show heading.where(level: 1): it => {
  set text(size: 14pt)
	set align(center)
	set block(below: 1em)
  show text: upper
  it.body
}

#show outline.entry.where(level: 1): it => {
  set align(left)
  set text(font: "Arial", size: 12pt)
	set block(below: 1em + 1pt)
  show text: upper
	show regex("\s*\n\s*"): ""
  it
  v(-0.05em)
}

#show outline.entry.where(level: 2): it => {
  set align(left)
  set text(font: "Arial", size: 12pt)
	set block(below: 1em + 1pt)
	show regex("\s*\n\s*"): ""
	show regex("\w+"): word => {
    let chars = word.text.clusters()
    if chars.len() > 0 {
      let first = upper(chars.at(0))
      let rest = lower(chars.slice(1).join(""))
      first + rest
    } else {
      word.text
    }
  }
  it
  v(-0.05em)
}

#show outline.entry.where(level: 3): it => {
  set align(left)
  set text(font: "Arial", size: 12pt)
	set block(below: 1em + 1pt)
	show regex("\s*\n\s*"): ""
	show regex("\w+"): word => {
    let chars = word.text.clusters()
    if chars.len() > 0 {
      let first = upper(chars.at(0))
      let rest = lower(chars.slice(1).join(""))
      first + rest
    } else {
      word.text
    }
  }
	pad(left: -0.5em, it)
  v(-0.05em)
}

#include "pages/001-cover.typ"
#include "pages/002-laporan_pelaksanaan.typ"
#include "pages/003-lembar_pengesahan.typ"
#include "pages/004-ucapan_terimakasih.typ"

#v(13pt)
#heading(
	level: 1, 
	numbering: none, 
	outlined: true, 
	upper("Daftar Isi")
)
#v(-0.6pt)

#outline(title: none)
#pagebreak()
#v(13pt)
#heading(
	level: 1, 
	numbering: none, 
	outlined: true, 
	upper("Daftar Tabel")
)
#v(-0.6pt)

#outline(
  title: none,
	target: figure.where(kind: table)
)
#pagebreak()
#v(13pt)
#heading(
	level: 1, 
	numbering: none, 
	outlined: true, 
	upper("Daftar Gambar")
)
#v(-0.6pt)

#outline(
  title: none,
	target: figure.where(kind: image)
)
#pagebreak()
#v(13pt)
#heading(
	level: 1, 
	numbering: none, 
	outlined: true, 
	upper("Daftar Lampiran")
)
#v(-0.6pt)

#outline(
  title: none,
	target: figure.where(kind: "attachment")
)

#include "pages/005-bab_1.typ"
#include "pages/006-bab_2.typ"
#include "pages/007-bab_3.typ"
#include "pages/008-bab_4.typ"
#include "pages/009-bab_5.typ"
#bibliography("assets/cites.bib")