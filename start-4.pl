my $promise = Promise.start({
    sleep 2;
    say 'Done';
});

say 'Waiting...';
await $promise;
