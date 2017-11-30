package Paws::Comprehend;
  use Moose;
  sub service { 'comprehend' }
  sub version { '2017-11-27' }
  sub target_prefix { 'Comprehend_20171127' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchDetectDominantLanguage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectDominantLanguage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectKeyPhrases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectKeyPhrases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectSentiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectSentiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTopicsDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeTopicsDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectDominantLanguage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectDominantLanguage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectKeyPhrases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectKeyPhrases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectSentiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectSentiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTopicsDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListTopicsDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTopicsDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartTopicsDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchDetectDominantLanguage BatchDetectEntities BatchDetectKeyPhrases BatchDetectSentiment DescribeTopicsDetectionJob DetectDominantLanguage DetectEntities DetectKeyPhrases DetectSentiment ListTopicsDetectionJobs StartTopicsDetectionJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend - Perl Interface to AWS Amazon Comprehend

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Comprehend');
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

Amazon Comprehend is an AWS service for gaining insight into the
content of documents. Use these actions to determine the topics
contained in your documents, the topics they discuss, the predominant
sentiment expressed in them, the predominant language used, and more.

=head1 METHODS

=head2 BatchDetectDominantLanguage(TextList => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectDominantLanguage>

Returns: a L<Paws::Comprehend::BatchDetectDominantLanguageResponse> instance

Determines the dominant language of the input text for a batch of
documents. For a list of languages that Amazon Comprehend can detect,
see Amazon Comprehend Supported Languages
(http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).


=head2 BatchDetectEntities(LanguageCode => Str, TextList => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectEntities>

Returns: a L<Paws::Comprehend::BatchDetectEntitiesResponse> instance

Inspects the text of a batch of documents and returns information about
them. For more information about entities, see how-entities


=head2 BatchDetectKeyPhrases(LanguageCode => Str, TextList => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectKeyPhrases>

Returns: a L<Paws::Comprehend::BatchDetectKeyPhrasesResponse> instance

Detects the key noun phrases found in a batch of documents.


=head2 BatchDetectSentiment(LanguageCode => Str, TextList => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectSentiment>

Returns: a L<Paws::Comprehend::BatchDetectSentimentResponse> instance

Inspects a batch of documents and returns an inference of the
prevailing sentiment, C<POSITIVE>, C<NEUTRAL>, C<MIXED>, or
C<NEGATIVE>, in each one.


=head2 DescribeTopicsDetectionJob(JobId => Str)

Each argument is described in detail in: L<Paws::Comprehend::DescribeTopicsDetectionJob>

Returns: a L<Paws::Comprehend::DescribeTopicsDetectionJobResponse> instance

Gets the properties associated with a topic detection job. Use this
operation to get the status of a detection job.


=head2 DetectDominantLanguage(Text => Str)

Each argument is described in detail in: L<Paws::Comprehend::DetectDominantLanguage>

Returns: a L<Paws::Comprehend::DetectDominantLanguageResponse> instance

Determines the dominant language of the input text. For a list of
languages that Amazon Comprehend can detect, see Amazon Comprehend
Supported Languages
(http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).


=head2 DetectEntities(LanguageCode => Str, Text => Str)

Each argument is described in detail in: L<Paws::Comprehend::DetectEntities>

Returns: a L<Paws::Comprehend::DetectEntitiesResponse> instance

Inspects text for entities, and returns information about them. For
more information, about entities, see how-entities.


=head2 DetectKeyPhrases(LanguageCode => Str, Text => Str)

Each argument is described in detail in: L<Paws::Comprehend::DetectKeyPhrases>

Returns: a L<Paws::Comprehend::DetectKeyPhrasesResponse> instance

Detects the key noun phrases found in the text.


=head2 DetectSentiment(LanguageCode => Str, Text => Str)

Each argument is described in detail in: L<Paws::Comprehend::DetectSentiment>

Returns: a L<Paws::Comprehend::DetectSentimentResponse> instance

Inspects text and returns an inference of the prevailing sentiment
(C<POSITIVE>, C<NEUTRAL>, C<MIXED>, or C<NEGATIVE>).


=head2 ListTopicsDetectionJobs([Filter => L<Paws::Comprehend::TopicsDetectionJobFilter>, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Comprehend::ListTopicsDetectionJobs>

Returns: a L<Paws::Comprehend::ListTopicsDetectionJobsResponse> instance

Gets a list of the topic detection jobs that you have submitted.


=head2 StartTopicsDetectionJob(DataAccessRoleArn => Str, InputDataConfig => L<Paws::Comprehend::InputDataConfig>, OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>, [ClientRequestToken => Str, JobName => Str, NumberOfTopics => Int])

Each argument is described in detail in: L<Paws::Comprehend::StartTopicsDetectionJob>

Returns: a L<Paws::Comprehend::StartTopicsDetectionJobResponse> instance

Starts an asynchronous topic detection job. Use the
C<DescribeTopicDetectionJob> operation to track the status of a job.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
