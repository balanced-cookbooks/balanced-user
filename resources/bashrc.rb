actions :create, :remove
default_action :create

attribute :username,      :kind_of => String, :name_attribute => true
attribute :home,          :kind_of => String

