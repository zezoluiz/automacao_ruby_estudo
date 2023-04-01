describe 'Caixa de opções', :dropdown do

    # it '' do
    #     select('Opção', from: 'elemento')
    # end

    it 'item especifico' do
        visit '/dropdown'
        select('Tony Stark', from: 'dropdown')
        sleep 3
    end

    it 'item especifico com find' do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text: 'Bruce Banner') .select_option
        sleep 3
    end

    it 'qualquer item', :sample do
        visit '/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
       
        sleep 3
    end
end
