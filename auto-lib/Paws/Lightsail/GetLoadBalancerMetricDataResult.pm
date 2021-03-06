
package Paws::Lightsail::GetLoadBalancerMetricDataResult;
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::MetricDatapoint]', traits => ['NameInRequest'], request_name => 'metricData' );
  has MetricName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetLoadBalancerMetricDataResult

=head1 ATTRIBUTES


=head2 MetricData => ArrayRef[L<Paws::Lightsail::MetricDatapoint>]

An array of metric datapoint objects.


=head2 MetricName => Str

The metric about which you are receiving information. Valid values are
listed below, along with the most useful C<statistics> to include in
your request.

=over

=item *

B<C<ClientTLSNegotiationErrorCount> > - The number of TLS connections
initiated by the client that did not establish a session with the load
balancer. Possible causes include a mismatch of ciphers or protocols.

C<Statistics>: The most useful statistic is C<Sum>.

=item *

B<C<HealthyHostCount> > - The number of target instances that are
considered healthy.

C<Statistics>: The most useful statistic are C<Average>, C<Minimum>,
and C<Maximum>.

=item *

B<C<UnhealthyHostCount> > - The number of target instances that are
considered unhealthy.

C<Statistics>: The most useful statistic are C<Average>, C<Minimum>,
and C<Maximum>.

=item *

B<C<HTTPCode_LB_4XX_Count> > - The number of HTTP 4XX client error
codes that originate from the load balancer. Client errors are
generated when requests are malformed or incomplete. These requests
have not been received by the target instance. This count does not
include any response codes generated by the target instances.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_LB_5XX_Count> > - The number of HTTP 5XX server error
codes that originate from the load balancer. This count does not
include any response codes generated by the target instances.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_Instance_2XX_Count> > - The number of HTTP response codes
generated by the target instances. This does not include any response
codes generated by the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_Instance_3XX_Count> > - The number of HTTP response codes
generated by the target instances. This does not include any response
codes generated by the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_Instance_4XX_Count> > - The number of HTTP response codes
generated by the target instances. This does not include any response
codes generated by the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<HTTPCode_Instance_5XX_Count> > - The number of HTTP response codes
generated by the target instances. This does not include any response
codes generated by the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=item *

B<C<InstanceResponseTime> > - The time elapsed, in seconds, after the
request leaves the load balancer until a response from the target
instance is received.

C<Statistics>: The most useful statistic is C<Average>.

=item *

B<C<RejectedConnectionCount> > - The number of connections that were
rejected because the load balancer had reached its maximum number of
connections.

C<Statistics>: The most useful statistic is C<Sum>.

=item *

B<C<RequestCount> > - The number of requests processed over IPv4. This
count includes only the requests with a response generated by a target
instance of the load balancer.

C<Statistics>: The most useful statistic is C<Sum>. Note that
C<Minimum>, C<Maximum>, and C<Average> all return C<1>.

=back


Valid values are: C<"ClientTLSNegotiationErrorCount">, C<"HealthyHostCount">, C<"UnhealthyHostCount">, C<"HTTPCode_LB_4XX_Count">, C<"HTTPCode_LB_5XX_Count">, C<"HTTPCode_Instance_2XX_Count">, C<"HTTPCode_Instance_3XX_Count">, C<"HTTPCode_Instance_4XX_Count">, C<"HTTPCode_Instance_5XX_Count">, C<"InstanceResponseTime">, C<"RejectedConnectionCount">, C<"RequestCount">
=head2 _request_id => Str


=cut

1;