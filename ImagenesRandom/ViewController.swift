//
//  ViewController.swift
//  ImagenesRandom
//
//  Created by Mac on 17/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.backgroundColor = .white
            return imageView
    }()
    private let imageView2: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.backgroundColor = .white
            return imageView
    }()
    private let imageView3: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.backgroundColor = .white
            return imageView
    }()
    private let imageView4: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.backgroundColor = .white
            return imageView
    }()
    
    private let button: UIButton = {
            let button = UIButton()
            button.setTitle("Random", for: .normal)
            button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .purple
            button.layer.cornerRadius = 6.0
        
            return button
    }()
    
    let colors: [UIColor] = [ .systemPink,
                              .systemRed,
                              .systemBlue,
                              .systemGreen,
                              .systemOrange,
                              .systemYellow]
 

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        imageView.frame = CGRect(x: 230, y: 200, width: 150, height: 150)
        

        view.addSubview(imageView2)
        imageView2.frame = CGRect(x: 50, y: 200, width: 150, height: 150)
        
        
        view.addSubview(imageView3)
        imageView3.frame = CGRect(x: 230, y: 420, width: 150, height: 150)
        
        
        view.addSubview(imageView4)
        imageView4.frame = CGRect(x: 50, y: 420, width: 150, height: 150)
        
        
        view.addSubview(button)
        
        
        getRandomPhoto()
                button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        getRandomPhoto2()
                button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        getRandomPhoto3()
                button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        getRandomPhoto4()
                button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

    }
    @objc func didTapButton(){
        getRandomPhoto()
        getRandomPhoto2()
        getRandomPhoto3()
        getRandomPhoto4()
        view.backgroundColor = colors.randomElement()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        button.frame = CGRect(x: 30, y: view.frame.size.height-150-view.safeAreaInsets.bottom, width: view.frame.size.width-60, height: 55)
        
    }
    
    func getRandomPhoto() {
         let urlString = "https://source.unsplash.com/random/150x150"
         let url = URL(string: urlString)!
         guard let data = try? Data(contentsOf: url) else {
             return
         }
         imageView.image = UIImage(data: data)
         
         imageView3.image = UIImage(data: data)
         imageView4.image = UIImage(data: data)

    }
    func getRandomPhoto2() {
         let urlString = "https://source.unsplash.com/random/150x150?sig=1"
         let url = URL(string: urlString)!
         guard let data = try? Data(contentsOf: url) else {
             return
         }
         
         imageView2.image = UIImage(data: data)
         imageView3.image = UIImage(data: data)
         imageView4.image = UIImage(data: data)

    }
    func getRandomPhoto3() {
         let urlString = "https://picsum.photos/150/150"
         let url = URL(string: urlString)!
         guard let data = try? Data(contentsOf: url) else {
             return
         }
         
         
         imageView3.image = UIImage(data: data)
         

    }
    func getRandomPhoto4() {
         let urlString = "https://random.imagecdn.app/150/150"
         let url = URL(string: urlString)!
         guard let data = try? Data(contentsOf: url) else {
             return
         }
         
         
         imageView4.image = UIImage(data: data)

    }

}

