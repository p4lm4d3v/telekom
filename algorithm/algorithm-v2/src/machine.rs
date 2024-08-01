use crate::{cable::Cable, tia::Tia};

#[derive(Default)]
pub struct Machine {}

impl Machine {
    pub fn get(n: i32) -> Option<Cable<Tia>> {
        let row: i32 = Machine::get_row(n);
        let id: i32 = Machine::get_id(n);
        let color: Tia = Tia::get((id - 1) as usize);
        Some(Cable::new(row, id, color))
    }
    pub fn get_row(n: i32) -> i32 {
        (n - 1) / 12 + 1
    }
    pub fn get_id(n: i32) -> i32 {
        if n % 12 == 0 {
            12
        } else {
            n % 12
        }
    }
}
