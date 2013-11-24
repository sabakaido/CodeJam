require 'jcode'

module LRModule
    def LR(string)
        ret_string = ""
        string.chars { |ch|
            if ch == "R"
                ret_string += "L"
            elsif ch == "L"
                ret_string += "R"
            else
                ret_string += ch
            end
        }
        return ret_string
    end
    module_function:LR
end

string = "RLXRL"

include LRModule
puts LR(string)
