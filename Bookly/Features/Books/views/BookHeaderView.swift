import UIKit

class BooksHeaderView: UIView{
    
    let subTitleLabel = UILabel()
    let stackView = UIStackView()
    
    let titleLabel = UILabel()
    let textButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        setupUI()
        setupConstraints()
        setupActions()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        
        stackView.axis = .vertical
        stackView.spacing = 16
        stackView.alignment = .center
        
        titleLabel.text = "Welcome to Bookly"
        titleLabel.textColor = .blue
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        
        var configuration = UIButton.Configuration.filled()
        configuration.title = "Explore books"
        configuration.cornerStyle = .capsule
        
        subTitleLabel.text = "Discover your next favorite book"
        subTitleLabel.textColor = .secondaryLabel
        subTitleLabel.textAlignment = .center
        subTitleLabel.numberOfLines = 0
        
        textButton.backgroundColor = .systemRed
        textButton.configuration = configuration
            
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(textButton)
        stackView.addArrangedSubview(subTitleLabel)
        
        addSubview(stackView)
    }
    
    private func setupConstraints() {
                
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 24),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,constant: -20),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24)
        ])
        
    }
    
    private func setupActions() {
        textButton.addTarget(self, action: #selector(exploreBooks), for: .touchUpInside)
    }
    
    @objc func exploreBooks() {
        print("Explore Books pressed")
    }
    
}
