import UIKit
let screenWidth = UIScreen.main.bounds.width
let screenHeight = UIScreen.main.bounds.height
var favoriteKitchenItemsArray = [String]()

var kitchenUtensilArray = ["Spice container","Chopping board","Grater","Pie plate","Salad spinner","Colander","Butter dish","Oven glove","Napkin","Chopsticks","Rolling pin","Measuring spoon","Whisk","Wooden spoon","Strainer","Steak hammer","Spoon","Spatula","Mesh skimmer","Cleaver","Ladle","Knife","Kitchen shears","Fork","Cutlery","Corkscrew","Cake slice","Saucepan","Frying pan","Pressure cooker","Cooker","Apron","Bread basket","Bowl","Teapot","Measuring cup","Baking tray","Timer"]


var hindiKitchenUtensilArray =
    ["स्पाइस कंटेनर", "चॉपिंग बोर्ड", "ग्रेटर", "पाई प्लेट", "सलाद स्पिनर", "कोलंडर", "बटर डिश", "ओवेन दस्ताने", "नैपकिन", "चॉपस्टिक","रोलिंग पिन","मापने वाले चम्मच","व्हिस्क","वुडन स्पून "," स्ट्रेनर "," स्टीक हैमर "," स्पून "," स्पैटुला "," मेश स्किमर "," क्लीवर "," लैडल "," नाइफ ", "रसोई कैंची", "कांटा", "कटलरी", "कॉर्कस्क्रू", "केक स्लाइस", "सॉसपैन", "फ्राइंग पैन", "प्रेशर कुकर", "कुकर", "एप्रन", "ब्रेड बास्केट", " बाउल "," चायदानी "," मापने वाला कप "," बेकिंग ट्रे "," टाइमर "]

var kitchenAppliancesArray = ["Tea maker","Toaster","Kettle","Mixer","Refrigerator","Blender","Cabinet","Cupboard","Cooker hood","Microwave","Dish soap","Kitchen counter","Dinner table","Kitchen scale","Pedal bin","Grill","Drawer"]

var hindiKitchenAppliancesArrat = ["चाय बनाने वाला", "टोस्टर", "केटल", "मिक्सर", "रेफ्रिजरेटर", "ब्लेंडर", "कैबिनेट", "कपबोर्ड", "कुकर हुड", "माइक्रोवेव", "डिश साबुन", "रसोई काउंटर "," डिनर टेबल "," किचन स्केल "," पैडल बिन "," ग्रिल "," दराज "]


var cupsNGlassesArray = ["Wine glass","Water goblet","Margarita glass","Hurricane glass","Champagne flute","Cocktail glass","Irish coffee glass","Cognac balloon","Plastic cup","Mug","Beer mug","Weizen glass","Teacup","Demitasse","Footed pilsner glass","Collins glass","Vodka glass",
                         "Shot glass"]

var hindicupsNGlassesArray = ["वाइन ग्लास", "वॉटर गॉब्लेट", "मार्गरीटा ग्लास", "तूफान ग्लास", "शैम्पेन फ्लूट", "कॉकटेल ग्लास", "आयरिश कॉफी ग्लास", "कॉन्यैक बैलून", "प्लास्टिक कप","मग", "बीयर मग", "वीज़ेन ग्लास", "टेयची", "डेमटासिस", "फुटेड पिल्सनर ग्लास", "कोलिन्स ग्लास", "वोदका ग्लास","छोटे गिलास"]


var tablewareArray = ["Dessert fork","Tea spoon","White wine glass","Red wine glass","Water goblet","Bread and butter knife","Coffee cup","Saucer","Bread and butter plate","Napkin","Salad fork","Dinner fork","Dinner plate","Dinner knife","Salad knife"]

var hindiTableArray = ["डेज़र्ट फोर्क", "टी स्पून", "व्हाइट वाइन ग्लास", "रेड वाइन ग्लास", "वॉटर गॉब्लेट", "ब्रेड एंड बटर नाइफ", "कॉफ़ी कप", "सॉसर", "ब्रेड एंड बटर प्लेट", "नैपकिन", "सलाद कांटा", "डिनर कांटा", "डिनर प्लेट", "डिनर चाकू", "सलाद चाकू"]

class Constant: NSObject {
    func addPulseAnimationToButton(imageView:UIView){
        let pulse1 = CASpringAnimation(keyPath: "transform.scale")
        pulse1.duration = 0.6
        pulse1.fromValue = 1.0
        pulse1.toValue = 1.12
        pulse1.autoreverses = false
        pulse1.repeatCount = 1
        pulse1.initialVelocity = 0.5
        pulse1.damping = 0.8
        
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = 2.7
        animationGroup.repeatCount = 1
        animationGroup.animations = [pulse1]
        
        imageView.layer.add(animationGroup, forKey: "pulse")
        
    }
    
    func addCornerRadiusToButtons(btns:UIView){
        btns.layer.cornerRadius = 20
        btns.clipsToBounds = true
        btns.layer.borderWidth = 3
        btns.layer.borderColor = UIColor.black.cgColor
        addShadowsToImageView(btn:btns)
        
    }
    
    
    func addCornerRadiusToMakeCircle(btns:UIView){
        btns.layer.cornerRadius = 0.5 * btns.bounds.size.width
        btns.clipsToBounds = true
        btns.layer.borderWidth = 2
        btns.layer.borderColor = UIColor.white.cgColor
        addShadowsToImageView(btn:btns)
        
    }
    
    
    func addShadowsToImageView(btn:UIView){
        btn.layer.shadowColor = UIColor.black.cgColor
        btn.layer.shadowOffset = CGSize(width: 1, height: 1)
        btn.layer.shadowRadius = 1
        btn.layer.shadowOpacity = 1.0
        
        
    }
    
    
    
}

