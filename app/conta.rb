# Classe com os atributos de uma conta
class Conta
  attr_accessor :limite, :saldo

  def initialize(saldo, limite)
    self.limite = limite
    self.saldo = saldo
  end

  def saca(valor, taxa)
    if self.saldo >= valor && valor <= self.limite
      self.saldo -= valor
      self.saldo -= taxa
    elsif self.saldo <= valor
      'Saldo insuficiente para saque :('
    else
      "Limite máximo por saque é de R$ #{self.limite.to_f}"
    end
  end

  def deposita(valor)
    self.saldo += valor
  end

  def transfere(conta, valor)
    if self.saldo >= valor  
      self.saca(valor)
      conta.saldo += valor
    else
      puts 'Saldo insuficiente para transferencia'
    end
  end
end
