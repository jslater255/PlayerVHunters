import Foundation

class Hunter: Player
{
    override init()
    {
        super.init();
        self.playerPlace = Position(x: 9, y: 9);
    }
    
    func Move()
    {
        // Have to move to the Hunters to the top corner
        var move:UInt32 = arc4random_uniform(4);
        
        // move is right and already on the edge
        if( (self.playerPlace.xPos == 9) && ( move == 2 ) )
        {
            // move left
            move = 1;
        }
        if ( (move == 3) && (self.playerPlace.yPos == 9)  )
        {
            move = 4;
        }
        
        self.Move(direction: move);
    }
    
    func ResetHunter()
    {
        playerPlace.xPos = 9;
        playerPlace.yPos = 9;
    }
    
    func Finished() -> Bool
    {
        var retVal:Bool = false;
        
        if ( (0 == playerPlace.xPos) && (0 == playerPlace.yPos) )
        {
            retVal = true;
        }
        
        return retVal;
    }
}
