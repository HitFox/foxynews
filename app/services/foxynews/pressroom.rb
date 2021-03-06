class Foxynews::Pressroom

  def initialize(args)
    if args.is_a?(Hash)
      args.each do |name, value|
        value = OpenStruct.new(value) if value.is_a?(Hash)
        value.map! {|prc| OpenStruct.new(prc) } if name == 'pr_contacts' && value.present?

        instance_variable_set("@#{name}", value)
        self.class.send(:attr_accessor, name)
      end
    else
      false
    end
  end
end




