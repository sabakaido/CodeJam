class ModeB
    def run(tape)
        cp_tape = copyTape(tape)
        cp_tape = revTape(cp_tape)
        return addTape(tape, cp_tape)
    end

    def copyTape(tape)
        return tape
    end

    def revTape(cp_tape)
        return cp_tape.reverse
    end

    def addTape(tape, cp_tape)
        ret_tape = tape + cp_tape
        return ret_tape
    end
end
