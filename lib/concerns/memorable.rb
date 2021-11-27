module Memorable
    # Here when refactoring we remove the self because it is implicit in this scenario
        module ClassMethods
          def reset_all
            self.all.clear
          end
      
          def count
            self.all.count
          end
        end
    end
end