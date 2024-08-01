use std::fmt::Display;

use crate::color::Color;

#[derive(Debug)]
pub enum Tia {
    Blue,
    Orange,
    Green,
    Brown,
    Gray,
    White,
    Red,
    Black,
    Yellow,
    Purple,
    Pink,
    LightBlue,
}

impl Tia {
    pub fn get(idx: usize) -> Self {
        match idx {
            0 => Tia::Blue,
            1 => Tia::Orange,
            2 => Tia::Green,
            3 => Tia::Brown,
            4 => Tia::Gray,
            5 => Tia::White,
            6 => Tia::Red,
            7 => Tia::Black,
            8 => Tia::Yellow,
            9 => Tia::Purple,
            10 => Tia::Pink,
            11 => Tia::LightBlue,
            _ => panic!("Index out of range!"),
        }
    }
}

impl Color for Tia {}

impl Display for Tia {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{}",
            match self {
                Tia::Red => "Red",
                Tia::Green => "Green",
                Tia::Blue => "Blue",
                Tia::Yellow => "Yellow",
                Tia::White => "White",
                Tia::Gray => "Gray",
                Tia::Brown => "Brown",
                Tia::Purple => "Purple",
                Tia::Orange => "Orange",
                Tia::Black => "Black",
                Tia::Pink => "Pink",
                Tia::LightBlue => "LightBlue",
            }
        )
    }
}
