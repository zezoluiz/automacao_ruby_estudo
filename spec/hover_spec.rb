describe 'Hovers', :hover do
    
    before(:each) do
        visit '/hovers'

    end

    it 'quando passa o mouse sobre a imagem' do
    
    card= find('img[alt*=Blade]')
    card.hover
    
    end

    it 'com caractere especial ou espaço no seletor css' do
    
        #card= find('img[alt="Pantera Negra"]')
        card= find('img[alt^=Pantera]')
        card.hover

    expect(page).to have_content 'Nome: Pantera Negra'
    
    end

    it 'com caractere especial ou espaço no seletor css' do
    
        card= find('img[alt$=Aranha]')
        card.hover

    expect(page).to have_content 'Nome: Homem Aranha'
    
    end


end