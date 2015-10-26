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
    pending
  end

  describe 'POST #create' do
    pending
  end

  describe 'DELETE #destroy' do
    pending
  end
end