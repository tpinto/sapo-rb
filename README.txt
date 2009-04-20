saporb
    by Tiago Pinto
    http://whythehype.com/

== DESCRIPTION:
  
Ruby interface to SAPO APIs (http://services.sapo.pt/)

"Os feeds de RSS e as APIs expostas são para uso estritamente pessoal. Não podem ser utilizados para fins comerciais e o conteúdo não pode ser reproduzido ou alterado. O SAPO e a PT.COM não garantem a continuidade dos serviços aqui documentados e reservam o direito de alterar estes termos de utilização. Para mais informações contacte-nos através do E-Mail developers@sapo.pt"

== FEATURES/PROBLEMS:
  
* Supported APIs (all REST):
  * ADSL
  * AdWords
  * Auto
  * Blogs
  * Jobs
  * Photos
  * Shopping
  * Traffic

* To be supported: the ones using SOAP

== SYNOPSIS:

  require 'rubygems'
  require 'sapo'
  SAPO::Blogs.search("ruby") # returns an array of posts containing "ruby"

== REQUIREMENTS:

* REXML
* JSON

== INSTALL:

* sudo gem install sapo

== LICENSE:

Copyright (c) 2007 Tiago Pinto

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
