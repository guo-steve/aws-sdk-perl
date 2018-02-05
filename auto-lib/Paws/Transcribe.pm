package Paws::Transcribe;
  use Moose;
  sub service { 'transcribe' }
  sub version { '2017-10-26' }
  sub target_prefix { 'Transcribe' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub GetTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTranscriptionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListTranscriptionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::StartTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetTranscriptionJob ListTranscriptionJobs StartTranscriptionJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe - Perl Interface to AWS Amazon Transcribe Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Transcribe');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Operations and objects for transcribing speech to text.

=head1 METHODS

=head2 GetTranscriptionJob(TranscriptionJobName => Str)

Each argument is described in detail in: L<Paws::Transcribe::GetTranscriptionJob>

Returns: a L<Paws::Transcribe::GetTranscriptionJobResponse> instance

Returns information about a transcription job. To see the status of the
job, check the C<Status> field. If the status is C<COMPLETE>, the job
is finished and you can find the results at the location specified in
the C<TranscriptionFileUri> field.


=head2 ListTranscriptionJobs(Status => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Transcribe::ListTranscriptionJobs>

Returns: a L<Paws::Transcribe::ListTranscriptionJobsResponse> instance

Lists transcription jobs with the specified status.


=head2 StartTranscriptionJob(LanguageCode => Str, Media => L<Paws::Transcribe::Media>, MediaFormat => Str, TranscriptionJobName => Str, [MediaSampleRateHertz => Int])

Each argument is described in detail in: L<Paws::Transcribe::StartTranscriptionJob>

Returns: a L<Paws::Transcribe::StartTranscriptionJobResponse> instance

Starts an asynchronous job to transcribe speech to text.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
