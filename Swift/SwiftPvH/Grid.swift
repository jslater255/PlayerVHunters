import Foundation

class Grid
{
    var grid_dimension = 9;
    
    func printGrid(game : Game)
    {
        print("");
        self.topper(health: 10,level: 1);
        for idx in 0...grid_dimension
        {
            print("|",terminator: "")
            for jdx in 0...grid_dimension
            {
                print(game.printPH(x: jdx, y: idx), terminator: "");
            }
            print("");
        }
        print("Footer");
    }
    
    func topper(health: Int, level: Int)
    {
        print("********************");
        print("Health: \(health)  Level: \(level)");
    }
    
    func footer()
    {
        print("********************");
    }
}
