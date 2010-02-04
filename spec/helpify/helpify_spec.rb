require File.dirname(__FILE__) + '/../spec_helper'


describe "Helpify" do 

  describe "Helpable models" do
    it "should list closed_help when helpify is added" do 
      HelpableModel.new.closed_helps.should == []
    end 

    it "should not list closed_help when helpify is added" do 
      lambda { UnhelpableModel.new.closed_helps }.should raise_error(NoMethodError)
    end 
  
  end
   
  describe "wants_help_in?" do

    before(:each) do
      [HelpableModel, ClosedHelp].each(&:delete_all)
      @helpable_object = HelpableModel.create!(:title => 'foo')
    end 

    it "should return true if help was displayed" do  
      ClosedHelp.create(:helpable_id => @helpable_object.id, :helpable_type => @helpable_object.class.name, :url => "users/index")
      @helpable_object.wants_help_on?("users/index").should be_false  
    end

    it "should return false if help was not displayed" do  
      @helpable_object.wants_help_on?("users/index").should be_true  
    end
     
    it "should not add the same records" do 
      ClosedHelp.create(:helpable_id => @helpable_object.id, :helpable_type => @helpable_object.class.name, :url => "users/index")
      ClosedHelp.create(:helpable_id => @helpable_object.id, :helpable_type => @helpable_object.class.name, :url => "users/index")
      ClosedHelp.all.nitems.should equal(1)
    end

  end
end
