module PoposHelper
  
  def popo_status(popo)
    if popo.is_married?
      "Casado"
    else
      "Vida Comum"
    end
  end


  def popo_role(popo)
    popo.admin?? "Administrador" : "Comum"
  end
end
