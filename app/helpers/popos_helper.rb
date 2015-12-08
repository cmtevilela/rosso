module PoposHelper
  
  def popo_status(popo)
    if popo.is_married?
      "Casado"
    else
      "Vida Comum"
    end
  end
end
