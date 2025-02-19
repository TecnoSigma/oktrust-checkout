require 'rails_helper'

RSpec.describe 'CheckoutsController', type: :request do
  describe 'POST actions' do
    describe '#store_register' do
      context 'when the register is valid' do
        it 'redirects to the access page' do
          register_params = FactoryBot.attributes_for(:register)

          post '/store_register', params: { register: register_params }

          expect(response).to redirect_to(acesso_path)
        end
      end

      context 'when no pass some required param' do
        it 'redirects to the register page' do
          register_params = FactoryBot.attributes_for(:register, name: nil)

          post '/store_register', params: { register: register_params }

          expect(response).to redirect_to(registro_path)
        end
      end
    end
  end

  describe 'GET actions' do
    before(:each) do
      allow_any_instance_of(CheckoutsController).to receive(:check_session).and_return(true)
    end

    describe '#register' do
      it 'returns a 200 status code' do
        get '/registro'

        expect(response).to have_http_status(:ok)
      end

      it 'renders the register template' do
        get '/registro'

        expect(response).to render_template(:register)
      end
    end

    describe '#access' do
      it 'returns a 200 status code' do
        get '/acesso'

        expect(response).to have_http_status(:ok)
      end

      it 'renders the access template' do
        get '/acesso'

        expect(response).to render_template(:access)
      end
    end

    describe '#payment' do
      it 'returns a 200 status code' do
        get '/pagamento'

        expect(response).to have_http_status(:ok)
      end

      it 'renders the payment template' do
        get '/pagamento'

        expect(response).to render_template(:payment)
      end
    end

    describe '#access' do
      it 'returns a 200 status code' do
        get '/acesso'

        expect(response).to have_http_status(:ok)
      end

      it 'renders the access template' do
        get '/acesso'

        expect(response).to render_template(:access)
      end
    end

    describe '#congratulations' do
      it 'returns a 200 status code' do
        get '/parabens'

        expect(response).to have_http_status(:ok)
      end

      it 'renders the congratulations template' do
        get '/parabens'

        expect(response).to render_template(:congratulations)
      end
    end
  end
end
