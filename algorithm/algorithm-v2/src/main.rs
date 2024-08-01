use std::io::stdin;

use algorithm::machine::Machine;

fn main() {
    println!("Unesite broj vlakna: ");

    let n: i32 = take_int();

    let cable = Machine::get(n).unwrap();
    cable.write(n);
}

fn take_int() -> i32 {
    let mut input = String::new();
    stdin().read_line(&mut input).unwrap();
    input.trim().parse().unwrap()
}
