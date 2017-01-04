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

import Foundation
import UIKit
import RealmSwift

final class AppCoordinator: Coordinator {
    let window: UIWindow
    let rootViewController: UIViewController
    var childCoordinators: Array<Coordinator>

    init(window: UIWindow) {
        childCoordinators = Array<Coordinator>()
        rootViewController = UINavigationController()

        self.window = window
        self.window.backgroundColor = .white
        self.window.rootViewController = rootViewController
        self.window.makeKeyAndVisible()
    }

    func start() {
        let realm = RealmProvider.appRealm
        FoodItem.loadBaseData(realm: realm)
        
        let foodSearchCoordinator = FoodSearchCoordinator(rootViewController as! UINavigationController, realm: realm)
        childCoordinators.append(foodSearchCoordinator)
        foodSearchCoordinator.start()
    }

}
