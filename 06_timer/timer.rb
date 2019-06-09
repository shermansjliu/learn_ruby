class Timer
    attr_reader :seconds, :minutes, :hours
    def initialize
        @seconds = 0
        @minutes = 0
        @hours = 0
    end

    def seconds= seconds
        @seconds = seconds
    end

    def time_string
        @hours =   @seconds / 3600
        @minutes = @seconds / 60
        @seconds = @seconds % 60



        if @minutes > 60
            @minutes = @minutes % 60
        end

        @hours = convert_to_string(@hours)
        @minutes = convert_to_string(@minutes)
        @seconds = convert_to_string(@seconds)
        "#{hours}:#{minutes}:#{seconds}"
    end

    def convert_to_string time
        time = time.to_s
        if time.length < 2
            time = "0#{time}"
        end
        time
    end
end
