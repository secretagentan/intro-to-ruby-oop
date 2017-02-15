# require('./mailbox.rb')

# class Letter < Mailbox
class Letter
  def initialize(to, from, message)
    @to = to
    @from = from
    @message = message
    @postage = 0.75
  end
end

l1 = Letter.new("Mochi", "An", "herro doge")
