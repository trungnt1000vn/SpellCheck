//
//  TermsViewController.swift
//  SpellCheck
//
//  Created by Trung on 21/07/2023.
//  Copyright © 2023 Developers Usage. All rights reserved.
//

import UIKit
import SwiftSoup


class TermsViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .white
        let htmlString = "<p><font size = 20>After murdering Harry's parents, James and Lily Potter, evil Lord Voldemort puts a killing curse on Harry, then just a baby. The curse inexplicably reverses, defeating Voldemort and searing a lightning-bolt scar in the middle of the infant's forehead. Harry is then left at the doorstep of his boring but brutish aunt and uncle, the Dursleys.</font><p><p> For 10 years, Harry lives in the cupboard under the stairs and is subjected to cruel mistreatment by Aunt Petunia, Uncle Vernon and their son Dudley. On his 11th birthday, Harry receives a letter inviting him to study magic at the Hogwarts School of Witchcraft and Wizardry.</p><p>Harry discovers that not only is he a wizard, but he is a famous one. He meets two best friends, Ron Weasley and Hermione Granger, and makes his first enemy, Draco Malfoy. At Hogwarts the three friends are all placed into the Gryffindor house. Harry has a knack for the school sport, Quidditch, and is recruited onto the Gryffindor team as its star Seeker. </p><p>Harry discovers that not only is he a wizard, but he is a famous one. He meets two best friends, Ron Weasley and Hermione Granger, and makes his first enemy, Draco Malfoy. At Hogwarts the three friends are all placed into the Gryffindor house. Harry has a knack for the school sport, Quidditch, and is recruited onto the Gryffindor team as its star Seeker.</p><p><b>Above is Harry Potter categrory</b></p><p><i><u>This is test for underline and Italic</u></i></p>"
        


                                                                                                                
        do {

            let attributedString = try NSAttributedString(data: Data(htmlString.utf8),
                                                          options: [.documentType: NSAttributedString.DocumentType.html],
                                                          documentAttributes: nil)

            textView?.attributedText = attributedString
        } catch {
            print("Error displaying HTML content.")
        }

    }
}

