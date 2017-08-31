require 'nokogiri'
require 'open-uri'

htmlData = "
<html>
  <title> This is a title </title>
  <body>
    <h2> this is h2 in body </h2>
  </body>
  <h1>first h1</h1>
  <h1>second h1</h1>
  <h3>
    <img src='image-1.jpg' >
    <a href='www.google.com'>google</a>
    <img src='image-2.jpg' >
    <a href='www.yahoo.com'>yahoo</a>
  </h3>
  <div>
    <h2>this is h2 in div</h2>
  </div>
</html>
"
doc = Nokogiri::HTML( htmlData )

puts doc.css("h1").first