module StringExtensions
  refine String do
    def reverse
      orig_reverse = each_char.to_a.reverse.join
      "[#{orig_reverse}]"
    end
  end
end

module StringStuff
  using StringExtensions

  puts "my_string".reverse # => # >> [gnirts_ym]
end

puts "my_string".reverse # >> gnirts_ym
