project 'KFinder.xcodeproj'

platform :ios, '10.0'

target 'KFinder' do
  use_frameworks!

  pod 'CSV.swift', '~> 1.1'
  pod 'RxSwift', '~> 3.2'
  pod 'RxCocoa', '~> 3.2'
  pod 'RealmSwift', '~> 2.4'
  pod 'RxRealm', '~> 0.5'
  pod 'Action', '~> 2.2'

  target 'KFinderTests' do
    inherit! :search_paths
  end

  target 'KFinderUITests' do
    inherit! :search_paths
  end
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
