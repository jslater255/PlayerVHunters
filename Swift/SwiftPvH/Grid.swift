import Foundation

class Grid
{
    var grid_dimension = 9;
    
    func printGrid(game: Game, level: UInt, health: Int)
    {
        print("");
        self.topper(health: health,level: level);
        for idx in 0...grid_dimension
        {
            print("|",terminator: "")// no endl
            for jdx in 0...grid_dimension
            {
                print(game.printPH(x: jdx, y: idx), terminator: ""); // no endl
            }
            print("");// endl
        }
        printBreak();
    }
    
    func topper(health: Int, level: UInt)
    {
        printBreak();
        print("Health: \(health)  Level: \(level)");
    }
    
    func printBreak()
    {
        print("*********************");
    }
}
