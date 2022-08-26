module Container
    MyContainer = Dry::Container.new
  
    MyContainer.register(:repo) { Business::Repository.new }
    MyContainer.register(:create_inscription) { Business::CreateInscription.new }
    MyContainer.register(:create_matriculation) { Business::MatriculationStudent.new }
  
    Import = Dry::AutoInject(MyContainer)
end