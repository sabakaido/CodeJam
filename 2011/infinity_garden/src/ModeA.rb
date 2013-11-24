class ModeA
    # メイン
    def run(tape)
        tape = reWriteInitialLX(tape)
        cp_tape = cpTape(tape)
        cp_tape = reWriteAllRL(cp_tape)
        tape = addTape(tape, cp_tape)
        return tape
    end

    # 頭文字のLとXの置き換え
    def reWriteInitialLX(tape)
        ret_tape = ""
        if tape =~ /^X/
            ret_tape = tape.sub(/^X/, "L")
        elsif tape =~ /^L/
            ret_tape = tape.sub(/^L/, "X")
        else
            ret_tape = tape
        end
        return ret_tape
    end

    # コピー
    def cpTape(tape)
        return tape
    end

    # RとLの置き換え
    def reWriteAllRL(cp_tape)
        ret_tape = ""
        cp_tape.chars { |ch|
            if ch == "R"
                ret_tape += "L"
            elsif ch == "L"
                ret_tape += "R"
            else
                ret_tape += ch
            end
        }
        return ret_tape
    end

    # テープ追加
    def addTape(tape, cp_tape)
        ret_tape = tape + cp_tape
    end
end
