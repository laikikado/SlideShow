import UIKit //Ensemble des objets graphiques

class ViewController: UIViewController { //Swift qui gère l'écran
    
    @IBOutlet weak var imageView: UIImageView!
    
    let images: [UIImage] = [ #imageLiteral(resourceName: "apple1.jpg"), #imageLiteral(resourceName: "apple2.png"), #imageLiteral(resourceName: "apple3.jpg"), #imageLiteral(resourceName: "apple4.jpg"), #imageLiteral(resourceName: "apple5.png"), #imageLiteral(resourceName: "apple6.png"), #imageLiteral(resourceName: "apple7"), #imageLiteral(resourceName: "apple8.png")]
    
    @IBAction func changeImage(_ sender: Any) {
        
        // Version 3.0 : Array - While Loop - randomImage
        var randomImage = images.shuffled().randomElement()
        while imageView.image == randomImage {
            randomImage = images.shuffled().randomElement()
        }
        imageView.image = randomImage
        
        /* Version 2.0 : Switch case
         let number = Int.random(in: 1 ... 7)
        switch number {
        case 2:
            imageView.image = #imageLiteral(resourceName: "apple2.png")
        case 3:
            imageView.image = #imageLiteral(resourceName: "apple3.jpg")
        case 4 :
            imageView.image = #imageLiteral(resourceName: "apple4.jpg")
        case 5 :
            imageView.image = #imageLiteral(resourceName: "apple5.png")
        case 6 :
            imageView.image = #imageLiteral(resourceName: "apple6.png")
        case 7 :
            imageView.image = #imageLiteral(resourceName: "apple5")
        default:
            imageView.image = #imageLiteral(resourceName: "apple1.jpg")
        }
         */
        
        /* Version 1.0 : If & else id
         if imageView.image == #imageLiteral(resourceName: "apple4") {
            imageView.image = #imageLiteral(resourceName: "apple1")
        } else if imageView.image == #imageLiteral(resourceName: "apple1") {
            imageView.image = #imageLiteral(resourceName: "apple5")
        } else if imageView.image == #imageLiteral(resourceName: "apple5") {
            imageView.image = #imageLiteral(resourceName: "apple6")
        } else if imageView.image == #imageLiteral(resourceName: "apple6") {
            imageView.image = #imageLiteral(resourceName: "apple3")
        } else if imageView.image == #imageLiteral(resourceName: "apple3") {
            imageView.image = #imageLiteral(resourceName: "apple7")
        } else if imageView.image == #imageLiteral(resourceName: "apple7") {
            imageView.image = #imageLiteral(resourceName: "apple2")
        } else if imageView.image == #imageLiteral(resourceName: "apple2") {
            imageView.image = #imageLiteral(resourceName: "apple4")
        }
         */
    }
}
