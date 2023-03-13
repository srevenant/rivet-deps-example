defmodule Example.AccountMember do
  @moduledoc """
  Schema for representing and working with a AccountMember.
  """
  use TypedEctoSchema
  use Rivet.Ecto.Model
  alias Rivet.Ident
  import EctoEnum

  defenum(Role, owner: 0)

  typed_schema "account_members" do
    belongs_to(:user, Ident.User, type: :binary_id)
    belongs_to(:account, Example.Account, type: :binary_id)
    field(:role, Role, default: 0)
    timestamps()
  end

  use Rivet.Ecto.Collection,
    required: [:role, :user_id, :account_id],
    update: [:role]
end
