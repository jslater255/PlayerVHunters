import Foundation

class Player
{
    
    public var playerPlace:Position;
    
    init()
    {
        playerPlace = Position(x: 0, y: 0);
    }
    
    func Move( direction: UInt32 )
    {
        if ( (1 == direction) && playerPlace.xPos > 0 )
        {
            playerPlace.xPos = playerPlace.xPos - 1;
        }
        else if ( (2 == direction) && (playerPlace.xPos < 9) )
        {
            playerPlace.xPos = playerPlace.xPos + 1;
        }
        else if ( (3 == direction) && (playerPlace.yPos > 0) )
        {
            playerPlace.yPos = playerPlace.yPos - 1;
        }
        else if ( (4 == direction) && (playerPlace.yPos < 9) )
        {
            playerPlace.yPos = playerPlace.yPos + 1;
        }
        else
        {
            // cant move or wrong move
        }
    }
    
    func Collision(Pos: Position) -> Bool
    {
        if ( (Pos.xPos == self.playerPlace.xPos) && (Pos.yPos == self.playerPlace.yPos) )
        {
            return true;
        }
        
        return false;
    }
    
    
}
