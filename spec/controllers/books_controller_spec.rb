require 'spec_helper.rb'
 
  describe BooksController do
    describe "#new" do
      it "should be successful" do
        get :new
        response.should be_success
      end
  end
  
  describe BooksController do
    describe "#create" do
      it "should redirect to the book list page" do
        response.should redirect_to books_path
      end
  end
  
  describe BooksController do
    describe "#index" do
      it "should assign a list of existing books" do
        Book.create!(:name => "Endymion", :description => "weird")
        get :index
        assigns(:books).should_not be_nil
        assigns(:books).length.should == 1
      end
  end
end