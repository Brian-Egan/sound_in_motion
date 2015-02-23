module SoundInMotion
  class Play

    def self.local_file(file_name)
        if UIDevice.currentDevice.model.include?("Simulator")
            puts "Sounds will not play in the simulator. Please run on a iDevice."
        else
          puts "We will play #{file_name}"
        end
    end

  end
end