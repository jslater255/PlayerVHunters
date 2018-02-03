import Foundation

class Application
{
    //let keyboardInput = UserInput();
    /*
     */ 
    func run()
    {
        //Print menu and get the User
        self.menu();
        // loop for ever
        while true
        {
            print("Input: ", terminator:"");
            // Get user input
            let inputInt:UInt32 = UserInput.GetUserInput();
            
            // switch statement on user input
            switch inputInt
            {
                case 0: // Non integer entered
                    print("Please enter a valid number");
                    break;
                case 1: // Print Leaderboard
                    break;
                case 2: // Print Leaderboard
                    let game = Game();
                    game.PlayGame();
                    break;
                case 3: // Print Quit game
                    print("Exiting..");
                    exit(0);
                    break;
                default:
                    print("Please selct one of the options");
            }
            //Print menu and get the User
            self.menu();
            
        }
        
        
    }
    
    func menu()
    {
        print("********************");
        print(" 1: Leaderboard");
        print(" 2: Game");
        print(" 3: Quit");
        print("********************");
    }
}

