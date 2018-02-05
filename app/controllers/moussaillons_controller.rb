class MoussaillonsController < ApplicationController

  def home
  end

  def index
    @moussaillons= Moussaillon.all
  end

  def new
    @moussaillon= Moussaillon.new
  end

  def create
    @moussaillon = Moussaillon.new(moussaillon_params)
    if  @moussaillon.save
      redirect_to @moussaillon  #Si la création du nouveau profil est bien réalisée, alors on fait afficher le profil crée via la fonction SHOW
    else
      render 'new'
    end
  end

  def show
    @moussaillon = Moussaillon.find(params[:id])
  end

  def edit
    @moussaillon = Moussaillon.find(params[:id])
  end

  def update
        @moussaillon = Moussaillon.find(params[:id])
        if @moussaillon.update(moussaillon_params)
          #Si l'update est bien réalisée (true), alors on redirige vers la page du profil.
          redirect_to @moussaillon
        else
          render 'edit'
        end
  end

  def destroy
    @moussaillon = Moussaillon.find(params[:id])
    @moussaillon.destroy
    redirect_to moussaillons_path
    #On redirige vers l'index
  end


  private
    def moussaillon_params
      params.permit(:firstname, :age, :likeness)
    end


end
