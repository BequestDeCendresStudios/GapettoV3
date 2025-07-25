require "Communemashin"
require "BequestGribatomatonAdvanced"

#############################################################################
#                           Medication Counter                              #
#############################################################################
# This analyses and verifies the maintainers medication schedule, to remind #
# to take a break sometimes to have some medication.                        #
#############################################################################
def med_counter; Communemashin::Counters.medication_counter; end
#############################################################################
#                            Economic Systems                               #
#############################################################################
# This simulates a progressive taxation system and evaluates whether a      #
# system has economic thriving or class disparity.                          #
#############################################################################
## Decision Trees
def generate_albert;                       Communemashin::EconomicSystems.generate_albert; end
def generate_andy;                           Communemashin::EconomicSystems.generate_andy; end
def generate_bethany;                     Communemashin::EconomicSystems.generate_bethany; end
def decision_from_contribution; Communemashin::EconomicSystems.decision_from_contribution; end

## Naive Bayes
def alberts_contributions;     Communemashin::EconomicSystems.alberts_contributions; end
def andys_contributions;       Communemashin::EconomicSystems.alberts_contributions; end
def bethanys_contributions;   Communemashin::EconomicSystems.bethanys_contributions; end

## Supplement Inputs
def supplement_inputs;         Communemashin::EconomicSystems.supplement_inputs; end
def communist_or_fascist;   Communemashin::EconomicSystems.communist_or_fascist; end

def economic_systems
  Communemashin::EconomicSystems.cycles
end
#############################################################################
#                           Reddit Bot Checker                              #
#############################################################################
# This checks and verifies whether a reddit user is who they say they are   #
# or whether they might have had some digital enhancement, or are entirely  #
# artificially intelligent profiles.                                        #
#############################################################################
def reddit_bot;           Communemashin::RedditBot.other_behaviours; end
def if_a_bot_then_what; Communemashin::RedditBot.if_a_bot_then_what; end
#############################################################################
#                          Spatial Relationships                            #
#############################################################################
# This calculates the size of objects, space between objects, and pipes the #
# data through a hybrid of decision tree and naive bayes learning algorithm #
#############################################################################
def spatial_relationships_static
  SpatialRelationships::Static_Perimeters.positive_perimeters
  SpatialRelationships::Static_Perimeters.negative_perimeters
end

def spatial_relationships_dynamic
  SpatialRelationships::Dynamic_Perimeters.positive_perimeters
  SpatialRelationships::Dynamic_Perimeters.negative_perimeters
end

def spatial_evaluator
  SpatialRelationships::SpatialEvaluator.evaluate_body
end
#############################################################################
#                          Probability Matrix                               #
#############################################################################
# This generates a random set of four probabilities less than 0.9999 for    #
# the purpose of creating new decision trees. This is formatted in the form #
# of floats that can be used to train algorithms.                           #
#############################################################################
def low_logic_rule;           ProbabilityMatrix::GetMatrix.low_logic_rule; end
def mild_logic_rule;         ProbabilityMatrix::GetMatrix.mild_logic_rule; end
def medium_logic_rule;     ProbabilityMatrix::GetMatrix.medium_logic_rule; end
def high_logic_rule;         ProbabilityMatrix::GetMatrix.high_logic_rule; end
def max_logic_rule;           ProbabilityMatrix::GetMatrix.max_logic_rule; end
def measure_probability; ProbabilityMatrix::GetMatrix.measure_probability; end
#############################################################################
#                        Palettier Color Science                            #
#############################################################################
# This allows te analyst to inquire about specific facts about colors, from #
# the name of the color to other information.                               #
#############################################################################
def chatbot;        Brain::MemoryMachine.palettier_chat; end
def memory_rewrite;       Brain::MemoryMachine.memories; end
#############################################################################
#                                  SPE                                      #
#############################################################################
def xakutisfiqe; Communemashin::Counters.xakutisfiqe; end
def mengexakume; Communemashin::Counters.mengexakume; end
#############################################################################
#                                  ESDF                                     #
#############################################################################
def generate_one_liner
  Communemashin::ESDF.word_class
  Communemashin::ESDF.nouns
  Communemashin::ESDF.adjectives
  Communemashin::ESDF.subjects
  Communemashin::ESDF.verbs
  Communemashin::ESDF.adverbs
