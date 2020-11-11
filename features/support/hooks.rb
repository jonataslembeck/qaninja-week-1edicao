Before do
  page.current_window.resize_to(1440, 900) # Redimensionar janela
end

After do
  shot = page.save_screenshot("logs/temp_shot.png") # Tira screenshot

  # Anexa no relatório do Allure
  Allure.add_attachment(name: "Screenshot", type: Allure::ContentType::PNG, source: File.open(shot))
end
