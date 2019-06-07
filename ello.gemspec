# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "ello-jekyll-vcard-theme"
  spec.version       = "0.0.1.2"
  spec.authors       = ["Randall"]
  spec.email	     = 'ran.dall@icloud.com'

  spec.summary       = "Ello is a simple animated Jekyll vCard theme by Randall, optimized for use with GitHub Pages (but can be used wherever Jekyll can live)."
  spec.homepage      = "https://github.com/ran-dall/ello-jekyll"
  spec.license       = "MIT"

  spec.files = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r!^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(html|txt|md|markdown)|$)))!i)
  end

  spec.add_runtime_dependency "jekyll"
  spec.add_runtime_dependency "jekyll-avatar"
  spec.add_runtime_dependency "jekyll-seo-tag"
  spec.add_runtime_dependency "jemoji"

  spec.add_development_dependency "bundler"

end
