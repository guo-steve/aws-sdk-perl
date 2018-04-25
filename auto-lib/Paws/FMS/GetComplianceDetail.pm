
package Paws::FMS::GetComplianceDetail;
  use Moose;
  has MemberAccount => (is => 'ro', isa => 'Str', required => 1);
  has PolicyId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComplianceDetail');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FMS::GetComplianceDetailResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FMS::GetComplianceDetail - Arguments for method GetComplianceDetail on L<Paws::FMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComplianceDetail on the 
L<Firewall Management Service|Paws::FMS> service. Use the attributes of this class
as arguments to method GetComplianceDetail.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComplianceDetail.

As an example:

  $service_obj->GetComplianceDetail(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MemberAccount => Str

The AWS account that owns the resources that you want to get the
details for.



=head2 B<REQUIRED> PolicyId => Str

The ID of the policy that you want to get the details for. C<PolicyId>
is returned by C<PutPolicy> and by C<ListPolicies>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComplianceDetail in L<Paws::FMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
