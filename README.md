This is a wrapper view controller that you can use in place of UIDocumentPickerViewController to solve the issue of `modalPresentationStyle = .fullScreen` not working correctly on UIDocumentPickerViewController.

###Example usage
```
let documentPickerContainer = DocumentPickerContainerViewController()
documentPickerContainer.documentPickerViewController.allowsMultipleSelection = true
documentPickerContainer.documentPickerViewController.shouldShowFileExtensions = true
documentPickerContainer.delegate = self
documentPickerContainer.modalPresentationStyle = .fullScreen
present(documentPickerContainer, animated: true)
```
Using code like this you can have a UIDocumentPickerViewController present fullscreen correctly.

The delegate of documentPickerContainer has to implement the delegate methods of UIDocumentPickerDelegate.
