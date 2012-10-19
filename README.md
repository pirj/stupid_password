# Stupid Password

    PasswordStupidityChecker.new.is_stupid? "alexander"
     => "Is that a male name?"

## Description

Tell users their passwords are stupid and guessable.
Save time on 'my password was stolen' support requests.

## Synopsis

    gem install stupid_password

In Ruby:

    require 'stupid_password'    

    class PasswordStupidityChecker
      include StupidPassword
    end

    PasswordStupidityChecker.new.is_stupid? "alexander"
     => "Is that a male name?"

If you're like to waste in namespace, you can include directly to String (which is highly not recommended):

    String.send :include, StupidPassword

    "valera".is_stupid?
     => "Is that a male name?"

## Contribute

Fork, create topic branch, modify code, write tests, run tests, push, send me a pull request.

Or, you can create a plugin and reference it on Wiki.
Example plugin code:

    class StupidPassword::Modifier::Reverse
      def self.modify password
        return 'reversed', password.reverse
      end
    end

    PasswordStupidityChecker.new.is_stupid? "rednaxela"
     => "Is that a reversed male name?"

## Inspiration

http://habrahabr.ru/post/113401/
http://habrahabr.ru/post/132880/
http://habrahabr.ru/post/138127/
http://habrahabr.ru/post/138726/
http://habrahabr.ru/post/145658/
http://habrahabr.ru/post/147840/
http://habrahabr.ru/company/abbyy/blog/149396/
http://habrahabr.ru/post/80130/
http://habrahabr.ru/post/2388/
http://habrahabr.ru/post/75345/
http://xato.net/passwords/more-top-worst-passwords/

## Roadmap

* Implement permutations
* Use language specific dictionaries eg https://github.com/yohasebe/engtagger/blob/master/lib/engtagger/words.yml
* Use aspell ffi-aspell
* Allow configuration of which checks should (not) be run, i.e. "Spanish dictionary only", "limit permutations to 2 at once"
* i18n for messages
* Check compositions (with all modifier permutations), ie "alex1234"
* Allow double checks ('monkey' => Is that an english word AND is it in top25 popular passwords?)
* Implement benchmarks, refactor

## Contributors

* [Ilya Vorontsov](https://github.com/prijutme4ty)

## Links

* [Code](https://github.com/pirj/stupid_password)
* [Wiki](https://github.com/pirj/stupid_password/wiki)
* [Author](https://github.com/pirj)

## License

(The MIT License)

Copyright (c) 2012 Phil Pirozhkov

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
