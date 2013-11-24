class Robot
    @mode

    @mode_a
    @mode_b

    def initialize()
        @mode_a = ModeA.new;
        @mode_b = ModeB.new;
    end

    def run()
        if @mode == "a"
            @mode_a.run()
            @mode = "b"
        else
            @mode_b.run()
            @mode = "a"
        end
end
