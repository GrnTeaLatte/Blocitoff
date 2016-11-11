class WelcomeController < ApplicationController
  def index
    describe "GET index" do
      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end
  end

  def about

   describe "GET about" do
     it "renders the about template" do
       get :about
       expect(response).to render_template("about")
     end
   end
  end
end
