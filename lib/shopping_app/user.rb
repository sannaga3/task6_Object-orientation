require_relative "item_manager"
require_relative "wallet"
require_relative "ownable"

class User
  include ItemManager
  include Ownable
  attr_accessor :name
  attr_reader :wallet

  def initialize(name)
    @name = name
    @wallet = Wallet.new(self) # UserインスタンスまたはUserを継承したクラスのインスタンスは生成されると、自身をオーナーとするウォレットを持ちます。
  end

end
