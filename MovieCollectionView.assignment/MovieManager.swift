//
//  MovieManager.swift
//  MovieCollectionView.assignment
//
//  Created by Salome Lapiashvili on 04.11.23.
//

import UIKit

class MovieManager {
    static let shared = MovieManager()
    
    private(set) var movies: [Movie] = [
        Movie(title: "The Batman",
              genre: "Action",
              poster: UIImage(named: "batman.poster") ?? UIImage(), secondPoster: UIImage(named: "batman.second.poster") ?? UIImage(),
              imdbRating: 8.1,
              isFavorite: false,
              description: "When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city's hidden corruption and question his family's involvement.",
              certificate: "16+",
              Runtime: "2:56",
              Release: 2022,
              Cast: "Robert Pattinson, Zoë Kravitz, Jeffrey Wright, Colin Farrell",
              director: "Matt Reeves"
             ),
        Movie(
            title: "Uncharted",
            genre: "Adventure",
            poster: UIImage(named: "uncharted.poster") ?? UIImage(),secondPoster: UIImage(named: "uncharted.second.poster") ?? UIImage(),
            imdbRating: 6.3,
            isFavorite: false,
            description: "Street-smart Nathan Drake is recruited by seasoned treasure hunter Victor \"Sully\" Sullivan to recover a fortune amassed by Ferdinand Magellan, and lost 500 years ago by the House of Moncada.",
            certificate: "12+",
            Runtime: "1:56",
            Release: 2022,
            Cast: "Tom Holland, Mark Wahlberg, Antonio Banderas",
            director: "Ruben Fleischer"
        ),
        Movie(
            title: "The Exorcism of God",
            genre: "Horror",
            poster: UIImage(named: "exorcism.poster") ?? UIImage(), secondPoster: UIImage(named: "exorcism.second.poster") ?? UIImage(),
            imdbRating: 5.3,
            isFavorite: false,
            description: "An American priest working in Mexico is possessed during an exorcism and ends up committing a terrible act. Eighteen years later, the consequences of his sin come back to haunt him, unleashing the greatest battle within.",
            certificate: "15+",
            Runtime: "1:38",
            Release: 2021,
            Cast: "Hector Kotsifakis, Will Beinbrink, Oscar Flores",
            director: "Alejandro Hidalgo"
        ),
        Movie(
            title: "Turning Red",
            genre: "Comedy",
            poster: UIImage(named: "turning.poster") ?? UIImage(), secondPoster: UIImage(named: "turning.second.poster") ?? UIImage(),
            imdbRating: 7.0,
            isFavorite: false,
            description: "A thirteen-year-old girl named Mei Lee is torn between staying her mother's dutiful daughter and the changes of adolescence. And as if the challenges were not enough, whenever she gets overly excited she transforms into a giant red panda.",
            certificate: "PG",
            Runtime: "1:40",
            Release: 2022,
            Cast: "Rosalie Chiang, Sandra Oh, Ava Morse",
            director: "Domee Shi"
        ),
        
        Movie(
            title: "Spider-Man: No Way Home",
            genre: "Action",
            poster: UIImage(named: "spiderman.poster") ?? UIImage(), secondPoster: UIImage(named: "spiderman.second.poster") ?? UIImage(),
            imdbRating: 8.2,
            isFavorite: false,
            description: "With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.",
            certificate: "12+",
            Runtime: "2:28",
            Release: 2021,
            Cast: "Tom Holland, Zendaya, Benedict Cumberbatch",
            director: "Jon Watts"
        ),
        Movie(
            title: "Morbius",
            genre: "Horror",
            poster: UIImage(named: "morbius.poster") ?? UIImage(), secondPoster: UIImage(named: "morbius.second.poster") ?? UIImage(),
            imdbRating: 5.2,
            isFavorite: false,
            description: "Biochemist Michael Morbius tries to cure himself of a rare blood disease, but he inadvertently infects himself with a form of vampirism instead.",
            certificate: "15+",
            Runtime: "1:44",
            Release: 2022,
            Cast: "Jared Leto, Matt Smith, Adria Arjona",
            director: "Daniel Espinosa"
        ),
    ]
    
}
