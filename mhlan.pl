#!/usr/bin/env perl
use Mojolicious::Lite;

my $header = 'August 1 @12pm - August 2 @12pm // Chester Mossman Teen Center // Lunenburg, MA // $20 Entry';

any '/' => sub {
  my ($c) = @_;

  $c->stash( title => 'Home', header => $header );
  $c->render( template => 'index' );
};

any '/games' => sub {
	my ($c) = @_;

	$c->stash( title => 'Games', header => $header );
	$c->render( template => 'games' );
};

any '/register' => sub {
	my ($c) = @_;

	$c->stash( title => 'Games', header => $header );
	$c->render( template => 'register' );
};

any '/directions' => sub {
	my ($c) = @_;

	$c->stash( title => 'Directions', header => $header );
	$c->render( template => 'directions' );
};

any '/sponsors' => sub {
	my ($c) = @_;

	$c->stash( title => 'Sponsors', header => $header );
	$c->render( template => 'sponsors' );
};

any '/contact' => sub {
	my ($c) = @_;

	$c->stash( title => 'Contact', header => $header );
	$c->render( template => 'contact' );
};

app->start;
