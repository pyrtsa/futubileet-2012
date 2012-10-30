use Rack::Static, 
  urls: ["/stylesheets", "/images"],
  root: "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=300'
    },
    File.open('public/arrival-times.html', File::RDONLY)
  ]
}
