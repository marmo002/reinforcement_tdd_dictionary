class Dictionary

  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(entries)
    case entries
      when String then @entries[entries] = nil
      when Hash then @entries.merge!(entries)
    end
  end

  def keywords
    entries.keys.sort
  end

  def include?(string)
    entries.has_key?(string)
  end

  def find(string)
    entries.select do |key, values|
      key.start_with?(string)
    end
  end
end
