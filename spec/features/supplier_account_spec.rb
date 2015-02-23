require "rails_helper"

feature "Supplier account information" do
	before(:each) do
	    @user = User.create(user_attributes({role: 1}))
	    @supplier = Supplier.create(supplier_attributes)
	    @supplier_admin = SupplierAdmin.create( user_id: @user.id, supplier_id: @supplier.id)
	 end

	scenario "supplier can view account details" do
		visit supplier_path(@supplier.slug)
		click_link "Fireproof Account Details"
		within(".account-details") do
			expect(page).to have_content("Fireproof")
			expect(page).to have_content("Fire disaster products")
		end
	end

	scenario "supplier can edit account details" do
		visit supplier_path(@supplier.slug)
		click_link_or_button "Fireproof Account Details"
		within(".account-details") do
			click_link_or_button "Edit"
			fill_in "supplier[name]", with: "Helping Hand Relief"
			fill_in "supplier[description]", with: "Disaster Supplies Worldwide"
			click_button "Update"
		end
		@supplier.update(name: "Helping Hand Relief", slug: "helping-hand-relief")
		expect(current_path).to eq(supplier_path(@supplier.slug))
		within(".account-details") do
			expect(page).to have_content("Helping Hand Relief")
			expect(page).to have_content("Disaster Supplies Worldwide")
		end
	end

	scenario "supplier can edit administrators" do
		supplier2 = Supplier.create(supplier_attributes(name: "Ghostbusters", 
																										description: "Ghost face killas",
																									  slug: "ghostbusters"))
		user2 = User.create(user_attributes({fullname: "Brandon", email: "bmrz@gmail.com", role: 1 }))
		supplier_admin2 = SupplierAdmin.create(user_id: user2.id , supplier_id: supplier2.id)
		visit supplier_path(@supplier.slug)
		click_link "Manage Fireproof Administrators" 
		expect(page).to have_content(@user.fullname)
		first(:button, "Edit").click
		within(".reg-modal-11") do
			fill_in "user[fullname]", with: "Jason"
		end
		first(:button, "Update").click
		expect(page).to have_content("Jason")
	end
end