end

def analyze_one_liner
  Communemashin::ESDF.analyze_dialogue
end

require "BequestGribatomatonAdvanced"
#############################################################################
#                        Gribatomaton Behaviours                            #
#############################################################################
# Gribatomaton acts like a creature between a spider and a pig, and does    #
# randomized behaviours. This tool analyses those behaviours when random    #
# under specific constraints. This will later form the basis for the griba  #
# inside the text adventures themselves.                                    #
#############################################################################
def gribatomaton_action
  BequestGribatomatonAdvanced::Behaviours.actions
end

def gribatomaton_adaptation
  BequestGribatomatonAdvanced::AdaptiveMechanics.learn_behaviours

  actions = File.readlines("data/gribatomaton/learned_behaviours.txt")

  puts actions.sample
end

def gribatomaton_analyze
  BequestGribatomatonAdvanced::StatisticalLabels.evaluate_behaviours
end

############################################################################################
#                                         Family Tree                                      #
############################################################################################
# This is a family tree generator based on different religious figures in Christanity and  #
# and Buddhism. Using the descendants as a frame of reference.                             #
############################################################################################
## Generations that emerge.
def tree_nodes;             GenerateTree::FamilyLineage.tree_nodes_and_probs; end
def first_generation;    GenerateTree::FamilyLineage.first_generated_die_off; end
def second_generation; GenerateTree::FamilyLineage.second_generation_die_off; end

## Object environments that emerge.
def measure_probs; GenerateTree::FamilyLineage.measuring_object_probabilities; end

### Comparisons in the environment.
def first_comparison;   GenerateTree::FamilyLineage.first_comparison; end
def second_comparison; GenerateTree::FamilyLineage.second_comparison; end
def third_comparison;   GenerateTree::FamilyLineage.third_comparison; end

### Generates Dungeons
def generate_forest;                GenerateTree::DungeonGeneration.forest; end
def generate_graveyard;          GenerateTree::DungeonGeneration.graveyard; end
def generate_catecombs;          GenerateTree::DungeonGeneration.catecombs; end
def generate_caverns;              GenerateTree::DungeonGeneration.caverns; end
def generate_temple;    GenerateTree::DungeonGeneration.underground_temple; end
def generate_lair;          GenerateTree::DungeonGeneration.kumabatto_lair; end
##################################################################################
#                                  SHIKARIZE                                     #
#                             Anos Shikkakos De Rizos                            #
#                                 Yielding Rice                                  #
##################################################################################
# This utility measures whether or not a particular bag of rice has expired or   #
# not, and therefore whether it is suitable for rationing to needy family that   #
# are effected by years of conflict.                                             #
##################################################################################
#def rice_viability;      MeasureFamine::RiceCrop.viability_profile; end
#def inference_prof; MeasureFamine::RiceCrop.inference_from_profile; end
###############################################################################################
#                                       Colors In Context                                     #
###############################################################################################
# This enables the framework to generate new contexts for when a color might be referenced or #
# said in conversation, such as discovering an untranslated phrase about a color in an        #
# ancient language.                                                                           #
###############################################################################################
def colors_in_context; ColorScience::Analyze.colors_in_context; end
###############################################################################################
#                                        Assign Color Data                                    #
###############################################################################################
# This allows the system to assign identifiers, English names, hex codes, and invented lang   #
# names for colors into a format the naive bayes and decision tree algorithm for recommending #
# new information can use.                                                                    #
###############################################################################################
def color_data; ColorScience::Analyze.color_data; end
###############################################################################################
#                                        Predict Colors                                       #
###############################################################################################
# Predict new color probabilities based on the assigned information provided, and convert     #
# that into a probability that the decision tree can use.                                     #
###############################################################################################
def color_probabilitiy; ColorScience::Analyze.predict_colors; end
###############################################################################################
#                                       Suggest New Color                                     #
###############################################################################################
# Suggest a new color to the player that can go into their color palette, rather than         #
# chasing a random color name or hex code at random.                                          #
###############################################################################################
def color_suggestions; ColorScience::Analyze.suggest_next_color; end

#rice_viability
#inference_prof

## Controls
Commands::Choose.select
