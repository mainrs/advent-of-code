import gleam/int
import gleam/list
import gleam/result
import gleam/string

pub fn pt_1(input: String) {
  input
  |> string.split("\n")
  |> list.map(string.to_graphemes)
  |> list.map(extract_numbers)
  |> list.reduce(int.add)
}

fn extract_numbers(characters: List(String)) -> Int {
  characters
  |> list.filter(fn(x) { result.is_ok(int.parse(x)) })
  |> string.join(with: "")
  |> int.parse
  |> result.unwrap(or: 0)
}

pub fn pt_2(input: String) {
  todo as "part 2 not implemented"
}
