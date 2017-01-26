import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var TblView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    //DataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return taskMrg.tasks.count //Количество строк в таблице
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = taskMrg.tasks[indexPath.row].name //Значение ячейки таблицы
        return cell
    }
    
    //AddNewTask
    
    @IBAction func AddTasks(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "NewTask", message: "Please, input new task", preferredStyle: UIAlertControllerStyle.alert) //Создание контроллера UIAlert
        alert.addTextField { (textField) in //Добавление текстового поля в UIAlert
            textField.text = ""
        }
        //Добавление кнопок в UIAlert
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { [weak alert] (_) in
            taskMrg.addTask(name: (alert?.textFields![0].text)!, desc: "ds")
            alert?.textFields![0].text = ""
            self.TblView.reloadData()//Обновление таблицы
        }))
        self.present(alert, animated: true, completion: nil)//Показать UIAlert
    }
}


