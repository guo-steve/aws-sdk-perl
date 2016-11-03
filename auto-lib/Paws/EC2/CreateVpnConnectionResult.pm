
package Paws::EC2::CreateVpnConnectionResult;
  use Moose;
  has VpnConnection => (is => 'ro', isa => 'Paws::EC2::VpnConnection', request_name => 'vpnConnection', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpnConnectionResult

=head1 ATTRIBUTES


=head2 VpnConnection => L<Paws::EC2::VpnConnection>

Information about the VPN connection.




=cut

