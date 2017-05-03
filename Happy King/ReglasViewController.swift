//
//  ReglasViewController.swift
//  
//
//  Created by Jorge Barrios on 8/7/15.
//
//

import UIKit

class ReglasViewController: UIViewController {
    
    
    @IBOutlet weak var BigLabel: UILabel!
    
    @IBOutlet weak var menuButton: UIButton!
    
    var bigText =  "Un grupo de amigos forma un círculo alrededor de una mesa y un jugador comienza al tocar el iPhone para recibir una carta. Cada carta representa algún juego de los siguientes: \n \n \t\t\t\t 2. Manda dos Tragos \n \t\t\t\t 3. Pepa Pinga \n \t\t\t\t 4. Caricachupas \n \t\t\t\t 5. Verdad o Reto \n \t\t\t\t 6. Animalitos \n \t\t\t\t 7. Múltiplos \n \t\t\t\t 8. Dedo \n \t\t\t\t 9. Yo Nunca Nunca \n \t\t\t\t10. Historia \n \t\t\t\t J. Hombres Toman \n \t\t\t\t Q. Mujeres Toman \n \t\t\t\t K. Regla \n \t\t\t\t A. Todos Toman! \n \nAl terminar, se pasa el iPhone al compañero de la derecha y así sucesivamente hasta que todos los jugadores estén ebrios."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       BigLabel.text = bigText
        roundCorners(menuButton)
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func roundCorners(_ buttonName: UIButton){
        buttonName.layer.cornerRadius = 10
    }

}
