test_test 'C' do
  action :nothing
end

test_test 'B' do
  action :nothing
  notifies :run, 'test_test[C]'
end

test_test 'A' do
  action :run
  notifies :run, 'test_test[B]'
end
