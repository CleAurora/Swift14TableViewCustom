//
//  ViewController.swift
//  CustomCell
//
//  Created by Cleís Aurora Pereira on 28/09/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    var myArray = [Developer]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        myArray.append(Developer(name: "Narlei", email: "narlei@email.com", image: "face.png"))

        myArray.append(Developer(name: "Jéssica", email: "jessica@email.com", image: "face.png"))

        myArray.append(Developer(name: "Cleís", email: "cleis@email.com", image: "face.png"))

        myArray.append(Developer(name: "Mauro", email: "mauro@email.com", image: "face.png"))

        myArray.append(Developer(name: "Messa", email: "messa@email.com", image: "face.png"))
    }
}

extension ViewController: UITableViewDelegate{

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        myArray.remove(at: indexPath.row)
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCustomCell

        let developer = myArray[indexPath.row]
        cell.setup(dev: developer)

        return cell
    }


}

