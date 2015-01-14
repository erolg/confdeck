class BaseForm
  include ActiveModel::Model
  include Virtus

  # Forms are never themselves persisted
  def persisted?
    false
  end

  def save
    if valid?
      persist!
      true
    else
      false
    end
  end
end