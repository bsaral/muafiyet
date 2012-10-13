 class Ability
        include CanCan::Ability

          def initialize(user)
            user ||= User.new # guest user (not logged in)

            if user.role? :student
              # hiç bir şey yapamasın
              # FIXME: sadece / görebilsin
            end

            if user.role? :admin
              can :manage, User
              # can :manage, Question

            end
          end
        end 
