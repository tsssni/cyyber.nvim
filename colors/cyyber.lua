-- You probably always want to set this in your vim file
vim.opt.background = 'dark'
vim.g.colors_name = 'cyyber'
package.loaded['cyyber'] = nil
require('lush')(require('cyyber'))

