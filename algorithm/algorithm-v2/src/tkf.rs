use std::fmt::Display;

use crate::color::Color;

#[derive(Debug)]
pub enum Tkf {
    Red,
    Green,
    Blue,
    Yellow,
    White,
    Gray,
    Brown,
    Purple,
    Orange,
    Black,
    Pink,
    LightBlue,
}

impl Tkf {
    pub fn get(idx: usize) -> Self {
        match idx {
            0 => Tkf::Red,
            1 => Tkf::Green,
            2 => Tkf::Blue,
            3 => Tkf::Yellow,
            4 => Tkf::White,
            5 => Tkf::Gray,
            6 => Tkf::Brown,
            7 => Tkf::Purple,
            8 => Tkf::Orange,
            9 => Tkf::Black,
            10 => Tkf::Pink,
            11 => Tkf::LightBlue,
            _ => panic!("Index out of range!"),
        }
    }
}

impl Color for Tkf {}

impl Display for Tkf {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{}",
            match self {
                Tkf::Red => "Red",
                Tkf::Green => "Green",
                Tkf::Blue => "Blue",
                Tkf::Yellow => "Yellow",
                Tkf::White => "White",
                Tkf::Gray => "Gray",
                Tkf::Brown => "Brown",
                Tkf::Purple => "Purple",
                Tkf::Orange => "Orange",
                Tkf::Black => "Black",
                Tkf::Pink => "Pink",
                Tkf::LightBlue => "LightBlue",
            }
        )
    }
}
