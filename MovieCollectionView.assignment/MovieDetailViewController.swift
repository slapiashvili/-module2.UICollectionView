//
//  MovieDetailViewController.swift
//  MovieCollectionView.assignment
//
//  Created by Salome Lapiashvili on 04.11.23.
//

import UIKit

class MovieDetailViewController: UIViewController {
    var movie: Movie?
    private let movieTitleLabel = UILabel()
    private let movieImageView = UIImageView()
    private let imdbScoreLabel = UILabel()
    private let imdbTextLabel = UILabel()
    
    private let descriptionLabel = UILabel()
    private let infoStackView = UIStackView()
    
    private let selectSessionButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondaryGray
        setupSubviews()
        updateViewFromModel()
    }
    
    private func updateViewFromModel() {
        guard let movie = movie else { return }
        
        movieTitleLabel.text = movie.title
        movieImageView.image = movie.secondPoster
        imdbScoreLabel.text = "\(movie.imdbRating)"
        descriptionLabel.text = movie.description
        
        updateInfoStackView(with: movie)
    }
    
    private func updateInfoStackView(with movie: Movie) {
        infoStackView.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        infoStackView.addArrangedSubview(createInfoStackView(title: "Certificate", value: movie.certificate))
        infoStackView.addArrangedSubview(createInfoStackView(title: "Runtime", value: movie.Runtime))
        infoStackView.addArrangedSubview(createInfoStackView(title: "Release", value: String(describing: movie.Release)))
        infoStackView.addArrangedSubview(createInfoStackView(title: "Genre", value: movie.genre))
        infoStackView.addArrangedSubview(createInfoStackView(title: "Director", value: movie.director))
        infoStackView.addArrangedSubview(createInfoStackView(title: "Cast", value: movie.Cast))  
    }
    
    private func setupSubviews() {
        setupMovieTitleLabel()
        setupMovieImageView()
        setupImdbScoreLabel()
        setupImdbTextLabel()
        setupDescriptionLabel()
        setupInfoStackView()
        setupSelectSessionButton()
        setupConstraints()
    }
    
    func setupMovieTitleLabel() {
        movieTitleLabel.text = movie?.title
        movieTitleLabel.textAlignment = .center
        movieTitleLabel.textColor = .white
        movieTitleLabel.font = UIFont.systemFont(ofSize: 20)
        movieTitleLabel.numberOfLines = 0
        movieTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(movieTitleLabel)
    }
    
    func setupMovieImageView() {
        movieImageView.image = movie?.secondPoster
        movieImageView.contentMode = .scaleAspectFill
        movieImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(movieImageView)
    }
    
    func setupImdbScoreLabel() {
        imdbScoreLabel.text = "\(movie?.imdbRating ?? 0.0)"
        imdbScoreLabel.textAlignment = .center
        imdbScoreLabel.textColor = .white
        imdbScoreLabel.font = UIFont.systemFont(ofSize: 20)
        imdbScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(imdbScoreLabel)
    }
    
    func setupImdbTextLabel() {
        imdbTextLabel.text = "IMDB"
        imdbTextLabel.font = UIFont.systemFont(ofSize: 15)
        imdbTextLabel.textColor = .gray
        imdbTextLabel.textAlignment = .center
        imdbTextLabel.font = imdbTextLabel.font.withSize(12)
        imdbTextLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imdbTextLabel)
    }
    
    func setupDescriptionLabel() {
        descriptionLabel.text = movie?.description
        descriptionLabel.backgroundColor = .backgroundGray
        descriptionLabel.textColor = .white
        descriptionLabel.font = UIFont.systemFont(ofSize: 15)
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .justified
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(descriptionLabel)
    }
    
    func setupInfoStackView() {
        infoStackView.axis = .vertical
        infoStackView.spacing = 8
        infoStackView.backgroundColor = .backgroundGray
        infoStackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(infoStackView)
    }
    func setupSelectSessionButton() {
        selectSessionButton.setTitle("Select Session", for: .normal)
        selectSessionButton.backgroundColor = .orange
        selectSessionButton.setTitleColor(.white, for: .normal)
        selectSessionButton.layer.cornerRadius = 10
        selectSessionButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(selectSessionButton)
    }
    
    
    func createInfoStackView(title: String, value: String) -> UIStackView {
        let titleLabel = UILabel()
        titleLabel.text = title
        titleLabel.textColor = .gray
        titleLabel.font = UIFont.systemFont(ofSize: 13)
        titleLabel.setContentHuggingPriority(.defaultHigh + 1, for: .horizontal)
        titleLabel.setContentCompressionResistancePriority(.defaultHigh + 1, for: .horizontal)
        
        let valueLabel = UILabel()
        valueLabel.text = value
        valueLabel.textColor = .white
        valueLabel.textAlignment = .left
        valueLabel.numberOfLines = 0
        valueLabel.lineBreakMode = .byWordWrapping
        valueLabel.font = UIFont.systemFont(ofSize: 13)
        valueLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        valueLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        
        let stackView = UIStackView(arrangedSubviews: [titleLabel, valueLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 8
        stackView.layoutSubviews()
        valueLabel.leadingAnchor.constraint(equalTo: stackView.centerXAnchor).isActive = true
        return stackView
    }
    
    
    func setupConstraints() {
        
        NSLayoutConstraint.activate([
            infoStackView.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 20),
            infoStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            infoStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            movieTitleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -33),
            movieTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            movieTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            movieImageView.topAnchor.constraint(equalTo: movieTitleLabel.bottomAnchor, constant: 40),
            movieImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            movieImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            movieImageView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.26),
            
            imdbScoreLabel.topAnchor.constraint(equalTo: movieImageView.bottomAnchor, constant: 40),
            imdbScoreLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imdbScoreLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            imdbTextLabel.topAnchor.constraint(equalTo: imdbScoreLabel.bottomAnchor, constant: 3),
            imdbTextLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imdbTextLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imdbTextLabel.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: imdbTextLabel.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            
            selectSessionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
            selectSessionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            selectSessionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            selectSessionButton.heightAnchor.constraint(equalToConstant: 70)
            
        ])
    }
}

