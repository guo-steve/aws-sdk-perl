
package Paws::SMS::GetConnectorsResponse;
  use Moose;
  has ConnectorList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::Connector]', traits => ['NameInRequest'], request_name => 'connectorList' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetConnectorsResponse

=head1 ATTRIBUTES


=head2 ConnectorList => ArrayRef[L<Paws::SMS::Connector>]





=head2 NextToken => Str






=cut

1;