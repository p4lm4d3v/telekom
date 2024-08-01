use std::fmt::Display;

use crate::color::Color;

#[derive(Debug)]
pub struct Cable<C: Color + Display> {
    row: i32,
    id: i32,
    color: C,
}

impl<C: Color + Display> Cable<C> {
    pub fn new(row: i32, id: i32, color: C) -> Self {
        Self { color, row, id }
    }
    pub fn write(&self) {
        println!("Red: {}", self.row);
        println!("Broj: {}", self.id);
        println!("Boja: {}", self.color);
    }
}
