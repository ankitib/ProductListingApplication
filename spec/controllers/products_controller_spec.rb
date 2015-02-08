require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do

describe 'POST #create' do
	context 'with valid attributes' do
	    it 'creates the product' do
	       post :create, product: attributes_for(:product)
	       expect(Product.count).to eq(1)
	    end
	end

	context 'with invalid attributes' do
	    it 'does not create the product with no name' do
	        post :create, product: attributes_for(:product, name: nil)
	        expect(Product.count).to eq(0)
	    end

	    it 'does not create the product with no price' do
	        post :create, product: attributes_for(:product, price: nil)
	        expect(Product.count).to eq(0)
	    end

	    it 'does not create the product with no description' do
	        post :create, product: attributes_for(:product, description: nil)
	        expect(Product.count).to eq(0)
	    end
	end
end

describe 'GET #index' do
	it 'populates an array of products' do
	    product = FactoryGirl.create(:product)
	    get :index
	    assigns(:products).should eq([product])
	end

	it "renders the :index view" do 
	    get :index 
	    response.should render_template :index 
	end 
end

describe "GET #show" do 
	it "assigns the requested product to @product" do 
		product = FactoryGirl.create(:product)
		get :show, id: product 
		assigns(:product).should eq(product) 
	end
end

describe "GET #delete"
	it "assigns the requested product to product" do
		product = FactoryGirl.create(:product)
		get :delete,:product_id=>product
		assigns(:product).should eq(product) 	
	end

describe "GET #new"
	it "creates a new product" do 
		get :new 
        assigns(:product).should_not eq(nil)
	end

describe "GET #edit"
	it "edit the selected product from @product" do
        product = FactoryGirl.create(:product)
		get :edit, id: product 
		assigns(:product).should eq(product) 
    end

describe "PUT #update"
	it "check attribute is updated" do
		product = FactoryGirl.create(:product)
	    @attr={:name=>"New Name"}
		put :update, :id => product, :product => @attr
    	product.reload
        assigns(:product).name.should eq("New Name") 
    end

describe "DELETE #destroy"
	it "delete the requested product" do
        product = FactoryGirl.create(:product)
        expect{ 
        	delete :destroy, id: product 
        	}.to change(Product,:count).by(-1) 
	end
end