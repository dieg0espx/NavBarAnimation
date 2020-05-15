//
//  ViewController.swift
//  NavbarAnimation
//
//  Created by Diego Espinosa on 2020-05-13.
//  Copyright © 2020 Diego Espinosa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    
    
    @IBOutlet weak var viewHeight: NSLayoutConstraint!
    @IBOutlet weak var theView: UIView!
    @IBOutlet weak var theButton: UIButton!
    @IBOutlet weak var theTableView: UITableView!
    
    let elements = [ "element1", "element2"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = elements[indexPath.row]
        return cell
    }
    

    let imgHeight = 80
    let imgWidth = 60
    
    var isClose = true
    
    var img1 = UIImageView()
    var img2 = UIImageView()
    var img3 = UIImageView()
    var img4 = UIImageView()
    var img5 = UIImageView()
    
    var theStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image1: UIImage = UIImage(named: "oreos")!
        let tap1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap1))
        img1 = UIImageView(image: image1)
        img1.addGestureRecognizer(tap1)
        img1.isUserInteractionEnabled = true
        NSLayoutConstraint.activate([
            img1.widthAnchor.constraint(equalToConstant: CGFloat(imgWidth)),
            img1.heightAnchor.constraint(equalToConstant: CGFloat(imgHeight))
        ])
        
        let image2: UIImage = UIImage(named: "ramen")!
        let tap2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap2))
        img2 = UIImageView(image: image2)
        img2.addGestureRecognizer(tap2)
        img2.isUserInteractionEnabled = true
        NSLayoutConstraint.activate([
            img2.widthAnchor.constraint(equalToConstant: CGFloat(imgWidth)),
            img2.heightAnchor.constraint(equalToConstant: CGFloat(imgHeight))
        ])
        
        let image3: UIImage = UIImage(named: "pizza_pockets")!
        let tap3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap3))
        img3 = UIImageView(image: image3)
        img3.addGestureRecognizer(tap3)
        img3.isUserInteractionEnabled = true
        NSLayoutConstraint.activate([
            img3.widthAnchor.constraint(equalToConstant: CGFloat(imgWidth)),
            img3.heightAnchor.constraint(equalToConstant: CGFloat(imgHeight))
        ])
        
        let image4: UIImage = UIImage(named: "popsicle")!
        let tap4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap4))
        img4 = UIImageView(image: image4)
        img4.addGestureRecognizer(tap4)
        img4.isUserInteractionEnabled = true
        NSLayoutConstraint.activate([
            img4.widthAnchor.constraint(equalToConstant: CGFloat(imgWidth)),
            img4.heightAnchor.constraint(equalToConstant: CGFloat(imgHeight))
        ])
        
        let image5: UIImage = UIImage(named: "pop_tarts")!
        let tap5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.tap5))
        img5 = UIImageView(image: image5)
        img5.addGestureRecognizer(tap5)
        img5.isUserInteractionEnabled = true
        NSLayoutConstraint.activate([
            img5.widthAnchor.constraint(equalToConstant: CGFloat(imgWidth)),
            img5.heightAnchor.constraint(equalToConstant: CGFloat(imgHeight))
        ])
        
        theStackView = UIStackView(arrangedSubviews: [img1, img2, img3, img4, img5])
        NSLayoutConstraint.activate([
            theStackView.widthAnchor.constraint(equalToConstant: view.frame.size.width),
            theStackView.heightAnchor.constraint(equalToConstant: 200)
        ])
        theStackView.axis = .horizontal
        theStackView.alignment = .bottom
        theStackView.spacing = 20
        theStackView.distribution = .equalSpacing
        theStackView.translatesAutoresizingMaskIntoConstraints = false
        theStackView.isHidden = true
        view.addSubview(theStackView)
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        print("button pressed")
        if isClose{
            NavBarClosed()
        } else {
            NavBarOpened()
        }
        self.isClose = !isClose
    }
    
    func NavBarClosed(){
        UIView.animate(withDuration:0.2){
            self.viewHeight.constant = 200
            let rotationTransform = CGAffineTransform(rotationAngle: 40)
            self.theButton.transform = rotationTransform
            self.theStackView.isHidden = false
        }
    }
    
    func NavBarOpened(){
        UIView.animate(withDuration:0.2){
            self.viewHeight.constant = 88
            let rotationTransform = CGAffineTransform(rotationAngle: 0)
            self.theButton.transform = rotationTransform
            self.theStackView.isHidden = true
        }
    }
    
    @objc func tap1(){
        //elementsInList.append("Oreos")
    }
    @objc func tap2(){
        //elementsInList.append("Oreos")
    }
    @objc func tap3(){
        //elementsInList.append("Oreos")
    }
    @objc func tap4(){
        //elementsInList.append("Oreos")
    }
    @objc func tap5(){
        //elementsInList.append("Oreos")
    }
}
