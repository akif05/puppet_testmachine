def project_path
  File.expand_path('../..', __FILE__)
end

def fixture(fixture_name, format = 'xml')
  IO.binread(project_path + "/spec/fixtures/#{fixture_name}.#{format}")
end
