# Uncomment this line to define a global platform for your project
# platform :ios, ’9.0’
# use_frameworks!

abstract_target 'SharedDeps' do
pod ‘Utility’, :git => 'https://github.com/murali-git/Utility.git’
pod ‘Login’, :podspec => 'https://raw.githubusercontent.com/murali-git/Login/master/Login/Login.podspec’
pod ‘Shell’, :podspec => 'https://raw.githubusercontent.com/murali-git/Shell/master/Shell/Shell.podspec’

target ‘FortisMobileBanking’ do
	pod ‘FortisLogin’, :podspec => 'https://raw.githubusercontent.com/murali-git/Login/master/Login/FortisLogin.podspec’
    pod ‘FortisShell’, :podspec => 'https://raw.githubusercontent.com/murali-git/Shell/master/Shell/FortisShell.podspec’
end

target ‘HellobankMobileBanking’ do
	pod ‘HellobankLogin’, :podspec => 'https://raw.githubusercontent.com/murali-git/Login/master/Login/HellobankLogin.podspec’
    pod ‘HellobankShell’, :podspec => 'https://raw.githubusercontent.com/murali-git/Shell/master/Shell/HellobankShell.podspec'
end
end



post_install do |installer|
  installer.aggregate_targets.each do |at|
    files = at.user_targets.map{|t|
      t.resources_build_phase.files_references.select{|f|
        f.last_known_file_type == 'folder.assetcatalog'
      }.map{|f|
        Pathname.new(f.real_path).relative_path_from(f.project.path.dirname)
      }
    }.flatten
    script = at.copy_resources_script_path
    files = files.join('" "')
    `sed -i '' 's@OTHER_XCASSETS=.*@XCASSET_FILES+=(\"#{files}\")@' '#{script}'`
  end
end
