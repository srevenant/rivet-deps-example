defmodule Example.Account do
  @moduledoc """
  Schema for representing and working with a account.
  """
  use TypedEctoSchema
  use Rivet.Ecto.Model
  alias Rivet.Ident

  typed_schema "accounts" do
    field(:name, :string)
    belongs_to(:owner, Ident.User, type: :binary_id, foreign_key: :owner_id)
    timestamps()
  end

  use Rivet.Ecto.Collection,
    required: [:name, :owner_id],
    update: [:name, :owner_id]
end
