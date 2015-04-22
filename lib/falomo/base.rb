module Falomo

  class Base
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    extend ActiveModel::Translation
    include ActiveModel::Validations
    include ActiveModel::AttributeMethods  # 1) attribute methods behavior
    attribute_method_prefix 'clear_'        # 2) clear_is is attribute prefix

    attribute_method_suffix '?'

    def self.attributes(*names)
      attr_accessor(*names)
      define_attribute_methods(names)
    end

    def persistend?
      false
    end

    def deliver
      if valid?
        Falomo::Notifier.contact(self).deliver
      else
        false
      end
    end

    protected

    def clear_attribute(attribute)
      send("#{attrtibute}=", nil)
    end

    def attribute?(attribute)
      send(attribute).present?
    end

  end
end
