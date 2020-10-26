class MenuItemComponent < ViewComponent::Base
  def initialize(url:, icon:, active:)
    @icon   = icon
    @active = active
    @url    = url
  end
end
