//
//  CharactersViewController.swift
//  Workshop3
//
//  Created by Konstantin Portnov on 5/29/19.
//  Copyright © 2019 Konstantin Portnov. All rights reserved.
//

import UIKit

class CharactersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var characters: [Character] = [Character]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        characters = CharactersRepository.getAll()
        
        let cellNib = UINib(nibName: CharacterCell.nibName(),
                            bundle: nil)
        tableView.register(cellNib,
                           forCellReuseIdentifier: CharacterCell.reuseIdentifier())
    }
    
    func getCharacter(atIndex index: Int) -> Character? {
        
        if index >= 0 && index < characters.count {
            return characters[index]
        }

        return nil
    }
}

extension CharactersViewController: UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CharacterCell.reuseIdentifier()) as! CharacterCell
        
        if let character = getCharacter(atIndex: indexPath.row) {
            cell.configure(character: character)
        }
        
        return cell
    }

}

