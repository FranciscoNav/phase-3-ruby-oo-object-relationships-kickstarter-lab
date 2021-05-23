class Project
    attr_accessor :title

    def initialize(title)
        @title = title 
    end
    
    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        select_backer = ProjectBacker.all.select {|backed_project| backed_project.project == self}
        select_backer.map {|e| e.backer}
    end
end