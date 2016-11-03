
package Paws::CodeCommit::ListBranchesOutput;
  use Moose;
  has Branches => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'branches' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListBranchesOutput

=head1 ATTRIBUTES


=head2 Branches => ArrayRef[Str|Undef]

The list of branch names.



=head2 NextToken => Str

An enumeration token that returns the batch of the results.




=cut

1;