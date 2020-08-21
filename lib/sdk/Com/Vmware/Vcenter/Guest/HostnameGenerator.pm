## @class Com::Vmware::Vcenter::Guest::HostnameGenerator
#
#
# The  ``Com::Vmware::Vcenter::Guest::HostnameGenerator``   *class*  specifies various
#     mechanisms of generating the hostname for the guest inside the virtual machine while
#     customization. This  *class*  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Guest::HostnameGenerator;

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiStruct);

#
# vApi modules
#
use Com::Vmware::Vapi::Data::UnionValidator;

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::HostnameGenerator structure
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $validatorList = [];

         $validatorList = [
         new Com::Vmware::Vapi::Data::UnionValidator(
         'discriminant_name' => 'type',
         'case_map' => {
               'FIXED' => ['fixed_name'],
               'PREFIX' => ['prefix'],
               'VIRTUAL_MACHINE' => [],
               'USER_INPUT_REQUIRED' => [],
            }),
      ];


   my $self = $class->SUPER::new('validator_list' => $validatorList, %args);
   $self->{type} = $args{'type'};
   $self->{fixed_name} = $args{'fixed_name'};
   $self->{prefix} = $args{'prefix'};

   $self->set_binding_class('binding_class' => 'Com::Vmware::Vcenter::Guest::HostnameGenerator');
   $self->set_binding_name('name' => 'com.vmware.vcenter.guest.hostname_generator');
   $self->set_binding_field('key' => 'type', 'value' => new Com::Vmware::Vapi::Bindings::Type::ReferenceType('module_ctx' => 'Com::Vmware::Vcenter::Guest', 'type_name' => 'HostnameGenerator::Type'));
   $self->set_binding_field('key' => 'fixed_name', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   $self->set_binding_field('key' => 'prefix', 'value' => new Com::Vmware::Vapi::Bindings::Type::OptionalType('element_type' => new Com::Vmware::Vapi::Bindings::Type::StringType()));
   bless $self, $class;
   return $self;
}

## @method get_type ()
# Gets the value of 'type' property.
#
# @retval type - The current value of the field.
# The type of the Name Generator. This  *field*  was added in vSphere API 7.0.0.
#
# Type#
sub get_type {
   my ($self, %args) = @_;
   return $self->{'type'}; 	
}

## @method set_type ()
# Sets the given value for 'type' property.
# 
# @param type  - New value for the field.
# The type of the Name Generator. This  *field*  was added in vSphere API 7.0.0.
#
sub set_type {
   my ($self, %args) = @_;
   $self->{'type'} = $args{'type'}; 
   return;	
}

## @method get_fixed_name ()
# Gets the value of 'fixed_name' property.
#
# @retval fixed_name - The current value of the field.
# The virtual machine name specified by the client. This  *field*  was added in vSphere
#     API 7.0.0.
#
# optional#
sub get_fixed_name {
   my ($self, %args) = @_;
   return $self->{'fixed_name'}; 	
}

## @method set_fixed_name ()
# Sets the given value for 'fixed_name' property.
# 
# @param fixed_name  - New value for the field.
# The virtual machine name specified by the client. This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_fixed_name {
   my ($self, %args) = @_;
   $self->{'fixed_name'} = $args{'fixed_name'}; 
   return;	
}

## @method get_prefix ()
# Gets the value of 'prefix' property.
#
# @retval prefix - The current value of the field.
# Base prefix, to which a unique number is appended. This  *field*  was added in vSphere
#     API 7.0.0.
#
# optional#
sub get_prefix {
   my ($self, %args) = @_;
   return $self->{'prefix'}; 	
}

## @method set_prefix ()
# Sets the given value for 'prefix' property.
# 
# @param prefix  - New value for the field.
# Base prefix, to which a unique number is appended. This  *field*  was added in vSphere
#     API 7.0.0.
#
sub set_prefix {
   my ($self, %args) = @_;
   $self->{'prefix'} = $args{'prefix'}; 
   return;	
}


1;


## @class Com::Vmware::Vcenter::Guest::HostnameGenerator::Type
#
# The  ``Com::Vmware::Vcenter::Guest::HostnameGenerator::Type``   *enumerated type* 
#     specifies different types of Name Generators. This  *enumeration*  was added in
#     vSphere API 7.0.0.
#
#
#
# Constant Com::Vmware::Vcenter::Guest::HostnameGenerator::Type::FIXED #
#Specifies that a fixed name should be used for the hostname for the virtual machine during
# the customization. This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::HostnameGenerator::Type::PREFIX #
#Specifies that a unique name should be generated by concatenating the base string with a
# number including the network name of the guest. <p>
# 
# Virtual machine names are unique across the set of hosts and virtual machines known to the
# VirtualCenter instance. VirtualCenter tracks the network names of virtual machines as well
# as hosts. VMware Tools runs in a guest operating system and reports information to
# VirtualCenter.</p>
# 
# . This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::HostnameGenerator::Type::VIRTUAL_MACHINE #
#Specifies that the VirtualCenter should generate a virtual machine name. <p>
# 
# The name is generated from a base prefix comprising the virtual machine entity name. A
# number is appended, if necessary, to make it unique. </p>
# 
# <p>
# 
# Virtual machine names are unique across the set of hosts and virtual machines known to the
# VirtualCenter instance. VirtualCenter tracks the network names of the virtual machines as
# well as hosts. VMware Tools runs in a guest operating system and reports information to
# VirtualCenter, including the network name of the guest.</p>
# 
# . This  *constant*  was added in vSphere API 7.0.0.
#
# Constant Com::Vmware::Vcenter::Guest::HostnameGenerator::Type::USER_INPUT_REQUIRED #
#Indicates that the host name is not specified in advance. The user must provide a valid
# value when the actual customization spec is applied to a virtual machine. This  *constant*
#  was added in vSphere API 7.0.0.

package Com::Vmware::Vcenter::Guest::HostnameGenerator::Type;

use constant {
    FIXED =>  'FIXED',
    PREFIX =>  'PREFIX',
    VIRTUAL_MACHINE =>  'VIRTUAL_MACHINE',
    USER_INPUT_REQUIRED =>  'USER_INPUT_REQUIRED',
};

#
# Base class
#
use base qw(Com::Vmware::Vapi::Bindings::VapiEnum);

## @method new ()
# Constructor to initialize the Com::Vmware::Vcenter::Guest::HostnameGenerator::Type enumeration.
#
# @retval
# Blessed object
#
sub new {
   my ($class, %args) = @_;
   $class = ref($class) || $class;
   my $self = $class->SUPER::new();
   my $bindingType = new Com::Vmware::Vapi::Bindings::Type::EnumType(
                           'name' => 'com.vmware.vcenter.guest.hostname_generator.type',
                           'binding_class' => 'Com::Vmware::Vcenter::Guest::HostnameGenerator::Type');
   $class->SUPER::set_binding_type('binding_type' => $bindingType);

   bless $self, $class;
   return $self;
}

1;

