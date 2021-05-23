require "pry"

class Backer
    attr_accessor :name

    def initialize(name)
        @name = name 
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        select_project = ProjectBacker.all.select {|backed_project| backed_project.backer == self}
        select_project.map {|e| e.project}
    end
end