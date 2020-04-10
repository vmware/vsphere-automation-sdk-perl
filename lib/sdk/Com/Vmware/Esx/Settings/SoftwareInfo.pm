## @class Com::Vmware::Esx::Settings::SoftwareInfo
#
#
# The  ``Com::Vmware::Esx::Settings::SoftwareInfo``   *class*  contains information that
#     describes the desired software specification for an ESX host.

package Com::Vmware::Esx::Settings::SoftwareInfo;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Settings::SoftwareInfo structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{base_image} = $args{'base_image'};
   $self->{add_on} = $args{'add_on'};
   $self->{components} = $args{'components'};
   $self->{solutions} = $args{'solutions'};
   $self->{hardware_support} = $args{'hardware_support'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Settings::SoftwareInfo');
   $self->set_binding_name('name' => 'com.vmware.esx.settings.software_info');
   $self->set_binding_field('key' => 'base_image', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'BaseImageInfo'));
   $self->set_binding_field('key' => 'add_on', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'AddOnInfo')));
   $self->set_binding_field('key' => 'components', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'ComponentInfo')}))));
   $self->set_binding_field('key' => 'solutions', 'value' => new Com::Vmware::Vapi::Bindings::Type::MapType('binding_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::StructType('name' => 'map-entry', 'fields' => {'key' => new Com::Vmware::Vapi::Bindings::Type::StringType(), 'value' =>  new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'SolutionInfo')}))));
   $self->set_binding_field('key' => 'hardware_support', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Settings', 'type_name' => 'HardwareSupportInfo')));
   bless $self, $class;
   return $self;
}

## @method get_base_image ()
# Gets the value of 'base_image' property.
#
# @retval base_image - The current value of the field.
# Base image of the ESX.
#
# BaseImageInfo#
sub get_base_image {
   my ($self, %args) = @_;
   return $self->{'base_image'}; 	
}

## @method set_base_image ()
# Sets the given value for 'base_image' property.
# 
# @param base_image  - New value for the field.
# Base image of the ESX.
#
sub set_base_image {
   my ($self, %args) = @_;
   $self->{'base_image'} = $args{'base_image'}; 
   return;	
}

## @method get_add_on ()
# Gets the value of 'add_on' property.
#
# @retval add_on - The current value of the field.
# OEM customization on top of given base-image. The components in this customization
#     override the components in the base base-image.
#
# Optional#
sub get_add_on {
   my ($self, %args) = @_;
   return $self->{'add_on'}; 	
}

## @method set_add_on ()
# Sets the given value for 'add_on' property.
# 
# @param add_on  - New value for the field.
# OEM customization on top of given base-image. The components in this customization
#     override the components in the base base-image.
#
sub set_add_on {
   my ($self, %args) = @_;
   $self->{'add_on'} = $args{'add_on'}; 
   return;	
}

## @method get_components ()
# Gets the value of 'components' property.
#
# @retval components - The current value of the field.
# Information about the components in the software specification.
#
# Map#
sub get_components {
   my ($self, %args) = @_;
   return $self->{'components'}; 	
}

## @method set_components ()
# Sets the given value for 'components' property.
# 
# @param components  - New value for the field.
# Information about the components in the software specification.
#
sub set_components {
   my ($self, %args) = @_;
   $self->{'components'} = $args{'components'}; 
   return;	
}

## @method get_solutions ()
# Gets the value of 'solutions' property.
#
# @retval solutions - The current value of the field.
# Information about the solutions in the software specification.
#
# Map#
sub get_solutions {
   my ($self, %args) = @_;
   return $self->{'solutions'}; 	
}

## @method set_solutions ()
# Sets the given value for 'solutions' property.
# 
# @param solutions  - New value for the field.
# Information about the solutions in the software specification.
#
sub set_solutions {
   my ($self, %args) = @_;
   $self->{'solutions'} = $args{'solutions'}; 
   return;	
}

## @method get_hardware_support ()
# Gets the value of 'hardware_support' property.
#
# @retval hardware_support - The current value of the field.
# Information about the Hardware Support Packages (HSP) configured.
#
# Optional#
sub get_hardware_support {
   my ($self, %args) = @_;
   return $self->{'hardware_support'}; 	
}

## @method set_hardware_support ()
# Sets the given value for 'hardware_support' property.
# 
# @param hardware_support  - New value for the field.
# Information about the Hardware Support Packages (HSP) configured.
#
sub set_hardware_support {
   my ($self, %args) = @_;
   $self->{'hardware_support'} = $args{'hardware_support'}; 
   return;	
}


1;


