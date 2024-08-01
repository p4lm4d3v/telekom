#[cfg(test)]
mod get_row {
    use crate::machine::Machine;

    #[test]
    fn get_row0() {
        let mut r: i32 = 1;
        for i in 1..=144 {
            assert_eq!(Machine::get_row(i), r);
            if i % 12 == 0 {
                r += 1;
            }
        }
    }

    #[test]
    fn get_row1() {
        let result = Machine::get_row(1);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_row2() {
        let result = Machine::get_row(12);
        assert_eq!(result, 1);
    }

    #[test]
    fn get_row3() {
        let result = Machine::get_row(13);
        assert_eq!(result, 2);
    }

    #[test]
    fn get_row4() {
        let result = Machine::get_row(24);
        assert_eq!(result, 2);
    }

    #[test]
    fn get_row5() {
        let result = Machine::get_row(25);
        assert_eq!(result, 3);
    }

    #[test]
    fn get_row6() {
        let result = Machine::get_row(36);
        assert_eq!(result, 3);
    }

    #[test]
    fn get_row7() {
        let result = Machine::get_row(37);
        assert_eq!(result, 4);
    }

    #[test]
    fn get_row8() {
        let result = Machine::get_row(48);
        assert_eq!(result, 4);
    }

    #[test]
    fn get_row9() {
        let result = Machine::get_row(49);
        assert_eq!(result, 5);
    }

    #[test]
    fn get_row10() {
        let result = Machine::get_row(60);
        assert_eq!(result, 5);
    }

    #[test]
    fn get_row11() {
        let result = Machine::get_row(61);
        assert_eq!(result, 6);
    }

    #[test]
    fn get_row12() {
        let result = Machine::get_row(72);
        assert_eq!(result, 6);
    }

    #[test]
    fn get_row13() {
        let result = Machine::get_row(73);
        assert_eq!(result, 7);
    }

    #[test]
    fn get_row14() {
        let result = Machine::get_row(84);
        assert_eq!(result, 7);
    }

    #[test]
    fn get_row15() {
        let result = Machine::get_row(85);
        assert_eq!(result, 8);
    }

    #[test]
    fn get_row16() {
        let result = Machine::get_row(96);
        assert_eq!(result, 8);
    }

    #[test]
    fn get_row17() {
        let result = Machine::get_row(97);
        assert_eq!(result, 9);
    }

    #[test]
    fn get_row18() {
        let result = Machine::get_row(108);
        assert_eq!(result, 9);
    }

    #[test]
    fn get_row19() {
        let result = Machine::get_row(109);
        assert_eq!(result, 10);
    }

    #[test]
    fn get_row20() {
        let result = Machine::get_row(120);
        assert_eq!(result, 10);
    }

    #[test]
    fn get_row21() {
        let result = Machine::get_row(121);
        assert_eq!(result, 11);
    }

    #[test]
    fn get_row22() {
        let result = Machine::get_row(132);
        assert_eq!(result, 11);
    }

    #[test]
    fn get_row23() {
        let result = Machine::get_row(133);
        assert_eq!(result, 12);
    }

    #[test]
    fn get_row24() {
        let result = Machine::get_row(144);
        assert_eq!(result, 12);
    }
}
