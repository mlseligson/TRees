class TreeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @trees = Tree.all
  end

  def create
    @tree = Tree.create({
      name: params["name"],
      species: params["species"],
      rings: params["rings"]
    })

    render 'show'
  end

  def read
    @tree = Tree.find_by({id: params["id"]})

    render 'show'
  end

  def update
    @tree = Tree.find_by({id: params["id"]})
    @tree.update({
      name: params["name"] || @tree.name,
      species: params["species"] || @tree.species,
      rings: params["rings"] || @tree.rings
    })

    render 'show'
  end

  def delete
    @tree = Tree.find_by({id: params["id"]})
    @tree.destroy

    render json: {"message": "Tree (id: #{@tree.id}) deleted"}
  end
end
