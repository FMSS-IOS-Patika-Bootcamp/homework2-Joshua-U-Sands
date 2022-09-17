//
//  DescriptionVC.swift
//  Odev 2
//
//  Created by Joshua Sands on 17.09.2022.
//

import UIKit

class DescriptionVC: UIViewController {

    @IBOutlet weak var headlineLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var currentIndex = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        headlineLabel.text = news().headline[currentIndex].uppercased()
        descriptionLabel.text = news().description[currentIndex]
        
    }

    @IBAction func linkPressed(_ sender: UIButton) {
       
        performSegue(withIdentifier: "toWebSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toWebSegue"{
            
            //Transfering index #
            let destinationVC = segue.destination as! WebVC
            destinationVC.currentIndex = currentIndex
            
        }
    }
    
}
