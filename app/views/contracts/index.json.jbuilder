json.array!(@contracts) do |contract|
  json.extract! contract, :id, :monthlyPayment, :bail, :startDate, :finalDate, :house_id, :lodger_id, :obs
  json.url contract_url(contract, format: :json)
end
