describe 'select 2', :select2 do
    
    describe('select2 single', :single) do

        before(:each) do
            visit '/apps/select2/single.html'
        end

        it 'seleciona ator por nome' do
            find('.select2-selection--single').click
            find('.select2-results__option', text:'Kevin James').click
            click_button('Liga/Desliga')
            
            expect find('.select2-container--disabled')
        end

        it 'buscar em campo de pesquisa' do
            find('.select2-selection--single').click
            find('.select2-search__field').set 'J'
            find('.select2-results__option', text:'Carrey').click
            click_button('Liga/Desliga')
            sleep 3
        end

    end

    describe('select2 multiple', :multi) do
        before(:each) do
            visit '/apps/select2/multi.html'
        end
        
        def selecionar(ator)
            find('.select2-selection--multiple').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end
        
        
        it 'selecionar vários' do
            
            atores = ['Jim Carrey', 'Owen Wilson', 'Kevin James']

            atores.each do |a|
                selecionar(a)
            end
            sleep 3
        end
    end

end
