//
//  ViewController.swift
//  RamdomLaunch
//
//  Created by YoungWoo Song on 2022/04/16.
//

import UIKit
import Lottie

class ViewController: UIViewController {
    
    @IBOutlet weak var tvCategory: UILabel!
    @IBOutlet weak var tvMenuName: UILabel!
    @IBOutlet weak var ivMenu: UIImageView!
    let animationView = AnimationView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.overrideUserInterfaceStyle = .light
        tvCategory.text = "오늘의 점심 메뉴는?!"
        tvMenuName.text = ""
        
        ivMenu.contentMode = UIView.ContentMode.scaleAspectFit
        ivMenu.center = self.view.center
        ivMenu.image = UIImage(named: "chealin.jpeg")
        ivMenu.layer.cornerRadius = 30.0
        ivMenu.layer.masksToBounds = true
        view.addSubview(ivMenu)
     
    }

    func setUpAnimation() {
       
        animationView.frame = view.bounds
        animationView.animation = Animation.named("99833-edupia-loading")
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .playOnce
        view.addSubview(animationView)
        animationView.play()
    }
    
    @IBAction func selectMenu(_ sender: Any) {
        
        setUpAnimation()
        
        var randomNum = Int.random(in: 0...140)
        print("ramdom : \(randomNum)")
        

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1){ [self] in
            switch randomNum {
            case 0...10 :
                tvCategory.text = "한식"
                tvMenuName.text = "육회비빔밥"
                ivMenu.image = UIImage(named: "BiBimBap.jpeg")
            case 11...20 :
                tvCategory.text = "한식"
                tvMenuName.text = "김치찌개"
                ivMenu.image = UIImage(named: "Gimchi.jpeg")
            case 21...30 :
                tvCategory.text = "한식"
                tvMenuName.text = "된장찌개"
                ivMenu.image = UIImage(named: "Jang.jpeg")
            case 31...40 :
                tvCategory.text = "한식"
                tvMenuName.text = "제육찌개"
                ivMenu.image = UIImage(named: "Jeyok.jpeg")
            case 41...50 :
                tvCategory.text = "한식"
                tvMenuName.text = "쭈꾸미삼겹살"
                ivMenu.image = UIImage(named: "JjuGGuMi.jpeg")
            case 51...60 :
                tvCategory.text = "일식"
                tvMenuName.text = "돈가스"
                ivMenu.image = UIImage(named: "DonGas.jpeg")
            case 61...70 :
                tvCategory.text = "일식"
                tvMenuName.text = "초밥"
                ivMenu.image = UIImage(named: "ChoiBap.jpeg")
            case 71...80 :
                tvCategory.text = "일식"
                tvMenuName.text = "연어덮밥"
                ivMenu.image = UIImage(named: "SalmonBap.jpeg")
            case 81...90 :
                tvCategory.text = "양식"
                tvMenuName.text = "파스타"
                ivMenu.image = UIImage(named: "Pasta.jpeg")
            case 91...100 :
                tvCategory.text = "양식"
                tvMenuName.text = "피자"
                ivMenu.image = UIImage(named: "Pizza.jpeg")
            case 101...110 :
                tvCategory.text = "양식"
                tvMenuName.text = "샐러디랩"
                ivMenu.image = UIImage(named: "SaladLap.jpeg")
            case 111...120 :
                tvCategory.text = "중식"
                tvMenuName.text = "짜장면"
                ivMenu.image = UIImage(named: "Zzazangmyun.jpeg")
            case 121...130 :
                tvCategory.text = "중식"
                tvMenuName.text = "짬뽕"
                ivMenu.image = UIImage(named: "ZzamBbong.jpeg")
            case 131...140 :
                tvCategory.text = "중식"
                tvMenuName.text = "탕수육"
                ivMenu.image = UIImage(named: "TangSuYuk.jpeg")
            default:
                print("else")
            }
            animationView.stop()
            animationView.removeFromSuperview()
        }
    }
}

