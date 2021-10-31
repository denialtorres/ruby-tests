require 'ostruct'

class Generator
  attr_reader :report

  def initialize(report)
    @report = report
  end

  def run
    report.to_csv
  end
end

class Notifier
  attr_reader :generator, :callbacks

  def initialize(generator, callbacks)
    @generator = generator
    @callbacks = callbacks
  end

  def run
    result = generator.run

    if result
      callbacks.fetch(:on_success).call(result)
    else
      callbacks.fetch(:on_failure).call
    end
  end
end

good_report = OpenStruct.new(to_csv: "59.99, Great Success")

bad_report = OpenStruct.new(to_csv: nil)

# on_failure
Notifier.new(Generator.new(bad_report),
            on_success: lambda { |r| puts "Send #{r} to boss@acme.co"},
            on_failure: lambda { puts "Woops!, Send email to ben@acme.co"}
          ).tap do |n|
            n.run
           end

# on_success
Notifier.new(Generator.new(good_report),
            on_success: lambda { |r| puts "Send #{r} to boss@acme.co"},
            on_failure: lambda { puts "Woops!, Send email to ben@acme.co"}
          ).tap do |n|
            n.run
           end
