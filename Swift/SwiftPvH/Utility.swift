import Foundation

class Utility
{    

    static func isNumber(stringToTest : String) -> Bool
    {
        let numberCharacters = CharacterSet.decimalDigits.inverted
        return !stringToTest.isEmpty && stringToTest.rangeOfCharacter(from:numberCharacters) == nil
    }
}
