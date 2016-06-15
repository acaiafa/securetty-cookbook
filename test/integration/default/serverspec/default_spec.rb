require 'serverspec'
set :backend, :exec


describe file('/etc/securetty') do
    it { should be_file }
    it { should be_owned_by 'root' }
    its(:content) { should contain 'console' }
end

