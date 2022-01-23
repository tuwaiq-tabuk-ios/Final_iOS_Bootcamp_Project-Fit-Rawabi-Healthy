//
//  FoodViewController.swift
//  The final project-fitness-rawabi bajafar
//
//  Created by روابي باجعفر on 14/05/1443 AH.
//

import UIKit

class FoodViewController: UIViewController{
  
  // MARK: - IBOutlets
  
  @IBOutlet var foodSearch: UISearchBar!
  
  
  
  // MARK: - Properties
  
  let searchController = UISearchController()
  
  var Array = [Food]()
  var filteredData:[String] = []
  var filteredStates = [Food]()
  var count = 0
  
  
  var foods =  [
    Food(name: "breakfast",
         image: UIImage(named: "breakfast"),
         ingredients: ["3  tablespoons extra virgin olive oil",
                       "2  onions, chopped",
                       "1  tablespoon minced garlic",
                       "3  dried chilies, optional",
                       "3  sprigs thyme or rosemary",
                       "8  eggs", "3  cups chopped tomatoes (canned are fine)",
                       "talian seasoning",
                       "Rosemary",
                       "pinch of dry thyme",
                       "Squeeze a cup of sweet green pepper, finely chopped",
                       "Salt and pepper",
                       "½Chopped parsley leaves for garnish"
                      ],
         
         desc: "In a small saucepan we put the tomatoes, sweet green pepper, cherry tomatoes, tomato pinch, black pepper pinch; We put the pot on a slow fire.Put oil in a 10- or 12-inch skillet and turn heat to medium. A minute or 2 later, add onions, garlic, chilies if you're using them and herb. Cook, stirring, for a minute or 2, then cover pan and turn heat to medium-low. Cook until onions are very soft but not brown, 10 to 15 minutes.\n Meanwhile, put eggs in cold water to cover. Turn heat to medium-high, bring to a boil, then turn off heat and cover; set a timer for 9 minutes.\n When onions are done, uncover and turn heat to medium-high. Add tomatoes, a pinch of salt and some pepper, and cook, stirring occasionally, until mixture bubbles. Cook for about 5 more minutes.\n When eggs are done, put them in a bowl of ice water, then place under cold running water until they feel cool, then peel. When tomato sauce is ready, add eggs to it; cook an additional 5 minutes or so. Taste and adjust seasoning, garnish and serve hot.\n Transfer the eggs with the tomatoes from the tray to a flat serving dish, decorate the surface with mint leaves and fresh tomato slices, and serve hot. "),
    
    
    Food(name: "lunch",
         image: UIImage(named: "lunch"),
         ingredients: ["500g/1lb 2oz chicken breasts, cut into bite-sized pieces ,1 garlic clove, grated",
                       "75g/2½oz plain yoghur 1 tbsp tikka spice powder",
                       "1 chicken stock pot, made up with 100ml/3½fl oz boiling water",
                       "2 medium onions, sliced",
                       "2 garlic cloves, sliced",
                       "1 tsp grated fresh ginger1 ½ tbsp tikka spice powder",
                       "1 x 400g tin chopped tomatoes1 small bunch fresh coriander, chopped, plus extra for garnish salt and freshly ground black pepper",
                       " 3 tbsp plain yoghurt "
                      ],
         
         desc: "For the marinated chicken, mix together all the ingredients in a bowl, cover with cling film and put in the fridge aside to marinate while you make the sauce.\n For the tikka masala sauce, bring the stock to a simmer in a saucepan. Add the sliced onions, garlic and ginger. Cut a square of baking paper or greaseproof paper large enough to cover the mixture in the pan. Push it right down to cover the onions and garlic closely, cover the pan with a lid and simmer very gently for 15 minutes.\n Remove the paper. The onions should be translucent and soft. Add the tikka spice powder, the tinned tomatoes and the chopped coriander and bring to the boil. Reduce the heat slightly and simmer briskly for 20-30 minutes, until the sauce is thickened. Season with salt and freshly ground black pepper then set aside to cool slightly.\n Meanwhile, preheat the grill to its hottest setting. Cover a baking tray with foil, and then place the marinated chicken on the tray in a single layer. Grill the chicken for 15 minutes, or until the chicken pieces are cooked through. Using a stick blender or food processor, blend the tikka masala sauce until smooth. Return to the heat and warm through, then add the plain yoghurt."),
    
    Food(name: "Snack",
         image: UIImage(named: "Snack"),
         ingredients: ["2 cups diced fresh pineapple",
                       "1 pound strawberries, hulled and sliced",
                       "½ pint blackberries, halved",
                       "4 ripe kiwis, peeled, halved and sliced",
                       "1 cup Lime Yogurt Fruit Salad Dressing (optional; see associated recipe",
                       "4 cups shaved Brussels sprouts",
                       "¼ cup extra-virgin olive oil, plus extra for drizzling",
                       "¼ cup fresh lemon juice",
                       "½ cup pine nuts, toasted",
                       "⅓ cup dried cranberries",
                       "⅓ cup grated pecorino cheese, optional",
                      " ⅓ cup chopped chives",
                       "Sea salt and freshly ground black pepper"
                       
                       
                     
                      ],
         
        
         desc: "Thinly slice the Brussels sprouts using a mandoline if you have one. Place them into a medium bowl and toss with the olive oil, lemon juicepecorino cheese, chives, and pinches of salt and pepper., pine nuts, cranberries, Combine pineapple, strawberries, blackberries and kiwi in a large bowl. Serve with yogurt dressing, if desired.\n Serving Size: 3/4 cup\nToss watermelon with 1 tablespoon of the juice mixture in a medium bowl. Arrange in a trifle bowl.\n Repeat with blackberries, honeydew, strawberries, pineapple, grapes and cantaloupe, tossing each fruit with 1 tablespoon of the juice mixture and layering it decoratively in the bowl. Garnish with mint, if desired.\nPer Serving: 57 calories; protein 1g; carbohydrates 13.9g; dietary fiber 3g; sugars 9.1g; fat 0.4g; vitamin a iu 82.5IU; vitamin c 73.6mg; folate 28.3mcg; calcium 25.8mg; iron 0.5mg; magnesium 18.1mg; potassium 220.6mg; sodium 1.8mg; thiamin 0.1mg. \n Equipment: Trifle bowlTo make ahead: Refrigerate for up to 2 hoursLet the salad sit at room temperature for 15 minuteServe on a plate and add to it to decorate the pomegranate seeds with a spoon and fork."),
    
    Food(name: "dinner",
         image: UIImage(named: "dinner"),
         ingredients: ["250 g chicken breasts 1 large onion",
                       "1/2 red pepper 1/2 green pepper",
                       "1/2 yellow pepper 2 tbsp olive oil",
                       "1 tbsp smoked paprika 1 tbsp smoked bbq sauce",
                       "salt and pepper to taste",
                       "4 tbsp sour cream / mayonnaise to serve parsley to decorate",
                       " 2 tbsp tomato paste4 tortilla wraps ",
                       "1 teaspoon dried thyme (or thyme, parsley, rosemary)",
                       "1 teaspoon salt (use seasoned salt, adobo, or chicken salt for extra flavor)",
                     "  1 teaspoon chili powder (or 12 teaspoons cayenne pepper) - optional to stimulate heat",
                      " 1 tablespoon olive oil"
                      ],
         
         desc: "Preheat oven to 425°F | 220°C (standard ovens) or 390°F | 200°C (fan forced or convection ovens).Using a meat mallet or rolling pin, pound each chicken breast to 0.8-inch | 2cm at the thickest part. Make sure your fillets are all the same thickness to ensure even  To cook the chicken, heat up a grill pan, cut the chicken breasts into cubes and place them in a bag.\n Add one tablespoon of oil, paprika, bbq sauce, pepper and salt, seal the bag and shake well.\n Grill on both sides until cooked through, approximately 3 minutes on each side.\n Remove from the heat and set aside.\n  Cut the onion and peppers into strips, add the remaining oil to a pan, and fry the onion with a pinch of salt until tender.\n Add the peppers and stir, leaving them to cook for about 5 minutes until slightly tender.\n Season well with salt and pepper, add the tomato paste and chicken, then stir. Garnish with parsley and remove from the heat.\n Warm up the tortilla wrap, spread the sour cream or mayonnaise over, then add chicken mixture to it.\n Wrap well, and serve immediately. "),
  ]
  
  
  
