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
            0 => Tkf::Blue,
            1 => Tkf::Orange,
            2 => Tkf::Green,
            3 => Tkf::Brown,
            4 => Tkf::Gray,
            5 => Tkf::White,
            6 => Tkf::Red,
            7 => Tkf::Black,
            8 => Tkf::Yellow,
            9 => Tkf::Purple,
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
