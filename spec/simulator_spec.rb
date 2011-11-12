require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'dsl/encounter_dsl'

describe "Simulator" do
  
  it "should parse a dsl" do
    fight = Holosim::DSL::EncounterDSL.load(File.expand_path(File.dirname(__FILE__) + '/boss_fight.sample'))
    pp fight
  end  
end