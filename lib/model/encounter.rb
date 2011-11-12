module Holosim
  module Model
    class Encounter
      attr_accessor :name
      def initialize(name)
        @name = name
        @phase_triggers = []
        @phase_abilities = []
      end

      def add_ability(ability, &block)
        a = Ability.new(ability)
        a.instance_eval(&block)
        @phase_abilities << a
      end
      def add_phase_trigger(step,trigger_condition,trigger_variable)
        @phase_triggers << [:phase_id => step, :condition => trigger_condition, :variable => trigger_variable]
      end
    end
  end
end