class Programmer < ActiveRecord::Base
    has_many :projects
    has_many :clients, through: :projects
end

