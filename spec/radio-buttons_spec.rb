describe 'radio buttons', :radio do

before(:each) do
    visit '/radios'
end

it 'selecionar por id' do
    choose('cap')
end

it 'selecionar seletor css' do
    find('input[value=thor]').click
end


after(:each) do
    sleep 3
end







end