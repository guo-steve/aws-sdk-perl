
package Paws::ApiGatewayV2::UpdateRouteResponse;
  use Moose;
  has ApiKeyRequired => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'apiKeyRequired');
  has AuthorizationScopes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'authorizationScopes');
  has AuthorizationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizationType');
  has AuthorizerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authorizerId');
  has ModelSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelSelectionExpression');
  has OperationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'operationName');
  has RequestModels => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteModels', traits => ['NameInRequest'], request_name => 'requestModels');
  has RequestParameters => (is => 'ro', isa => 'Paws::ApiGatewayV2::RouteParameters', traits => ['NameInRequest'], request_name => 'requestParameters');
  has RouteId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeId');
  has RouteKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeKey');
  has RouteResponseSelectionExpression => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'routeResponseSelectionExpression');
  has Target => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'target');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateRouteResponse

=head1 ATTRIBUTES


=head2 ApiKeyRequired => Bool

Specifies whether an API key is required for this route.


=head2 AuthorizationScopes => ArrayRef[Str|Undef]

A list of authorization scopes configured on a route. The scopes are
used with a COGNITO_USER_POOLS authorizer to authorize the method
invocation. The authorization works by matching the route scopes
against the scopes parsed from the access token in the incoming
request. The method invocation is authorized if any route scope matches
a claimed scope in the access token. Otherwise, the invocation is not
authorized. When the route scope is configured, the client must provide
an access token instead of an identity token for authorization
purposes.


=head2 AuthorizationType => Str

The authorization type for the route. Valid values are NONE for open
access, AWS_IAM for using AWS IAM permissions, and CUSTOM for using a
Lambda authorizer

Valid values are: C<"NONE">, C<"AWS_IAM">, C<"CUSTOM">
=head2 AuthorizerId => Str

The identifier of the Authorizer resource to be associated with this
route, if the authorizationType is CUSTOM . The authorizer identifier
is generated by API Gateway when you created the authorizer.


=head2 ModelSelectionExpression => Str

The model selection expression for the route.


=head2 OperationName => Str

The operation name for the route.


=head2 RequestModels => L<Paws::ApiGatewayV2::RouteModels>

The request models for the route.


=head2 RequestParameters => L<Paws::ApiGatewayV2::RouteParameters>

The request parameters for the route.


=head2 RouteId => Str

The route ID.


=head2 RouteKey => Str

The route key for the route.


=head2 RouteResponseSelectionExpression => Str

The route response selection expression for the route.


=head2 Target => Str

The target for the route.


=head2 _request_id => Str


=cut

