require_relative './hooks_config/main'

Before do
  # Set short-hand list
  @api_viacep = ApiViaCep.new
end

at_exit do
  # Generate report
  HooksConfig.report_generate('TestVR - Services Tests')
end
