class EmailTemplate < ActiveRecord::Base
  attr_accessible :conference_id, :subject, :body, :email_template_type_id

  belongs_to :conference
  belongs_to :email_template_type

  self.inheritance_column = :class_type #because type field is reserved for rails
end
