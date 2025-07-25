    def self.evaluate_behaviours
      require "naive_bayes"

      behaviours = NaiveBayes.new(:active, :passive)

      ## Active
      behaviours.train(:active,      "The spider has spotted an enemy...", "spotting")
      behaviours.train(:active, "The spider goes chirbu chirbu chirbu...", "chirping")
      behaviours.train(:active,        "The spider shines its antenas...",  "shining")

      ## Passive
      behaviours.train(:passive,    "The spider has not spotted an enemy...",   "unseen")
      behaviours.train(:passive,                      "The spider hisses...",   "hisses")
      behaviours.train(:passive, "The spider remains in the dark passage...", "darkness")

      new_behaviours = File.readlines("data/gribatomaton/behaviours.txt")
      size_limit     = new_behaviours.size.to_i
      index          = 0

      size_limit.times do
        classification = behaviours.classify(new_behaviours[index])

        require "decisiontree"

        attributes = ["Behaviours"]

        training = [
          [0.1250,     "No Risk"],
          [0.3435,   "Mild Risk"],
          [0.5620, "Medium Risk"],
          [0.7805,   "High Risk"],
          [0.9990,    "Max Risk"],
        ]

        dec_tree = DecisionTree::ID3Tree.new(attributes, training, 1, :continuous)

        current_dectree = dec_tree
        current_dectree.train

        test = [classification[1], "Medium Risk"]
        decision = dec_tree.predict(test)

        puts "Predicted: Compared to #{test.last}, #{decision}"

        index = index + 1

        sleep(1.5)        
      end
    end

    evaluate_behaviours
