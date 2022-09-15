require 'rails_helper'

RSpec.describe Contact, type: :model do
  context "Method adulthood" do
    it "should return true" do
      contact = Contact.create(name: 'Jonas', age:18, observations:"", email:"jonas@gmail.com",phone:"9999999")
      expect(contact.adulthood?).to be true  
    end
    it "should return false" do
      contact = Contact.create(name: 'Jonas', age:10, observations:"", email:"jonas@gmail.com",phone:"9999999")
      expect(contact.adulthood?).to be false  
    end
    
  end
  
  
  
end
