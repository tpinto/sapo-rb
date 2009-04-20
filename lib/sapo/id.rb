module SAPO
  class ID
    attr_accessor :email, :password, :primary, :token
    
    def initialize(email, password)
      self.email = email
      self.password = password
      
      output = REXML::Document.new(open("https://services.sapo.pt/STS/GetPrimaryId?ESBUsername=#{self.email}&ESBPassword=#{self.password}").read)
      self.primary = output.root.elements['PrimaryId'].text
      self.token = output.root.elements['ESBToken'].text
    end
  end
end