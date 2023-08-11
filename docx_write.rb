require 'docx_generator'

class Docx_write
  def write_to(path, phrase)
    DocxGenerator::DSL::Document.new("testdoc") do |doc|
      doc.paragraph do |par|
        par.alignment :center
        par.text "Title" do |t|
          t.underline style: "double"
          t.size 20
          t.caps true
        end
        par.newline
      end

      doc.paragraph do |par|
        par.text phase
      end

      doc.save
    end
  end
end