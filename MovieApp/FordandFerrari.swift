//
//  FordandFerrari.swift
//  MovieApp
//
//  Created by Doolot on 14/2/22.
//


import UIKit
import SnapKit
class ViewController1: UIViewController {
    
    private lazy var firstMoviesImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "poster1")
        return view
    }()
    private lazy var viewBar: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 30
        view.layer.shadowRadius = 30
        view.layer.borderWidth = 0.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowRadius = 5.0
        view.layer.shadowOpacity = 1
        view.layer.masksToBounds = false
        return view
    }()
    private lazy var horizontalStackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.spacing = 8
        view.axis = .horizontal
        return view
    }()
    private lazy var starMovies1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Group1")
        view.tintColor = .black
        return view
    }()
    private lazy var starMovies2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Group2")
        view.tintColor = .black
        return view
    }()
    private lazy var starMovies3: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Group3")
        view.tintColor = .black
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
    private lazy var buttonPlus: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "plusButton")
        view.tintColor = .black
        return view
    }()
    
    private lazy var horizontalStackView2: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.spacing = 10
        view.axis = .horizontal
        return view
    }()
    private lazy var descriptionLabel: UILabel = {
        let view = UILabel()
        view.text = "2019"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 10.0)
        return view
    }()
    private lazy var descriptionLabel2: UILabel = {
        let view = UILabel()
        view.text = "PG-13"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 10.0)
        return view
    }()
    private lazy var descriptionLabel3: UILabel = {
        let view = UILabel()
        view.text = "2h 13min"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 10.0)
        return view
    }()
    
    
    private lazy var horizontalStackView3: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.spacing = 10
        view.axis = .horizontal
        return view
    }()
    private lazy var janrButtons: UIButton = {
        let view = UIButton(type: .system)
        view.setTitleColor(.black, for: .normal)
        view.setTitle("Action", for: .normal)
        view.layer.cornerRadius = 15
        view.layer.borderWidth = 1
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
    
    
    private lazy var summaryMovies1: UILabel = {
        let view = UILabel()
        view.text = "Plot Summary"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 20.0)
        return view
    }()
    private lazy var summaryDescriptionMovies1: UILabel = {
        let view = UILabel()
        view.text = """
        American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.
        """
        view.numberOfLines = 0
        view.adjustsFontSizeToFitWidth = false
        view.minimumScaleFactor = 0
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 15.0)
        return view
    }()
    
    private lazy var castAndCrew: UILabel = {
        let view = UILabel()
        view.text = "Cast & Crew"
        view.textColor = UIColor.black
        view.textAlignment = .center
        view.font = UIFont.systemFont(ofSize: 20.0)
        return view
    }()
    private lazy var castAndCrewStackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillEqually
        view.spacing = 10
        view.axis = .horizontal
        return view
    }()
    private lazy var acter: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "acter")
        view.tintColor = .black
        return view
    }()
    private lazy var acter1: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "acter1")
        view.tintColor = .black
        return view
    }()
    private lazy var acter2: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "acter2")
        view.tintColor = .black
        return view
    }()
    private lazy var acter3: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "acter3")
        view.tintColor = .black
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        firstBackraund()
    }
    private func firstBackraund(){
        view.backgroundColor = .systemBackground
    }
    private func setupSubviews(){
        view.addSubview(firstMoviesImage)
        firstMoviesImage.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.right.left.equalToSuperview()
            make.height.equalToSuperview().dividedBy(2.25)
        }
        // make.bottom.equalto(viewBar.snp.centerY)
        //make.width.equaltosuperview
        //make.top.equaltosuperview.offset(-100)
        view.addSubview(viewBar)
        viewBar.snp.makeConstraints { make in
            make.right.equalToSuperview()
            make.width.equalToSuperview().dividedBy(1.25)
            make.height.equalTo(60)
            make.centerY.equalToSuperview().offset(-60)
        }
        viewBar.addSubview(starMovies1)
        starMovies1.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.equalToSuperview().offset(45)
            make.height.width.equalTo(40)
        }
        viewBar.addSubview(starMovies2)
        starMovies2.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(starMovies1.snp.right).offset(45)
            make.height.equalTo(20)
            make.width.equalTo(60)
        }
        viewBar.addSubview(starMovies3)
        starMovies3.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.left.equalTo(starMovies2.snp.right).offset(25)
            make.height.equalTo(30)
            make.width.equalTo(70)
        }
        view.addSubview(nameMovies1)
        nameMovies1.snp.makeConstraints { make in
            make.top.equalTo(viewBar.snp.bottom).offset(30)
            make.left.equalToSuperview().offset(30)
        }
        view.addSubview(buttonPlus)
        buttonPlus.snp.makeConstraints { make in
            make.top.equalTo(viewBar.snp.bottom).offset(30)
            make.right.equalToSuperview().offset(-30)
        }
        
        view.addSubview(horizontalStackView2)
        horizontalStackView2.snp.makeConstraints { make in
            make.top.equalTo(nameMovies1.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(30)
            make.width.equalTo(250)
        }
        horizontalStackView2.addArrangedSubview(descriptionLabel)
        horizontalStackView2.addArrangedSubview(descriptionLabel2)
        horizontalStackView2.addArrangedSubview(descriptionLabel3)
        
        
        view.addSubview(horizontalStackView3)
        horizontalStackView3.snp.makeConstraints { make in
            make.top.equalTo(horizontalStackView2.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(30)
            make.width.equalTo(300)
        }
        horizontalStackView3.addArrangedSubview(janrButtons)
        horizontalStackView3.addArrangedSubview(janrButtons2)
        horizontalStackView3.addArrangedSubview(janrButtons3)
        
        view.addSubview(summaryMovies1)
        summaryMovies1.snp.makeConstraints { make in
            make.top.equalTo(horizontalStackView3.snp.bottom).offset(20)
            make.left.equalToSuperview().offset(30)
        }
        view.addSubview(summaryDescriptionMovies1)
        summaryDescriptionMovies1.snp.makeConstraints { make in
            make.top.equalTo(summaryMovies1.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
        }
        
        view.addSubview(castAndCrew)
        castAndCrew.snp.makeConstraints { make in
            make.top.equalTo(summaryDescriptionMovies1.snp.bottom).offset(10)
            make.left.equalToSuperview().offset(30)
        }
        view.addSubview(castAndCrewStackView)
        castAndCrewStackView.snp.makeConstraints { make in
            make.top.equalTo(castAndCrew.snp.bottom)
            make.left.equalToSuperview().offset(30)
            make.right.equalToSuperview().offset(-30)
            make.height.equalToSuperview().dividedBy(7)
        }
        castAndCrewStackView.addArrangedSubview(acter)
        castAndCrewStackView.addArrangedSubview(acter1)
        castAndCrewStackView.addArrangedSubview(acter2)
        castAndCrewStackView.addArrangedSubview(acter3)
    }
}
