describe 'javascript alert', :alert do
  before(:each) do
    visit '/javascript_alerts'
  end

  it 'alerta' do
    click_button 'Alerta'
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'Isto é uma mensagem de alerta'
    sleep 3
  end

  it 'alerta confirmar' do
    click_button 'Confirma'
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'

    page.driver.browser.switch_to.alert.accept
    expect(page).to have_content 'Mensagem confirmada'
  end

  it 'alerta não confirmar' do
    click_button 'Confirma'
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql 'E ai confirma?'

    page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content 'Mensagem não confirmada'
  end

  it 'prompt' do
    accept_prompt(with: 'Sérgio') do
    click_button 'Prompt'
  end
    
    expect(page).to have_content 'Olá, Sérgio'
    sleep 3
  end

  it 'dismiss prompt', :dismiss do
    dismiss_prompt(with: '') do
    click_button 'Prompt'
    end

  expect  expect(page).to have_content 'Olá, '
  sleep 3
  end

end
