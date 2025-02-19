# frozen_string_literal: true

# class responsible for handling application helper methods
module ApplicationHelper
  def countries
    CheckoutForm::COUNTRIES
  end

  def states
    CheckoutForm::STATES
  end

  def steps(step = '')
    steps = default_steps.dup

    case step
    when 'register'
      steps[:register][:status] = 'active'
    when 'access'
      steps[:register][:status] = 'active'
      steps[:access][:status] = 'active'
    when 'payment'
      steps[:register][:status] = 'active'
      steps[:access][:status] = 'active'
      steps[:payment][:status] = 'active'
    when 'conference'
      steps[:register][:status] = 'active'
      steps[:access][:status] = 'active'
      steps[:payment][:status] = 'active'
      steps[:conference][:status] = 'active'
    when 'congratulations'
      steps[:register][:status] = 'active'
      steps[:access][:status] = 'active'
      steps[:payment][:status] = 'active'
      steps[:conference][:status] = 'active'
      steps[:congratulations][:status] = 'active'
    else steps
    end

    steps
  end

  def default_steps
    { register: { name: 'register', status: 'inactive', step: '1' },
      access: { name: 'access', status: 'inactive', step: '2' },
      payment: { name: 'payment', status: 'inactive', step: '3' },
      conference: { name: 'conference', status: 'inactive', step: '4' },
      congratulations: { name: 'congratulations', status: 'inactive', step: '5' } }
  end
end
