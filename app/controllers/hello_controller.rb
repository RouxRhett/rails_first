class HelloController < ApplicationController
  protect_from_forgery

  def index
    if request.post? then
      @title = 'Result'
      @msg = 'you Typed: ' + params['input1'] + '.'
      @value = params['input1']
    else
      @title = 'index'
      @msg = 'type text...'
      @value = ''
    end
  end

  def other
    redirect_to action: :index, params:{'msg': 'from other page'}
  end
end
