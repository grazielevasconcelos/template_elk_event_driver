class MonitorsController < ApplicationController
  def index
    evento_push

    render json: {teste: "ok"}, status: :ok 
  end

  private

  def evento_push
    connection = Bunny.new(:host => "rabbitmq", :user => "myuser", :password => "mypassword")
    connection.start

    channel = connection.create_channel
    exchange = channel.topic("monitoracao", :auto_delete => true)

    exchange.publish(login_falho.to_json, :routing_key => "metrics.analytics")
    exchange.publish(login_sucesso.to_json, :routing_key => "metrics.analytics")
    connection.close
  end

  def login_falho
    {
      "aplicacao": "minha_app",
      "squad": "minha_squad",
      "area": "financeira",
      "evento": "usuario.logado",
      "data": {
          "codigo_usuario": 123,
          "tipo_login": "username",
          "ip": "172.168.1.1",
          "status": "falho"
      }
    }
  end

  def login_sucesso
    {
      "aplicacao": "minha_app",
      "squad": "minha_squad",
      "area": "financeira",
      "evento": "usuario.logado",
      "data": {
          "codigo_usuario": 123,
          "tipo_login": "e-mail",
          "ip": "172.168.1.1",
          "status": "sucesso"
      }
    }
  end
end
