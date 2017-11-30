package Paws::ServerlessRepo::Application;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', request_name => 'applicationId', traits => ['NameInRequest']);
  has Author => (is => 'ro', isa => 'Str', request_name => 'author', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'labels', traits => ['NameInRequest']);
  has LicenseUrl => (is => 'ro', isa => 'Str', request_name => 'licenseUrl', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ReadmeUrl => (is => 'ro', isa => 'Str', request_name => 'readmeUrl', traits => ['NameInRequest']);
  has SpdxLicenseId => (is => 'ro', isa => 'Str', request_name => 'spdxLicenseId', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Paws::ServerlessRepo::Version', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::Application

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::Application object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::Application object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Details about the application.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The application Amazon Resource Name (ARN).


=head2 Author => Str

  The name of the author publishing the app.\nMin Length=1. Max
Length=127.\nPattern "^[a-z0-9](([a-z0-9]|-(?!-))*[a-z0-9])?$";


=head2 CreationTime => Str

  The date/time this resource was created.


=head2 Description => Str

  The description of the application.\nMin Length=1. Max Length=256


=head2 Labels => ArrayRef[Str|Undef]

  Labels to improve discovery of apps in search results.\nMin Length=1.
Max Length=127. Maximum number of labels: 10\nPattern:
"^[a-zA-Z0-9+\\-_:\\/@]+$";


=head2 LicenseUrl => Str

  A link to a license file of the app that matches the spdxLicenseID of
your application.\nMax size 5 MB


=head2 Name => Str

  The name of the application.\nMin Length=1. Max Length=140\nPattern:
"[a-zA-Z0-9\\-]+";


=head2 ReadmeUrl => Str

  A link to the Readme file that contains a more detailed description of
the application and how it works in markdown language.\nMax size 5 MB


=head2 SpdxLicenseId => Str

  A valid identifier from https://spdx.org/licenses/.


=head2 Version => L<Paws::ServerlessRepo::Version>

  Version information about the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
