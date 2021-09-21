class HelloController < ApplicationController
  def index
    @name = "Taro"
    msg = '
    <html>
    <body>
      <h1>Sample Page</h1>
      <p>this is Rails Sample Page!</p>
    </body>
    </html>
    '
    render html: msg
  end
end
