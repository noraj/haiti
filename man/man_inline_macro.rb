# frozen_string_literal: true

# https://github.com/asciidoctor/asciidoctor-extensions-lab/blob/main/lib/man-inline-macro/extension.rb
# https://github.com/asciidoctor/asciidoctor-extensions-lab/blob/main/lib/man-inline-macro.rb
# https://docs.asciidoctor.org/asciidoctor/latest/extensions/inline-macro-processor/

# NoDoc
class ManInlineMacro < Asciidoctor::Extensions::InlineMacroProcessor
  use_dsl

  named :man
  name_positional_attributes 'volnum'

  def process(parent, target, attrs)
    doc = parent.document
    text = manname = target
    suffix = (volnum = attrs['volnum']) ? %((#{volnum})) : ''
    if doc.basebackend? 'html'
      target = %(#{manname}#{doc.outfilesuffix})
      doc.register :links, target
      node = create_anchor parent, text, type: :link, target: target
    elsif doc.backend == 'manpage'
      node = create_inline parent, :quoted, manname, type: :strong
    else
      node = create_inline parent, :quoted, manname
    end
    create_inline parent, :quoted, %(#{node.convert}#{suffix})
  end
end
