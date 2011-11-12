module Holosim
  module Model
=begin
 TODO needs fleshed out
=end
    class Ability
      def initialize(name)
        @range = 10
        @cooldown = 0
        @effect = []
        @duration = 1
        @channeled = false
        @interruptable = false
        @phases = []
        @name = name
      end
      def range(distance)
        @range = distance
      end
      def cooldown(amount)
        @cooldown = amount
      end
      def slow_by(amount, type=nil)
      end
      def reduce_accuracy_by(amount)
      end
      def duration(amount)
        @duration = amount
      end
      def phase(*phases)
        if phases.size > 1
          phases.each do |p|
            @phases << p
          end
        else
          @phases << phases[0]
        end
      end
      def boost_max_health(amount)
      end
      def damage(amount,type)
      end
      def knockdown()
      end
    end
  end
end