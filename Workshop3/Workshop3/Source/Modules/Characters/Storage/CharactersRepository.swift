//
//  CharactersStorage.swift
//  Workshop3
//
//  Created by Konstantin Portnov on 5/29/19.
//  Copyright © 2019 Konstantin Portnov. All rights reserved.
//

import Foundation

class CharactersRepository {
    
    class func getAll() -> [Character] {
        
        return [
            Character(name: "Jon Snow",
                      gender: Gender.Male,
                      picture: URL(string: "https://awoiaf.westeros.org/thumb.php?f=Cristi_Balanescu_Jon_SnowGhost.png&width=300")!,
                      books: [
                        Book(title: "A Game of Thrones"),
                        Book(title: "A Clash of Kings"),
                        Book(title: "A Storm of Swords"),
                        Book(title: "A Feast for Crows"),
                        Book(title: "A Dance with Dragons")
                ]),
            
            Character(name: "Cersei Lannister",
                      gender: Gender.Female,
                      picture: URL(string: "https://awoiaf.westeros.org/thumb.php?f=MagaliVilleneuve_CLface.jpg&width=300")!,
                      books: [
                        Book(title: "The World of Ice & Fire"),
                        Book(title: "A Game of Thrones"),
                        Book(title: "A Clash of Kings"),
                        Book(title: "A Storm of Swords"),
                        Book(title: "A Feast for Crows"),
                        Book(title: "A Dance with Dragons"),
                        Book(title: "The Winds of Winter")
                ]),
            
            Character(name: "Jaime Lannister",
                      gender: Gender.Male,
                      picture: URL(string: "https://awoiaf.westeros.org/thumb.php?f=Mathia_Arkoniel_Jaime_Lannister.jpg&width=350")!,
                      books: [
                        Book(title: "The World of Ice & Fire"),
                        Book(title: "A Game of Thrones"),
                        Book(title: "A Clash of Kings"),
                        Book(title: "A Storm of Swords"),
                        Book(title: "A Feast for Crows"),
                        Book(title: "A Dance with Dragons")
                ]),
            
            Character(name: "Eddard Stark",
                      gender: Gender.Male,
                      picture: URL(string: "https://awoiaf.westeros.org/images/0/0a/Eddard_Amoka.jpg")!,
                      books: [
                        Book(title: "The World of Ice & Fire"),
                        Book(title: "A Game of Thrones"),
                        Book(title: "A Clash of Kings"),
                        Book(title: "A Storm of Swords"),
                        Book(title: "A Feast for Crows"),
                        Book(title: "A Dance with Dragons"),
                        Book(title: "The Winds of Winter")
                ]),
            
            Character(name: "Robb Stark",
                      gender: Gender.Male,
                      picture: URL(string: "https://awoiaf.westeros.org/thumb.php?f=Magali_Villenueve_Robb_StarkII.jpg&width=350")!,
                      books: [
                ]),
            
            Character(name: "Sansa Stark",
                      gender: Gender.Female,
                      picture: URL(string: "https://awoiaf.westeros.org/thumb.php?f=The_North_Remembers_by_Isabel_Westling.jpg&width=300")!,
                      books: [
                        Book(title: "A Game of Thrones"),
                        Book(title: "A Clash of Kings"),
                        Book(title: "A Storm of Swords"),
                        Book(title: "A Feast for Crows"),
                        Book(title: "A Dance with Dragons"),
                        Book(title: "The Winds of Winter")
                ]),
            
            Character(name: "Bran Stark",
                      gender: Gender.Male,
                      picture: URL(string: "https://awoiaf.westeros.org/thumb.php?f=Mark_Evans_Bran_Stark.png&width=350")!,
                      books: [
                        Book(title: "A Game of Thrones"),
                        Book(title: "A Clash of Kings"),
                        Book(title: "A Storm of Swords"),
                        Book(title: "A Feast for Crows"),
                        Book(title: "A Dance with Dragons"),
                        ]),
            
            Character(name: "Beldecar",
                      gender: nil,
                      picture: nil,
                      books: []),
            
            Character(name: "Daenerys Targaryen",
                      gender: Gender.Female,
                      picture: URL(string: "https://awoiaf.westeros.org/thumb.php?f=Daenerys_Targaryen_Martell.jpg&width=300")!,
                      books: [
                        Book(title: "The World of Ice & Fire"),
                        Book(title: "The Sworn Sword"),
                        Book(title: "A Dance with Dragons"),
                        Book(title: "The Winds of Winter"),
                        ]),
            
            Character(name: "Arya Stark",
                      gender: Gender.Female,
                      picture: URL(string: "https://awoiaf.westeros.org/thumb.php?f=John_Picacio_Arya.jpg&width=250")!,
                      books: [
                        Book(title: "The World of Ice & Fire"),
                        Book(title: "A Game of Thrones"),
                        Book(title: "A Clash of Kings"),
                        Book(title: "A Storm of Swords"),
                        Book(title: "A Feast for Crows"),
                        Book(title: "A Dance with Dragons"),
                        Book(title: "The Winds of Winter"),
                        ]),
        ]
    }

}
