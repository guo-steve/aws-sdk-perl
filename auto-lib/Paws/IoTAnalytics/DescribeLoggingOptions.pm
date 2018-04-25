
package Paws::IoTAnalytics::DescribeLoggingOptions;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeLoggingOptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/logging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::DescribeLoggingOptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DescribeLoggingOptions - Arguments for method DescribeLoggingOptions on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeLoggingOptions on the 
L<AWS IoT Analytics|Paws::IoTAnalytics> service. Use the attributes of this class
as arguments to method DescribeLoggingOptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeLoggingOptions.

As an example:

  $service_obj->DescribeLoggingOptions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeLoggingOptions in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
