require 'rainbow'

def print_logger(content, scope: :debug, tag: self.class.name, color: nil)
  color ||= {
    debug: :orangered,
    info: :mediumblue,
    warn: :darksalmon,
    error: :darkred,
    fatal: :darkmagenta,
    unknown: :dimgray
  }[scope]

  colored_tag = Rainbow(tag).color(:white).bg(color)

  Rails.logger.tagged(colored_tag) do
    Rails.logger.send(scope) { Rainbow(content).send(color) }
  end
end
