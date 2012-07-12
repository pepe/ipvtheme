# Here you can override or add to the pages in the core website


require 'dispatcher'
Dispatcher.to_prepare do
    ActionController::Routing::Routes.draw do |map|
        map.with_options :controller => 'user' do |user|
            user.signchangeaddress '/profile/change_address',      :action => 'signchangeaddress'
            user.signchangedob '/profile/change_dob',      :action => 'signchangedob'
        end    

    end
end
