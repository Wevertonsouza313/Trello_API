describe 'Teste de API Trello' do
    it 'Incluir, Editar e Excluir Card' do

      puts 'Criar Card'
      request_post = Trello.post('/1/cards?&key=eeb4299320d7c8ac82e4de1086e6b997&token=d7c8d07a191db456cc6e7e77c85f0230569b8daae7c392bc46e61ed72def9171&idList=5c70c3b86120aa26b7026207&name=This is my new card')
      puts request_post
      request_id = request_post['id']

      #Pego o id do card criado
      puts 'id do card:' + request_id

      puts 'Editar Card'
      requestput = Trello.put('/1/cards/'+ request_id +'?&key=eeb4299320d7c8ac82e4de1086e6b997&token=d7c8d07a191db456cc6e7e77c85f0230569b8daae7c392bc46e61ed72def9171&idList=5c70c3b86120aa26b7026207&name=this is update card')
      puts requestput

      puts 'Deletar Card'
      requestdelete = Trello.delete('/1/cards/'+ request_id +'?&key=eeb4299320d7c8ac82e4de1086e6b997&token=d7c8d07a191db456cc6e7e77c85f0230569b8daae7c392bc46e61ed72def9171')
      puts requestdelete

    end
end        


