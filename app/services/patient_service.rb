class PatientService
  def add_with_address(params)
    address = Address.new(params['address'])
    Patient.new(params)
  end
end