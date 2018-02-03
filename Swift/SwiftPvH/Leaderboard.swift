import Foundation

class Leaderboard
{
    private var playerArray = [(name: String, score: UInt32)]()
    
    func printLeaderboard()
    {
        print("**** Leader Board ****");
    }
    
    func addNewHighScore(newScore: UInt32, playerName: String) -> Bool
    {
        
        // Get file contents and convert to the playerArray
        
        // Add in high score if higher to array (Sorted)
        
        // Write new contents to file
        
        return false;
    }
    
    func convertFileToArray(fileContents: String) -> Bool
    {
        // JSON Object
        
        // Sort the Array
        playerArray.sort() { $0.score < $1.score }
        
        return false;
    }
}
