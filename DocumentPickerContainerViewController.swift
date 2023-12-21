import UIKit

class DocumentPickerContainerViewController: UIViewController {

    weak var delegate: UIDocumentPickerDelegate?
    var documentPickerViewController : UIDocumentPickerViewController = UIDocumentPickerViewController(
        forOpeningContentTypes: [.image])
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        documentPickerViewController.delegate = delegate
        addChild(documentPickerViewController)
        documentPickerViewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight ]
        view.addSubview(documentPickerViewController.view)
        documentPickerViewController.didMove(toParent: self)
    }
    
    deinit {
        documentPickerViewController.willMove(toParent: nil)
        documentPickerViewController.view.removeFromSuperview()
        documentPickerViewController.removeFromParent()
    }
}
