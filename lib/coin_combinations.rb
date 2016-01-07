class Float
  def coin_combinations
    change_arr = [[0, "penny"],
                  [0, "nickel"],
                  [0, "dime"],
                  [0, "quarter"],
                  [0, "dollar"]]
    output = ""
    change = self
    coin_values = {
      1.00 => 4,
      0.25 => 3,
      0.10 => 2,
      0.05 => 1,
      0.01 => 0
    }

    until change == 0
      coin_values.each_with_index do |(key, value), index|
        if (change - key) >= 0.0
          change_arr[value][0] += 1
          change = change.round(2) - key
          break
        end
      end
    end

    change_arr.reverse!
    change_arr.each do |num|
      temp = num[0].to_s + " " + num[1]

      if num[0] > 1
        if num[1] == "penny"
          temp[-1] = ''
          temp += "ies"
        else
          temp += "s"
        end
      end

      temp += ", "

      if num[0] == 0
        temp = ""
      end

      output += temp
    end

    output.strip!
    output[-1] = ''
    return output
  end
end
