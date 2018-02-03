import Foundation


class User : Player
{
    private var health:Int = 5;
    
    override init()
    {
        super.init();
        self.playerPlace = Position(x: 0, y: 0);
    }
    
    func GetHealth() -> Int
    {
        return self.health;
    }
    
    func HitTaken()
    {
        self.health = health - 1;
    }
}
