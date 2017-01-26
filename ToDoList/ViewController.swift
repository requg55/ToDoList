import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMrg.tasks.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell: UITableViewCell = UITableViewCell (style: UITableViewCellStyle.subtitle, reuseIdentifier: "Default")
        cell.textLabel?.text = taskMrg.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMrg.tasks[indexPath.row].desc
        return cell
    }
}


