class Foobar

  def self.baz(a)
    # Class method
    # Call with `Foobar.baz`
    b = a.collect { |x| x.to_i + 2}
    b.keep_if { |x| x % 2 == 0 }
    b = b.uniq
    b.delete_if { |x| x > 10 }
    b.inject(0) { |sum, x| sum + x }
  end
end
