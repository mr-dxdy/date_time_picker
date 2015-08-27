require 'rails/railtie'

module DateTimePicker
  class Railtie < Rails::Railtie
    initializer 'date_time_picker.helpers' do
      ActiveSupport.on_load(:action_view) do

        # This monkey patch is needed to gem Cells
        # See https://github.com/apotonick/cells/blob/5367e29c7c602b44e73ff2504cb777615ead5989/lib/cell/railtie.rb#L43
        module ActionView::Helpers::FormTagHelper
          include DateTimePicker::Helpers::FormTagHelper
        end
        module ActionView::Helpers::FormHelper
          include DateTimePicker::Helpers::FormHelper
        end

        # This monkey patch is need to ActionView
        class ActionView::Base
          include DateTimePicker::Helpers::FormTagHelper
          include DateTimePicker::Helpers::FormHelper
        end
        class ActionView::Helpers::FormBuilder
          include DateTimePicker::Helpers::FormBuilderHelper
        end
      end
    end
  end
end
