open Tyxml
open Printf

type data = {
    title: (string [@default "Hello JSON"]);
    names: string list;
  } [@@deriving yojson]

let hello name = Html.pcdata @@ sprintf "Hello %s!" name

let page {title;names} =
  let title_ = title in
  let open Html in
  html (head (title (pcdata title_))
             [link ~rel:[`Stylesheet] ~href:"hello.css" ()])
       (body @@ List.map hello names)

let render html =
  let fmt = Format.std_formatter in
  Html.pp () fmt html

let () =
  let json = "{names: ['foo', 'bar', 'baz'], extra: 'ok'}" in
  match data_of_yojson @@ Yojson.Safe.from_string json with
  | Ok data -> render @@ page data
  | Error err -> prerr_endline err
