#[cfg(test)]
mod get_cable {
    use crate::menager::Menager;

    #[test]
    fn get_cable1() {
        let menager: Menager = Menager::random();
        let cable = menager.get_cable(0);
        dbg!("{:?}", cable);
        assert_eq!(
            format!("{:?}", cable),
            format!("{:?}", &menager.groups[0].cables[0])
        );
    }
    #[test]
    fn get_cable2() {
        let menager: Menager = Menager::random();
        let cable = menager.get_cable(11);
        dbg!("{:?}", cable);
        assert_eq!(
            format!("{:?}", cable),
            format!("{:?}", &menager.groups[0].cables[11])
        );
    }
    #[test]
    fn get_cable3() {
        let menager: Menager = Menager::random();
        let cable = menager.get_cable(12);
        dbg!("{:?}", cable);
        assert_eq!(
            format!("{:?}", cable),
            format!("{:?}", &menager.groups[1].cables[0])
        );
    }
    #[test]
    fn get_cable4() {
        let menager: Menager = Menager::random();
        let cable = menager.get_cable(35);
        dbg!("{:?}", cable);
        assert_eq!(
            format!("{:?}", cable),
            format!("{:?}", &menager.groups[1].cables[23])
        );
    }
    #[test]
    fn get_cable5() {
        let menager: Menager = Menager::random();
        let cable = menager.get_cable(36);
        dbg!("{:?}", cable);
        assert_eq!(
            format!("{:?}", cable),
            format!("{:?}", &menager.groups[2].cables[0])
        );
    }
    #[test]
    fn get_cable6() {
        let menager: Menager = Menager::random();
        let cable = menager.get_cable(47);
        dbg!("{:?}", cable);
        assert_eq!(
            format!("{:?}", cable),
            format!("{:?}", &menager.groups[2].cables[11])
        );
    }
    #[test]
    fn get_cable7() {
        let menager: Menager = Menager::random();
        let cable = menager.get_cable(48);
        dbg!("{:?}", cable);
        assert_eq!(
            format!("{:?}", cable),
            format!("{:?}", &menager.groups[3].cables[0])
        );
    }
    #[test]
    fn get_cable8() {
        let menager: Menager = Menager::random();
        let cable = menager.get_cable(71);
        dbg!("{:?}", cable);
        assert_eq!(
            format!("{:?}", cable),
            format!("{:?}", &menager.groups[3].cables[23])
        );
    }
    #[test]
    #[should_panic(expected = "Index out of range exception!")]
    fn get_cable9() {
        let menager: Menager = Menager::random();
        menager.get_cable(72);
    }
}
