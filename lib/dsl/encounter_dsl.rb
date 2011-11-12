module Holosim
  module DSL
    class EncounterDSL
      attr_reader :encounter

      def self.load(filename)
        dsl = EncounterDSL.new()
        dsl.instance_eval(File.read(filename))
        dsl.encounter
      end
      
      def boss_fight(name)
        @encounter = Holosim::Model::Encounter.new(name)
      end

      def ability(name,&block)
        puts "Processing ability"
        @encounter.add_ability(name,&block)
      end
      def phase_trigger(phase_number, trigger, trigger_type)
        puts "Processing phase #{phase_number}"
        @encounter.add_phase_trigger(phase_number,trigger,trigger_type)
      end
    end
  end
end