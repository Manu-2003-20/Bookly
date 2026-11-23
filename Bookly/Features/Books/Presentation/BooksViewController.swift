import UIKit

class BooksViewController: UIViewController {
    
    let headerView = BooksHeaderView()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        title = "Bookly"
        
        view.addSubview(headerView)
        
        headerView.translatesAutoresizingMaskIntoConstraints = false

               NSLayoutConstraint.activate([
                   headerView.centerXAnchor.constraint(
                       equalTo: view.centerXAnchor
                   ),
                   headerView.topAnchor.constraint(
                       equalTo: view.topAnchor,
                       constant: 24
                   ),

                   headerView.leadingAnchor.constraint(
                       greaterThanOrEqualTo: view.leadingAnchor,
                       constant: 20
                   ),
                   headerView.trailingAnchor.constraint(
                       lessThanOrEqualTo: view.trailingAnchor,
                       constant: -20
                   )
               ])
    }
    
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        print("Bookly is about to appear")
//    }
//    
//    override func viewDidAppear (_ animated: Bool){
//        super.viewDidAppear(animated)
//        print("Bookly is now visible")
//    }
}
