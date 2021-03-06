
package Paws::SDB::ListDomains;
  use Moose;
  has MaxNumberOfDomains => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SDB::ListDomainsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListDomainsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::ListDomains - Arguments for method ListDomains on L<Paws::SDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomains on the
L<Amazon SimpleDB|Paws::SDB> service. Use the attributes of this class
as arguments to method ListDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomains.

=head1 SYNOPSIS

    my $sdb = Paws->service('SDB');
    my $ListDomainsResult = $sdb->ListDomains(
      MaxNumberOfDomains => 1,             # OPTIONAL
      NextToken          => 'MyString',    # OPTIONAL
    );

    # Results:
    my $DomainNames = $ListDomainsResult->DomainNames;
    my $NextToken   = $ListDomainsResult->NextToken;

    # Returns a L<Paws::SDB::ListDomainsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sdb/ListDomains>

=head1 ATTRIBUTES


=head2 MaxNumberOfDomains => Int

The maximum number of domain names you want returned. The range is 1 to
100. The default setting is 100.



=head2 NextToken => Str

A string informing Amazon SimpleDB where to start the next list of
domain names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomains in L<Paws::SDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

