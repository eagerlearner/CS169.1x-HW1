class Numeric

  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1 }

  def method_missing(method_id)

    # euros -> euro
    singular_currency = method_id.to_s.gsub( /s$/, '')

    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end

  end

  def in( currency_key )

    # euros -> euro
    singular_currency = currency_key.to_s.gsub( /s$/, '')
    self / @@currencies[singular_currency]
  
  end

end

class String
  # YOUR CODE HERE

  def palindrome?
    # YOUR CODE HERE
    s_palindrome = self.gsub(/[^A-Za-z0-9]/,'').upcase
    s_palindrome.reverse == s_palindrome
  end

end

module Enumerable
  # YOUR CODE HERE

  def palindrome?
    # YOUR CODE HERE

    if self.is_a? Array
        return self.reverse == self
    elsif self.is_a? Enumerator
        return self.to_a.reverse == self.to_a
    end

    return false

  end
  
end
