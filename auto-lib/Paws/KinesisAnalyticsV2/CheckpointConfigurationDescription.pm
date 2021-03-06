package Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription;
  use Moose;
  has CheckpointingEnabled => (is => 'ro', isa => 'Bool');
  has CheckpointInterval => (is => 'ro', isa => 'Int');
  has ConfigurationType => (is => 'ro', isa => 'Str');
  has MinPauseBetweenCheckpoints => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription object:

  $service_obj->Method(Att1 => { CheckpointingEnabled => $value, ..., MinPauseBetweenCheckpoints => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::CheckpointConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CheckpointingEnabled

=head1 DESCRIPTION

Describes checkpointing parameters for a Java-based Amazon Kinesis Data
Analytics application.

=head1 ATTRIBUTES


=head2 CheckpointingEnabled => Bool

  Describes whether checkpointing is enabled for a Java-based Kinesis
Data Analytics application.


=head2 CheckpointInterval => Int

  Describes the interval in milliseconds between checkpoint operations.


=head2 ConfigurationType => Str

  Describes whether the application uses the default checkpointing
behavior in Kinesis Data Analytics.


=head2 MinPauseBetweenCheckpoints => Int

  Describes the minimum time in milliseconds after a checkpoint operation
completes that a new checkpoint operation can start.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

