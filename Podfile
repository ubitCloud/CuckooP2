# Uncomment the next line to define a global platform for your project
# platform :ios, '13.0'

def oc_mock
  pod 'OCMock', '3.8.1'
end

target 'CuckooP2' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for CuckooP2
pod 'Alamofire', '~> 5.9.1'
pod 'OCMock', '3.8.1'
pod 'Cuckoo', '~> 2.0.7'

  target 'CuckooP2Tests' do
    inherit! :search_paths
    # Pods for testing
pod 'Alamofire', '~> 5.9.1'
pod 'OCMock', '3.8.1'
pod 'Cuckoo', '~> 2.0.7'
  end

  target 'CuckooP2UITests' do
    # Pods for testing
pod 'Alamofire', '~> 5.9.1'
pod 'OCMock', '3.8.1'
pod 'Cuckoo', '~> 2.0.7'
  end

end
