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
        // Hunter only move up(1) or left(3)
        var randomMove:uint32 = (arc4random_uniform(2) == 0 ? 3 : 1 )
        
        // if we are at the edge on the left of the grid then move up.
        if(self.playerPlace.xPos == 0)
        {
            randomMove = 3;
        }
        
        if( self.playerPlace.yPos == 0 )
        {
            randomMove = 1;
        }
        
        super.Move(direction: randomMove);
    }
    
    func ResetHunter()
    {
        // Starting position
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
