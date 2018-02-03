import Foundation

class Game
{
    private var player:User;
    private var level:UInt = 1;
    private var grid:Grid;
    
    private var hunters:[Hunter] = [];
    
    init()
    {
        // Create a new player, starting pos is 0,0
        player = User();
        // Set the grid up
        grid = Grid();
        
        // set up all 10 hunters
        for _ in 0...9
        {
            self.hunters.append( Hunter() );
        }
    }
    
    func PlayGame()
    {
        // Start playing the game
        // For loop
        while(true)
        {
            // Print the Grid with the play on it
            grid.printGrid(game: self);
            
            // Take movemnt from the user
            // use arrows?
            player.Move( direction: UserInput.GetUserInput() );
        
            // Move the Hunter(s) same time as Player, will need the level depending on how the hunters will chase
            var idx:UInt = 1; // Same as first level
            var hitTaken:Bool = false;
            
            for hunter in hunters
            {
                if( level < idx )
                {
                    break;
                }
                hunter.RandomMove();
                
                // Make sure no hunter is matching the Player
                if ( !hitTaken && player.Collision(Pos: hunter.playerPlace) )
                {
                    // take one health
                    player.HitTaken();
                    // Now reset this Hunter
                    hunter.ResetHunter();
                    // Only take one hit per round
                    hitTaken = true
                }
                // Any hunter has now reached the end reset them back to the start
                else if ( hunter.Finished() )
                {
                    hunter.ResetHunter();
                    self.level = self.level + 1;
                }
                
                // Move on the idx per Hunter
                // Level 10 == 10 hunters moving
                idx = idx + 1 ;
            }
        }// End of for loop
    }
    
    func printPH(x:Int, y:Int) -> String
    {
        let tmpPos:Position = Position(x: x, y: y);
        
        if ( player.Collision(Pos: tmpPos) )
        {
            return "P|";
        }
        else
        {
            for hunter in hunters
            {
                if( hunter.Collision(Pos: tmpPos) )
                {
                    return "H|";
                }
            }
        }
        
        return " |";
    }
}
