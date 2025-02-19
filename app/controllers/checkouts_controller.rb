# frozen_string_literal: true

# class responsible for checkouts controller
class CheckoutsController < ApplicationController
  def register; end
  def payment; end
  def congratulations; end

  def access
    check_session(:register)
  end

  def store_register
    session[:register] = register_params

    redirect_to acesso_path
  rescue ActionController::ParameterMissing, StandardError => error
    Rails.logger.error("Message: #{error.message} - Backtrace: #{error.backtrace}")

    redirect_to registro_path, alert: error_message(error)
  end

  private

  def error_message(error)
    return I18n.t('messages.errors.required_field') if error.is_a?(ActionController::ParameterMissing)

    I18n.t('messages.errors.generic')
  end

  def register_params
    required_params = params
      .require(:register)
      .permit(:name, :cpf, :company, :cnpj, :responsible, :email, :phone, :postal_code,
              :street, :number, :complement, :district, :city, :state, :country)
      .reject { |key, value| key == 'complement' && value.blank? }

    required_params.each { |_, value| raise ActionController::ParameterMissing if value.blank? }

    required_params
  end

  def check_session(key)
    raise ActionController::ParameterMissing unless session[key]
  rescue ActionController::ParameterMissing => error
    Rails.logger.error("Message: #{error.message} - Backtrace: #{error.backtrace}")

    redirect_to registro_path, alert: I18n.t('messages.errors.stored_data')
  end
end