  // MARK: - IBOutlets
  
  @IBOutlet var healthyFood: UITableView!
  
  
  
  // MARK: - View controller lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //filteredStates = statess
    overrideUserInterfaceStyle = .light
    navigationItem.setHidesBackButton(true, animated: true)
    //Array = deta
    // Do any additional setup after loading the view.
    healthyFood.dataSource = self
    healthyFood.delegate = self
    
  }
  
}



  
  
  // MARK: - Table view data source

extension FoodViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView,
                 numberOfRowsInSection section: Int) -> Int {
    return foods.count
  }
  
  
  func tableView(_ tableView: UITableView,
                 heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 118
  }
  
  
  
  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "foodCell") as!FoodCell
    
    let currentFood = foods[indexPath.row]
    cell.FoodNameLabel.text = currentFood.name
    cell.FoodImageView.image = currentFood.image
    cell.FoodImageView.layer.cornerRadius = cell.FoodImageView.frame.width/2
    //cell.textLabel?.text = filteredData[indexPath.row]
    return cell
    
  }

}



// MARK: - Navigation

extension FoodViewController:  UITableViewDelegate {

  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let Food = foods[indexPath.row]
    print(Food.name)
    let vc =  storyboard?
      .instantiateViewController(withIdentifier: "detailsVC") as? DetailsViewController
    
    if let viewController = vc {
      viewController.food = Food
      present(viewController, animated: true, completion: nil)
    }
    
  }
  
  
}
