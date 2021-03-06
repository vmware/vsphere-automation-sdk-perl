## @class Com::Vmware::Esx::Hcl::Notifications
#
#
# The  ``Com::Vmware::Esx::Hcl::Notifications``   *class*  contains info/warning/error
#     messages that can be reported be the task.

package Com::Vmware::Esx::Hcl::Notifications;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Esx::Hcl::Notifications structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

      

   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{info} = $args{'info'};
   $self->{warnings} = $args{'warnings'};
   $self->{errors} = $args{'errors'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Esx::Hcl::Notifications');
   $self->set_binding_name('name' => 'com.vmware.esx.hcl.notifications');
   $self->set_binding_field('key' => 'info', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Notification'))));
   $self->set_binding_field('key' => 'warnings', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Notification'))));
   $self->set_binding_field('key' => 'errors', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::ListType(new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Esx::Hcl', 'type_name' => 'Notification'))));
   bless $self, $class;
   return $self;
}

## @method get_info ()
# Gets the value of 'info' property.
#
# @retval info - The current value of the field.
# Info notification messages reported.
#
# Optional#
sub get_info {
   my ($self, %args) = @_;
   return $self->{'info'}; 	
}

## @method set_info ()
# Sets the given value for 'info' property.
# 
# @param info  - New value for the field.
# Info notification messages reported.
#
sub set_info {
   my ($self, %args) = @_;
   $self->{'info'} = $args{'info'}; 
   return;	
}

## @method get_warnings ()
# Gets the value of 'warnings' property.
#
# @retval warnings - The current value of the field.
# Warning notification messages reported.
#
# Optional#
sub get_warnings {
   my ($self, %args) = @_;
   return $self->{'warnings'}; 	
}

## @method set_warnings ()
# Sets the given value for 'warnings' property.
# 
# @param warnings  - New value for the field.
# Warning notification messages reported.
#
sub set_warnings {
   my ($self, %args) = @_;
   $self->{'warnings'} = $args{'warnings'}; 
   return;	
}

## @method get_errors ()
# Gets the value of 'errors' property.
#
# @retval errors - The current value of the field.
# Error notification messages reported.
#
# Optional#
sub get_errors {
   my ($self, %args) = @_;
   return $self->{'errors'}; 	
}

## @method set_errors ()
# Sets the given value for 'errors' property.
# 
# @param errors  - New value for the field.
# Error notification messages reported.
#
sub set_errors {
   my ($self, %args) = @_;
   $self->{'errors'} = $args{'errors'}; 
   return;	
}


1;


