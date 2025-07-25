    def self.actions
      behaviours = [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ], [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ], [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ]

      spot_enemy      = behaviours[0]
      make_noises     = behaviours[1]
      shine_spotlight = behaviours[2]

      ## Spotting Enemy
      row_options_s1 = [0, 1]
      col_options_s1 = [0, 1]
      arr_options_s1 = [0, 1]

      cur_row_s1 = row_options_s1.sample
      cur_col_s1 = col_options_s1.sample
      cur_arr_s1 = arr_options_s1.sample

      ## Noises Making
      row_options_m  = [0, 1]
      col_options_m  = [0, 1]
      arr_options_m  = [0, 1]

      cur_row_m = row_options_m.sample
      cur_col_m = col_options_m.sample
      cur_arr_m = arr_options_m.sample

      ## Shining Spotlight
      row_options_s2 = [0, 1]
      col_options_s2 = [0, 1]
      arr_options_s2 = [0, 1]

      cur_row_s2 = row_options_s2.sample
      cur_col_s2 = col_options_s2.sample
      cur_arr_s2 = arr_options_s2.sample

      ### Actual Behaviours
      spider_spot   = spot_enemy[cur_row_s1][cur_col_s1][cur_arr_s1]
      spider_chirbu = spot_enemy[cur_row_m][cur_col_m][cur_arr_m]
      spider_shine  = spot_enemy[cur_row_s2][cur_col_s2][cur_arr_s2]

      if spider_spot == true
        puts "The spider has spotted an enemy..."

        File.open("data/gribatomaton/behaviours.txt", "a") { |f|
          f.puts "The spider has spotted an enemy..."
        }
      else
        puts "The spider has not spotted an enemy..."

        File.open("data/gribatomaton/behaviours.txt", "a") { |f|
          f.puts "The spider has not spotted an enemy..."
        }
      end

      sleep(1.5)

      if spider_chirbu == true
        puts "The spider goes chirbu chirbu chirbu..."

        File.open("data/gribatomaton/behaviours.txt", "a") { |f|
          f.puts "The spider goes chirbu chirbu chirbu..."
        }
      else
        puts "The spider hisses..."

        File.open("data/gribatomaton/behaviours.txt", "a") { |f|
          f.puts "The spider hisses..."
        }
      end

      sleep(1.5)

      if spider_shine == true
        puts "The spider shines its antenas..."

        File.open("data/gribatomaton/behaviours.txt", "a") { |f|
          f.puts "The spider shines its antenas..."
        }
      else
        puts "The spider remains in the dark passage..."

        File.open("data/gribatomaton/behaviours.txt", "a") { |f|
          f.puts "The spider remains in the dark passage..."
        }
      end

      sleep(1.5)

      #GribatomatonAdvanced::StatisticalLabels.evaluate_behaviours
    end

    actions
