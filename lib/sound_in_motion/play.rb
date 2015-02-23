module SoundInMotion
  class Play

    def self.local_file(file_name)
        if UIDevice.currentDevice.model.include?("Simulator")
            puts "Sounds will not play in the simulator. Please run on a iDevice."
        else
          sound_id = Pointer.new('I')
            # local_file_name = NSURL.fileURLWithPath(File.join(NSBundle.mainBundle.resourcePath, which))
            AudioServicesCreateSystemSoundID(NSURL.fileURLWithPath(File.join(NSBundle.mainBundle.resourcePath, file_name)), sound_id)
            AudioServicesPlaySystemSound(sound_id[0])
        end
    end

  end
end