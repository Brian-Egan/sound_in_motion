module SoundInMotion
  class Play
    # See list of system sounds here: https://github.com/TUNER88/iOSSystemSoundsLibrary
    # To Do: Add aliases for those system sound id numbers.

    def self.local_file(file_name)
        if UIDevice.currentDevice.model.include?("Simulator")
            puts "Sounds will not play in the simulator. Please run on a iDevice."
        else
          sound_id = Pointer.new('I')
          AudioServicesCreateSystemSoundID(NSURL.fileURLWithPath(File.join(NSBundle.mainBundle.resourcePath, file_name)), sound_id)
          AudioServicesPlaySystemSound(sound_id[0])
        end
    end

  end
end