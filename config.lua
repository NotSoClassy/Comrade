return {
  default = 'moonscript',
  documentation = {
    'ldoc . -d docs', (function()
      if process.env['push'] then
        return 'git add docs', 'git commit -m "Docs build"', 'git push -u origin master'
      else
        return ''
      end
    end)()
  },
  moonscript = {'moonp ./faker ./helpers ./libs ./structures ./tests'},
  lint = {'luacheck .'},
  format = {'lua-format *.lua ./**/*.lua -i -c .luaformat.yaml'},
  test = {'cd tests && luvit main.lua'}
}
