import Foundation

class FileHandler
{
    func readFile( fileName: String ) -> String
    {
        // file contents
        return "";
    }
    
    func writeFile( fileName: String, fileContents: String) -> Bool
    {
        // get the documents folder url == ~/Documents/
        let documentDirectory = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true);
        // create the destination url for the text file to be saved
        let fileURL = documentDirectory.appendingPathComponent(fileName);
        
        print(documentDirectory);
        print(fileURL);
        
        // Write to the file named
        do {
            try fileContents.write(to: fileURL, atomically: true, encoding: .utf8)
        } catch {
            print("Failed writing to URL: \(fileURL), Error: " + error.localizedDescription)
        }
        
        return false;
    }
}
