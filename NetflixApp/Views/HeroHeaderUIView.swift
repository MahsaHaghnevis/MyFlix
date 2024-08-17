//
//  HeroHeaderUIView.swift
//  NetflixApp
//
//  Created by Mahsa on 8/17/24.
//

import UIKit

class HeroHeaderUIView: UIView {

    private let downloadButton : UIButton = {
        let button = UIButton()
        button.setTitle("  Download  ", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1 
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    
    private let heroImageView : UIImageView =
    {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "lucifer (3)")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    
   
    private let playButton : UIButton = {
        let button = UIButton()
        button.setTitle("  Play  ", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        
        
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradiant()
        addSubview(playButton)
        applyConstraints()
        addSubview(downloadButton)
        applyConstraintDownload()
        
    }
    
    private func applyConstraints(){
        let playButtonConstraints = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70) ,
//            playButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 25 ) ,
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20) ,
            playButton.widthAnchor.constraint(equalToConstant: 100)
        ]
        NSLayoutConstraint.activate(playButtonConstraints)
        
    }
    
    private func applyConstraintDownload(){
        let downloadButtonConstraints = [
            downloadButton.widthAnchor.constraint(equalToConstant: 100) ,
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20) ,
            downloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70)
            ]
        NSLayoutConstraint.activate(downloadButtonConstraints)
        
    }
    private func addGradiant(){
        let gradiantLayer =  CAGradientLayer()
        gradiantLayer.colors = [
            UIColor.clear.cgColor ,
            UIColor.systemBackground.cgColor
        ]
        gradiantLayer.frame = bounds
        layer.addSublayer(gradiantLayer)
        
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    
    required init?(coder : NSCoder){
        fatalError()
    }

}
