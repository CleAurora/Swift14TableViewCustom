//
//  ViewController.swift
//  CellCustomTest
//
//  Created by Cleís Aurora Pereira on 29/09/20.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!

    var myArray = [GroupMonica]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self


        myArray.append(GroupMonica(nome: "Monica", objeto: "Coelhinho", image: "monica"))
        myArray.append(GroupMonica(nome: "Magali", objeto: "Melancia", image: "magali"))
        myArray.append(GroupMonica(nome: "Cebolinha", objeto: "Plano Infalível", image: "cebolinha"))
        myArray.append(GroupMonica(nome: "Cascao", objeto: "Guarda-chuva", image: "cascao"))
    }
}

extension ViewController: UITableViewDelegate{

}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        myArray.remove(at: indexPath.row)
        tableView.reloadData()
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myArray.count
    }



    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCustomCell

        let group = myArray[indexPath.row]
        cell.setup(group: group)
        
        return cell
    }





}



