import Foundation


class UserInput
{
    static func GetUserInput() -> UInt32
    {
        var inputInt:UInt32 = 0; // set to invalid
        
        if let input = readLine(strippingNewline: true)
        {
            // Have to double check the value before converting
            if (Utility.isNumber(stringToTest: input))
            {
                inputInt = UInt32(input)!
            }
        }
        return inputInt;
    }
    
    func GetUserInput() -> String
    {
        return ""//readLine(strippingNewline: true);
    }
}
