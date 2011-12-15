class Parsilicious::Parser
  attr_reader :file_name

  def initialize file_name
    @file_name = file_name
  end

  def parse
    _csv.inspect
  end

  private

    def _csv
      @csv ||= CSV.read(file_name, headers: true, header_converters: :symbol)
    end

end
