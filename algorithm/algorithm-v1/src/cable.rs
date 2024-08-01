use rand::Rng;

use crate::color::Color;

#[derive(Clone, Debug)]
pub struct Cable {
    color: Color,
}
impl Cable {
    pub fn new(color: Color) -> Self {
        Self { color }
    }
    pub fn default() -> Self {
        Self {
            color: Color::White,
        }
    }
    pub fn random() -> Self {
        let mut rng = rand::thread_rng();
        let color = match rng.gen_range(0..=6) {
            0 => Color::Red,
            1 => Color::Green,
            2 => Color::Blue,
            3 => Color::Orange,
            4 => Color::Black,
            5 => Color::Pink,
            _ => Color::White,
        };
        Self { color }
    }
}
