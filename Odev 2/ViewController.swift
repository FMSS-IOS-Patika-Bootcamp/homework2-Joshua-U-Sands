//
//  ViewController.swift
//  Odev 2
//
//  Created by Joshua Sands on 17.09.2022.
//

import UIKit

class ViewController: UIViewController{
    
    //Calling from NewsStruct
    var headline = news().headline

    @IBOutlet weak var newsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        newsTable.delegate = self
        newsTable.dataSource = self
        
        navigationController?.navigationBar.topItem?.title = "News"
        
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    //Creating table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headline.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let tableCell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! TableViewCell
            tableCell.cellText.text = news().headline[indexPath.row]
            
            return tableCell
        
    }
    
    //Assigning function to table
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "toDetailsSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toDetailsSegue"){
            
            //Pushing index #
            
            let indexPath = newsTable.indexPathForSelectedRow
            let selectedIndex = indexPath?.row
            let destinationVC = segue.destination as! DescriptionVC
            destinationVC.currentIndex = selectedIndex!
            
            //changing back button
            
            let barItem = UIBarButtonItem()
            barItem.title = navBarButtonName().backToNews
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}


