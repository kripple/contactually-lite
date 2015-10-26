require 'rails_helper'

describe ContactsController do

  describe 'GET #index' do
    context 'contacts index page' do

      before :each do
        get :index
      end

      it 'assigns all contacts to @contacts' do
        expect(assigns(:contacts)).to eq(Contact.all)
      end

      it 'renders the correct page' do
        expect(response).to render_template :index
      end
    end
  end

  describe 'GET #new' do
    context 'new contacts page' do

      before :each do
        get :new
      end

      it 'assigns new contact to @contact' do
        expect(assigns(:contact)).to be_a_new(Contact)
      end

      it 'renders the correct page' do
        expect(response).to render_template :new
      end
    end
  end

  describe 'POST #create' do
    context 'create new contact' do
      xit 'creates a new contact' do
      end

      xit "redirects to root after creating a contact" do
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes a contact' do
      attrs = {first_name: "Gerhard", last_name: "Kautzer", email_address: "gerhardkautzer@cronabayer.com", phone_number: "1-207-643-1816", company_name: "Hodkiewicz-Lynch"}
      Contact.create(attrs)
      expect{ delete :destroy, id: Contact.last}.to change(Contact, :count).by(-1)
    end
  end
end


  





