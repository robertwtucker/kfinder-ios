/**
 * Copyright 2017 Robert Tucker
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import UIKit
import RealmSwift

final class SearchTabCoordinator: TabCoordinator {
    let tabBarController: UITabBarController
    let tabBarItem: UITabBarItem
    var viewController: UIViewController

    init(tabBarController: UITabBarController, title: String, image: UIImage?) {
        self.tabBarController = tabBarController
        self.tabBarItem = UITabBarItem(title: title, image: image, selectedImage: nil)
        self.viewController = UIViewController()
    }

    func start() {
        let viewController: FoodSearchViewController = UIStoryboard.storyboard(.main).instantiateViewController()
        viewController.tabBarItem = tabBarItem
        viewController.viewModel = FoodSearchViewModel(realm: RealmProvider.appRealm)
        let navigationController = UINavigationController(rootViewController: viewController)
        self.viewController = navigationController
    }

}
