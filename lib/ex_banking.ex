defmodule ExBanking do
  @moduledoc """
  Documentation for ExBanking.
  """
  
  @doc """
  Hello world.
  
  ## Examples
  
  iex> ExBanking.hello()
  :world
  
  """
  alias ExBanking.{Client, Transaction, Format}
  
  @type banking_error ::
  {:error,
  :wrong_arguments
  | :user_already_exists
  | :user_does_not_exist
  | :not_enough_money
  | :sender_does_not_exist
  | :receiver_does_not_exist
  | :too_many_requests_to_user
  | :too_many_requests_to_sender
  | :too_many_requests_to_receiver}
  
  @type banking_response ::
  :ok
  | {:ok, new_balance :: number}
  | {:ok, from_user_balance :: number, to_user_balance :: number}
  
  @doc """
  Function creates new user in the system
  New user has zero balance of any currency
  """
  @spec create_user(user :: String.t) :: :ok | banking_error
  def create_user(user) do
    # create user
  end
  
  @doc """
  Increases user’s balance in given currency by amount value
  Returns new_balance of the user in given format
  """
  @spec deposit(user :: String.t, amount :: number, currency :: String.t) :: {:ok, new_balance :: number} | banking_error
  def deposit(user, amount, currency) do
    # deposit
  end
  
  @doc """
  Decreases user’s balance in given currency by amount value
  Returns new_balance of the user in given format
  """
  @spec withdraw(user :: String.t, amount :: number, currency :: String.t) :: {:ok, new_balance :: number} | banking_error
  def withdraw(user, amount, currency) do
  end

  @doc """
  Returns balance of the user in given format
  """
  @spec get_balance(user :: String.t, currency :: String.t) :: {:ok, balance :: number} | banking_error
  def get_balance(user, currency) do
  end
  
  @doc """
  Decreases from_user’s balance in given currency by amount value
  Increases to_user’s balance in given currency by amount value
  Returns balance of from_user and to_user in given forma
  """
  @spec send(from_user :: String.t, to_user :: String.t, amount :: number, currency :: String.t) :: {:ok, from_user_balance :: number, to_user_balance :: number} | banking_error
  def send(from_user, to_user, amount, currency) do
  end
end
