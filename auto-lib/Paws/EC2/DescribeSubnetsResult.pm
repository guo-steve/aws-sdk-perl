
package Paws::EC2::DescribeSubnetsResult;
  use Moose;
  has Subnets => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Subnet]', request_name => 'subnetSet', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSubnetsResult

=head1 ATTRIBUTES


=head2 Subnets => ArrayRef[L<Paws::EC2::Subnet>]

Information about one or more subnets.




=cut

