use std::io::stdin;

use algorithm::machine::Machine;

fn main() {
    println!("Unesite broj vlakna: ");

    let n: i32 = take_int();

    let cable = Machine::get(n).unwrap();
    cable.write();
}

fn take_int() -> i32 {
    // Declare string
    let mut input = String::new();

    // Input string
    stdin().read_line(&mut input).unwrap();

    // Return number
    input.trim().parse().unwrap()
}
