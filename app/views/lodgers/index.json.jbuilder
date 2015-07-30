json.array!(@lodgers) do |lodger|
  json.extract! lodger, :id, :name, :phone, :sex, :cpf, :rg, :maritalstatus, :occupation
  json.url lodger_url(lodger, format: :json)
end
