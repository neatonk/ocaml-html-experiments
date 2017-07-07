open Tyxml

let hello = Html.pcdata "Hello World!"

let page =
  let open Html in
  html (head (title (pcdata "Hello"))
             [link ~rel:[`Stylesheet] ~href:"hello.css" ()])
       (body [hello])


let () =
  let fmt = Format.std_formatter in
  Html.pp () fmt page
