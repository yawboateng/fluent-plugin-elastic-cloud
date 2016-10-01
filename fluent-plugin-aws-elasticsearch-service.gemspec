# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-elastic-cloud"
  spec.version       = "0.0.1"
  spec.authors       = ["Bernard A Boateng"]
  spec.email         = ["baboateng@us.ibm.com"]

  spec.summary       = %q{Output plugin to post to " Elastic Cloud".}
  spec.description   = %q{this is a Output plugin. Post to "Elastic Cloud".}
  spec.homepage      = "https://github.com/yawboateng/fluent-plugin-elastic-cloud/"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_runtime_dependency "fluentd", "~> 0"
  spec.add_runtime_dependency "fluent-plugin-elasticsearch", "~> 1.0"
  spec.add_runtime_dependency "aws-sdk", "~> 2"
  spec.add_runtime_dependency "faraday_middleware-aws-signers-v4", ">= 0.1.0", "< 0.1.2"
end
