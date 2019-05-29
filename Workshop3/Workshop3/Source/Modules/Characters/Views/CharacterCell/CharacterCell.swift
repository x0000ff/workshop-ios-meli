//
//  CharacterCell.swift
//  Workshop3
//
//  Created by Konstantin Portnov on 5/29/19.
//  Copyright © 2019 Konstantin Portnov. All rights reserved.
//

import UIKit

class CharacterCell: UITableViewCell {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var booksLabel: UILabel!
    @IBOutlet private weak var genderLabel: UILabel!
    @IBOutlet private weak var photoImageView: UIImageView!

    var character: Character?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initialUIConfig()
    }
    
    func initialUIConfig() {
        photoImageView.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
        photoImageView.clipsToBounds = true
        photoImageView.layer.cornerRadius = 6
    }

    func configure(character: Character) {
        
        self.character = character
        
        nameLabel.text = character.name
       
        let formattedBooks = character
            .books
            .map({ "➡️ \($0.title)" })
            .joined(separator: "\n")
        
        booksLabel.text = formattedBooks

        genderLabel.text = character.gender?.chracterCellStringRepresentation()
        
        if let picture = character.picture {
            downloadImage(from: picture)
        }
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        nameLabel.text = nil
        booksLabel.text = nil
        genderLabel.text = nil
        photoImageView.image = nil
    }
        
    func downloadImage(from url: URL) {

        DispatchQueue.global().async { [weak self] in
            
            guard let data = try? Data(contentsOf: url) else {
                return
            }

            if url != self?.character?.picture {
                return
            }
            
            DispatchQueue.main.async { [weak self] in
                self?.photoImageView?.image = UIImage(data: data)
                self?.setNeedsLayout()
            }
        }
        
    }
}

extension CharacterCell: Cellable {

    static func nibName() -> String {
        return "CharacterCell"
    }
    
    static func reuseIdentifier() -> String {
        return "CharacterCell"
    }

}
