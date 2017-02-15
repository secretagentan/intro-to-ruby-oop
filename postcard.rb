class Postcard
  attr_accessor(:to, :message, :postage)
  # attr_accessor does the following:
    # def to
    #   @to
    # end
    # def to=(to)
    #   @to = to
    # end
    # def message
    #   @message
    # end
    # def message=(message)
    #   @message = message
    # end
    # def postage
    #   @postage
    # end
    # def postage=(postage)
    #   @postage = postage
    # end

  def initialize (to, message)
    @to = to
    @message = message
    @postage = 0.25
  end
end

p1 = Postcard.new("Mochi", "herro mochi")

class Mailbox
  def initialize
    @contents = []
  end

  def full?
    @contents.count >= 5
  end

  def total_postage
    @contents.map(&:postage).reduce(:+)
  end

  def add(post)
    @contents.push(post) unless full?
  end
end

p1.Postcard.new("mom", "hi mom")
p2.Postcard.new("dad", "hi dad")
# m1.Mailbox.new()
