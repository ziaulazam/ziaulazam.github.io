Gem::Specification.new do |spec|
  spec.name          = "resume"
  spec.version       = "1.0.0"
  spec.authors       = ["Zia ul Azam"]
  spec.email         = ["coder.bot92@gmail.com"]

  spec.summary       = "My Resume powered by Jekyll and GitHub pages."
  spec.homepage      = "https://github.com/ziaulazam/ziaulazam.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.required_ruby_version = '~> 2.0'

  spec.add_runtime_dependency 'github-pages', '~> 198'
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"

  spec.add_development_dependency "html-proofer", "~> 3.9"
end
