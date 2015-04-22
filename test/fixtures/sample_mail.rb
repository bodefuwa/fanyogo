class SampleMail < Falomo::Base
  attributes :name, :email

  def headers
    { to: "recipient@example", from: self.email }
  end
end
