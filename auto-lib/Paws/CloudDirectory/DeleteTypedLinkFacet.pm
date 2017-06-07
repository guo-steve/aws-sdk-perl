
package Paws::CloudDirectory::DeleteTypedLinkFacet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteTypedLinkFacet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/typedlink/facet/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::DeleteTypedLinkFacetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DeleteTypedLinkFacet - Arguments for method DeleteTypedLinkFacet on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteTypedLinkFacet on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method DeleteTypedLinkFacet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteTypedLinkFacet.

As an example:

  $service_obj->DeleteTypedLinkFacet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The unique name of the typed link facet.



=head2 B<REQUIRED> SchemaArn => Str

The Amazon Resource Name (ARN) that is associated with the schema. For
more information, see arns.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteTypedLinkFacet in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
