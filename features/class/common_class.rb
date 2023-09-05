# encode: UTF-8

class Common

  def response_code(code)
    raise ArgumentError, "Código esperado #{code}, código obtido #{$response.code}" if code != $response.response.code
  end

end
