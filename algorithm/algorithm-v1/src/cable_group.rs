use crate::cable::Cable;

#[derive(Debug)]
pub struct CableGroup {
    pub cables: Vec<Cable>,
}
impl CableGroup {
    pub fn new() -> Self {
        Self { cables: Vec::new() }
    }
    pub fn from(cables: Vec<Cable>) -> Self {
        let count = cables.len();

        if count != 12 && count != 24 {
            panic!(
                "CableGroup must contain either 12 or 24 items, but found {} items",
                count
            );
        }

        Self { cables }
    }
    pub fn len(&self) -> usize {
        self.cables.len()
    }
}
