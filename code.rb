module PartyGoer
  
  def drink
    @drinks ||= 0
    @drinks += 1
    if @drinks > 3
      return false
    else
      return true
    end
  end

  def sing
    return "i just met you, and this is crazy..."
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def self.included(base)
    base.extend(Invitation)
  end

  module Invitation
    def invited?
      true
    end
  end
end

class PersonalizedHavocError < StandardError
end
