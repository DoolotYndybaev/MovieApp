//
//  ViewController.swift
//  MovieApp
//
//  Created by Doolot on 13/2/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var firstGroupView: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var menuButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(systemName: "list.dash"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .systemBackground
        return view
    }()
    private lazy var searchButton: UIButton = {
        let view = UIButton(type: .system)
        view.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        view.tintColor = .black
        view.backgroundColor = .systemBackground
        return view
    }()
    
    
    
    private lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        return view
    }()
    private lazy var containerView = UIView()
    
    
    private lazy var theaterLabel: UILabel = {
        let view = UILabel()
        view.text = "In Theater"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize: 30.0)
        return view
    }()
    private lazy var theaterLabel2: UILabel = {
        let view = UILabel()
        view.text = "Box Office"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.layer.opacity = 0.3
        view.font = UIFont.boldSystemFont(ofSize: 30.0)
        return view
    }()
    private lazy var theaterLabel3: UILabel = {
        let view = UILabel()
        view.text = "Coming Soon"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize: 30.0)
        return view
    }()
    
    
    private lazy var scrollView2: UIScrollView = {
        let view = UIScrollView()
        return view
    }()
    private lazy var containerView2 = UIView()
    
    private lazy var janrButtons: UIButton = {
        let view = UIButton(type: .system)
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Action", for: .normal)
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.addTarget(self, action: #selector(VCChanger(sender:)), for: .touchUpInside)
        view.layer.borderColor = CGColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        return view
    }()
    private lazy var janrButtons2: UIButton = {
        let view = UIButton(type: .system)
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Crime", for: .normal)
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        return view
    }()
    private lazy var janrButtons3: UIButton = {
        let view = UIButton(type: .system)
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Comedy", for: .normal)
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        return view
    }()
    private lazy var janrButtons4: UIButton = {
        let view = UIButton(type: .system)
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Drama", for: .normal)
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        return view
    }()
    
    

    private lazy var scrollView3: UIScrollView = {
        let view = UIScrollView()
        view.showsHorizontalScrollIndicator = false
        view.showsVerticalScrollIndicator = false
        return view
    }()
    private lazy var containerView3 = UIView()
    private lazy var moviesGroupView1: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var firstMoviesImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "poster1")
        return view
    }()
    private lazy var nameMovies1: UILabel = {
        let view = UILabel()
        view.text = "Ford v Ferrari"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize: 30.0)
        return view
    }()
    private lazy var ratingMovies1: UILabel = {
        let view = UILabel()
        view.text = "8.2"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 15)
        return view
    }()
    private lazy var starMovies1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "star.fill")
        view.tintColor = .black
        return view
    }()
    private lazy var openMovies1: UIButton = {
        let view = UIButton(type: .system)
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Open", for: .normal)
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        view.addTarget(nil, action: #selector(VCChanger(sender:)), for: .touchUpInside)
        return view
    }()
    
    private lazy var moviesGroupView2: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var secondMoviesImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "poster2")
        return view
    }()
    private lazy var nameMovies2: UILabel = {
        let view = UILabel()
        view.text = "Inception"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize: 30.0)
        return view
    }()
    private lazy var ratingMovies2: UILabel = {
        let view = UILabel()
        view.text = "8.5"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 15)
        return view
    }()
    private lazy var starMovies2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "star.fill")
        view.tintColor = .black
        return view
    }()
    private lazy var openMovies2: UIButton = {
        let view = UIButton(type: .system)
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Open Inception", for: .normal)
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        view.addTarget(nil, action: #selector(VCChanger(sender:)), for: .touchUpInside)
        return view
    }()
    
     
    
    private lazy var moviesGroupView3: UIView = {
        let view = UIView()
        return view
    }()
    private lazy var thirdMoviesImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "poster3")
        return view
    }()
    private lazy var nameMovies3: UILabel = {
        let view = UILabel()
        view.text = "Soul"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.boldSystemFont(ofSize: 30.0)
        return view
    }()
    private lazy var ratingMovies3: UILabel = {
        let view = UILabel()
        view.text = "9.5"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 15)
        return view
    }()
    private lazy var starMovies3: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "star.fill")
        view.tintColor = .black
        return view
    }()
    private lazy var openMovies3: UIButton = {
        let view = UIButton(type: .system)
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Open Soul", for: .normal)
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
        view.layer.borderColor = CGColor(red: 128/255, green: 128/255, blue: 128/255, alpha: 1)
        view.addTarget(nil, action: #selector(VCChanger(sender:)), for: .touchUpInside)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstBackraund()
        setupSubviews()
    }
    private func firstBackraund(){
        view.backgroundColor = .systemBackground
    }
    private func setupSubviews(){
        view.addSubview(firstGroupView)
        firstGroupView.snp.makeConstraints { make in
            make.top.equalTo(view.safeArea.top)
            make.right.left.equalToSuperview()
            make.height.equalTo(50)
        }
        firstGroupView.addSubview(menuButton)
        menuButton.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(20)
            make.width.equalTo(50)
        }
        firstGroupView.addSubview(searchButton)
        searchButton.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.right.equalToSuperview().offset(-20)
            make.width.equalTo(50)
        }
        
        
        
        view.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(firstGroupView.snp.bottom).offset(30)
            make.left.right.equalToSuperview()
            make.height.equalTo(50)
        }
        
        scrollView.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(600)
        }
        containerView.addSubview(theaterLabel)
        theaterLabel.snp.makeConstraints { make in
            make.left.equalToSuperview()
            make.top.bottom.equalToSuperview()
            make.width.equalTo(180)
        }
        containerView.addSubview(theaterLabel2)
        theaterLabel2.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(theaterLabel.snp.right)
            make.width.equalTo(180)
            
        }
        containerView.addSubview(theaterLabel3)
        theaterLabel3.snp.makeConstraints { make in
            make.left.equalTo(theaterLabel2.snp.right)
            make.top.bottom.equalToSuperview()
            make.width.equalTo(180)
            make.right.equalToSuperview()
        }
        
        
        view.addSubview(scrollView2)
        scrollView2.snp.makeConstraints { make in
            make.top.equalTo(scrollView.snp.bottom).offset(20)
            make.left.right.equalToSuperview()
            make.height.equalTo(50)
        }
        
        scrollView2.addSubview(containerView2)
        containerView2.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(700)
        }
        containerView2.addSubview(janrButtons)
        janrButtons.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.bottom.equalToSuperview()
            make.width.equalTo(120)
        }
        containerView2.addSubview(janrButtons2)
        janrButtons2.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(janrButtons.snp.right).offset(40)
            make.width.equalTo(120)
            
        }
        containerView2.addSubview(janrButtons3)
        janrButtons3.snp.makeConstraints { make in
            make.left.equalTo(janrButtons2.snp.right).offset(40)
            make.top.bottom.equalToSuperview()
            make.width.equalTo(120)
        }
        containerView2.addSubview(janrButtons4)
        janrButtons4.snp.makeConstraints { make in
            make.left.equalTo(janrButtons3.snp.right).offset(40)
            make.top.bottom.equalToSuperview()
            make.width.equalTo(120)
            make.right.equalToSuperview().offset(-30)
        }
        
        
        view.addSubview(scrollView3)
        scrollView3.snp.makeConstraints { make in
            make.top.equalTo(scrollView2.snp.bottom).offset(15)
            make.left.right.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        scrollView3.addSubview(containerView3)
        containerView3.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(1175)
        }
        containerView3.addSubview(moviesGroupView1)
        moviesGroupView1.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.height.equalTo(500)
        }
        moviesGroupView1.addSubview(firstMoviesImage)
        firstMoviesImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(350)
            make.width.equalTo(350)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        moviesGroupView1.addSubview(nameMovies1)
        nameMovies1.snp.makeConstraints { make in
            make.top.equalTo(firstMoviesImage.snp.bottom).offset(5)
            make.left.equalTo(firstMoviesImage.snp.left)
        }
        moviesGroupView1.addSubview(ratingMovies1)
        ratingMovies1.snp.makeConstraints { make in
            make.right.equalTo(firstMoviesImage.snp.right)
            make.top.equalTo(firstMoviesImage.snp.bottom).offset(10)
        }
        moviesGroupView1.addSubview(starMovies1)
        starMovies1.snp.makeConstraints { make in
            make.right.equalTo(ratingMovies1.snp.left)
            make.top.equalTo(firstMoviesImage.snp.bottom).offset(10)
        }
        containerView3.addSubview(openMovies1)
        openMovies1.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(400)
            make.left.equalToSuperview().offset(140)
            make.width.equalTo(120)
        }

        
        
        containerView3.addSubview(moviesGroupView2)
        moviesGroupView2.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalTo(moviesGroupView1.snp.right)
            make.height.equalTo(500)
        }
        moviesGroupView2.addSubview(secondMoviesImage)
        secondMoviesImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(350)
            make.width.equalTo(350)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        moviesGroupView2.addSubview(nameMovies2)
        nameMovies2.snp.makeConstraints { make in
            make.top.equalTo(secondMoviesImage.snp.bottom).offset(5)
            make.left.equalTo(secondMoviesImage.snp.left)
        }
        moviesGroupView2.addSubview(ratingMovies2)
        ratingMovies2.snp.makeConstraints { make in
            make.right.equalTo(secondMoviesImage.snp.right)
            make.top.equalTo(secondMoviesImage.snp.bottom).offset(10)
        }
        moviesGroupView2.addSubview(starMovies2)
        starMovies2.snp.makeConstraints { make in
            make.right.equalTo(ratingMovies2.snp.left)
            make.top.equalTo(secondMoviesImage.snp.bottom).offset(10)
        }
        containerView3.addSubview(openMovies2)
        openMovies2.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(120)

        }
        
        
        
        containerView3.addSubview(moviesGroupView3)
        moviesGroupView3.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(500)
        }
        moviesGroupView3.addSubview(thirdMoviesImage)
        thirdMoviesImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(350)
            make.width.equalTo(350)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
        }
        moviesGroupView3.addSubview(nameMovies3)
        nameMovies3.snp.makeConstraints { make in
            make.top.equalTo(thirdMoviesImage.snp.bottom).offset(5)
            make.left.equalTo(thirdMoviesImage.snp.left)
        }
        moviesGroupView3.addSubview(ratingMovies3)
        ratingMovies3.snp.makeConstraints { make in
            make.right.equalTo(thirdMoviesImage.snp.right)
            make.top.equalTo(thirdMoviesImage.snp.bottom).offset(10)
        }
        moviesGroupView3.addSubview(starMovies3)
        starMovies3.snp.makeConstraints { make in
            make.right.equalTo(ratingMovies3.snp.left)
            make.top.equalTo(thirdMoviesImage.snp.bottom).offset(10)
        }
        containerView3.addSubview(openMovies3)
        openMovies3.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-140)
            make.top.bottom.equalToSuperview().inset(400)
            make.width.equalTo(120)
        }
    }
    
    @objc func VCChanger(sender: UIButton) {
        if sender.titleLabel?.text == "Open"{
           navigationController?.pushViewController(ViewController1(), animated: true)
        }else if sender.titleLabel?.text == "Open Inception"{
            navigationController?.pushViewController(ViewController2(), animated: true)
         }else if sender.titleLabel?.text == "Open Soul"{
             navigationController?.pushViewController(ViewController3(), animated: true)
          }
//        @objc func VCChanger(sender: UIButton){
//            if sender.titleLabel?.text == "Open" {
//            present(ViewController1(), animated: true)
//        }
    }
}



