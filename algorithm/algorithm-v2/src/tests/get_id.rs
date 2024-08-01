#[cfg(test)]
mod get_id {
    use crate::machine::Machine;

    #[test]
    fn get_id0() {
        let mut r: i32 = 1;
        for i in 1..=144 {
            assert_eq!(Machine::get_id(i), r);
            if i % 12 == 0 {
                r = 0;
            }
            r += 1;
        }
    }

    #[test]
    fn get_id1() {
        let result = Machine::get_id(1);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id2() {
        let result = Machine::get_id(12);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id3() {
        let result = Machine::get_id(13);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id4() {
        let result = Machine::get_id(24);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id5() {
        let result = Machine::get_id(25);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id6() {
        let result = Machine::get_id(36);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id7() {
        let result = Machine::get_id(37);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id8() {
        let result = Machine::get_id(48);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id9() {
        let result = Machine::get_id(49);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id10() {
        let result = Machine::get_id(60);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id11() {
        let result = Machine::get_id(61);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id12() {
        let result = Machine::get_id(72);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id13() {
        let result = Machine::get_id(73);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id14() {
        let result = Machine::get_id(84);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id15() {
        let result = Machine::get_id(85);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id16() {
        let result = Machine::get_id(96);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id17() {
        let result = Machine::get_id(97);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id18() {
        let result = Machine::get_id(108);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id19() {
        let result = Machine::get_id(109);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id20() {
        let result = Machine::get_id(120);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id21() {
        let result = Machine::get_id(121);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id22() {
        let result = Machine::get_id(132);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_id23() {
        let result = Machine::get_id(133);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_id24() {
        let result = Machine::get_id(144);
        assert_eq!(result, 12);
    }
}
