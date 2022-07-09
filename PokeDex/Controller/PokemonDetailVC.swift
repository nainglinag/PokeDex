//
//  PokemonDetailVC.swift
//  PokeDex3
//
//  Created by Naing Lin Aung on 7/6/22.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenceLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var baseAttackLabel: UILabel!
    @IBOutlet weak var currentEvoImage: UIImageView!
    @IBOutlet weak var nextEvoImage: UIImageView!
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemon.downloadPokemonDetails {
            
        }
        navigationController?.isNavigationBarHidden = true
        nameLabel.text = pokemon.name
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
//      dismiss(animated: true, completion: nil)
        navigationController?.popToRootViewController(animated: true)
    }
}
