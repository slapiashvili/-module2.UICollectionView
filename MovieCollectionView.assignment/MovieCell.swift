//
//  MovieCell.swift
//  MovieCollectionView.assignment
//
//  Created by Salome Lapiashvili on 04.11.23.
//

import UIKit

struct Movie {
    let title: String
    let genre: String
    let poster: UIImage
    let secondPoster: UIImage
    let imdbRating: Double
    var isFavorite: Bool
    var description: String
    var certificate: String
    var Runtime: String
    var Release: Int
    var Cast: String
    var director: String
}

import UIKit

class MovieCell: UICollectionViewCell {
    
    var posterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var genreLabel: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var heartButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        button.tintColor = .white
        button.addTarget(self, action: #selector(heartButtonTapped), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var imdbLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.backgroundColor = .orange
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .center
        label.layer.cornerRadius = 5
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        self.backgroundColor = UIColor(named: "backgroundGray")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addSubview(posterImageView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(genreLabel)
        contentView.addSubview(heartButton)
        contentView.addSubview(imdbLabel)
        
        NSLayoutConstraint.activate([
            posterImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            posterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            posterImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            posterImageView.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.82),

            titleLabel.topAnchor.constraint(equalTo: posterImageView.bottomAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),

            genreLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 2),
            genreLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            genreLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            genreLabel.bottomAnchor.constraint(lessThanOrEqualTo: contentView.bottomAnchor, constant: -5),

            heartButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            heartButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            heartButton.widthAnchor.constraint(equalToConstant: 24),
            heartButton.heightAnchor.constraint(equalToConstant: 24),

            imdbLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            imdbLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            imdbLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 40),
            imdbLabel.heightAnchor.constraint(equalToConstant: 24)
        ])
    }
    
    @objc func heartButtonTapped(_ sender: UIButton) {
        sender.isSelected.toggle()
    }
}



