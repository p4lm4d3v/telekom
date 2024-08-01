use crate::{cable::Cable, cable_group::CableGroup};

#[derive(Debug)]
pub struct Menager {
    pub groups: Vec<CableGroup>,
}
impl Menager {
    fn from(groups: Vec<CableGroup>) -> Self {
        Self { groups }
    }
    pub fn random() -> Self {
        Menager::from(vec![
            CableGroup::from(vec![
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
            ]),
            CableGroup::from(vec![
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
            ]),
            CableGroup::from(vec![
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
            ]),
            CableGroup::from(vec![
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
                Cable::random(),
            ]),
        ])
    }
    fn get_points(&self) -> Vec<usize> {
        let mut points: Vec<usize> = vec![0];
        for (i, group) in self.groups.iter().enumerate() {
            points.push(points[i] + group.len());
        }
        points
    }
    pub fn get_group_idx(&self, idx: usize) -> usize {
        let points = self.get_points();
        if idx >= *points.last().unwrap() {
            panic!("Index out of range exception!");
        }

        let mut group_idx: usize = 0;
        for i in 1..points.len() {
            let bottom = points[i - 1];
            let top = points[i];

            if idx >= bottom && idx < top {
                group_idx = i - 1;
                break;
            }
        }

        group_idx
    }
    pub fn get_cable(&self, idx: usize) -> &Cable {
        let points = self.get_points();
        let group_idx: usize = self.get_group_idx(idx);

        let in_group_idx: usize = idx - points[group_idx];

        &self.groups[group_idx].cables[in_group_idx]
    }
}
