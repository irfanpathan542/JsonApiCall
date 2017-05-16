
import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        apiCall()
                // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func apiCall(){
        
        let url = URL(string: "http://headers.jsontest.com/")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if error != nil {
                print("Error")
            }else {
                do{
                    let  myJson =  try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                    print(myJson)
                }catch {
                    print("Error")
                }
            }
            
            
        }
        task.resume()

    }


}

