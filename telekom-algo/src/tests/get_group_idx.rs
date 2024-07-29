#[cfg(test)]
mod get_group_idx {
    use crate::menager::Menager;

    #[test]
    fn get_group_idx1() {
        let menager: Menager = Menager::random();
        assert_eq!(menager.get_group_idx(0), 0);
    }
    #[test]
    fn get_group_idx2() {
        let menager: Menager = Menager::random();
        assert_eq!(menager.get_group_idx(11), 0);
    }
    #[test]
    fn get_group_idx3() {
        let menager: Menager = Menager::random();
        assert_eq!(menager.get_group_idx(12), 1);
    }
    #[test]
    fn get_group_idx4() {
        let menager: Menager = Menager::random();
        assert_eq!(menager.get_group_idx(35), 1);
    }
    #[test]
    fn get_group_idx5() {
        let menager: Menager = Menager::random();
        assert_eq!(menager.get_group_idx(36), 2);
    }
    #[test]
    fn get_group_idx6() {
        let menager: Menager = Menager::random();
        assert_eq!(menager.get_group_idx(47), 2);
    }
    #[test]
    fn get_group_idx7() {
        let menager: Menager = Menager::random();
        assert_eq!(menager.get_group_idx(48), 3);
    }
    #[test]
    fn get_group_idx8() {
        let menager: Menager = Menager::random();
        assert_eq!(menager.get_group_idx(71), 3);
    }
    #[test]
    #[should_panic(expected = "Index out of range exception!")]
    fn get_group_idx9() {
        let menager: Menager = Menager::random();
        menager.get_group_idx(72);
    }
}
