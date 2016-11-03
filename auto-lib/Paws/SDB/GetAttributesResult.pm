
package Paws::SDB::GetAttributesResult;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SDB::Attribute]', request_name => 'Attribute', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::GetAttributesResult

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::SDB::Attribute>]

The list of attributes returned by the operation.




=cut

