package Paws::CloudWatchLogs::LogStream;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Int', request_name => 'creationTime', traits => ['NameInRequest']);
  has FirstEventTimestamp => (is => 'ro', isa => 'Int', request_name => 'firstEventTimestamp', traits => ['NameInRequest']);
  has LastEventTimestamp => (is => 'ro', isa => 'Int', request_name => 'lastEventTimestamp', traits => ['NameInRequest']);
  has LastIngestionTime => (is => 'ro', isa => 'Int', request_name => 'lastIngestionTime', traits => ['NameInRequest']);
  has LogStreamName => (is => 'ro', isa => 'Str', request_name => 'logStreamName', traits => ['NameInRequest']);
  has StoredBytes => (is => 'ro', isa => 'Int', request_name => 'storedBytes', traits => ['NameInRequest']);
  has UploadSequenceToken => (is => 'ro', isa => 'Str', request_name => 'uploadSequenceToken', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::LogStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::LogStream object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UploadSequenceToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::LogStream object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A log stream is sequence of log events from a single emitter of logs.

=head1 ATTRIBUTES


=head2 Arn => Str

  


=head2 CreationTime => Int

  


=head2 FirstEventTimestamp => Int

  


=head2 LastEventTimestamp => Int

  


=head2 LastIngestionTime => Int

  


=head2 LogStreamName => Str

  


=head2 StoredBytes => Int

  


=head2 UploadSequenceToken => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

