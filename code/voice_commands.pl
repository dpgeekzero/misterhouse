

$basic_lights = new Voice_Cmd('Basic Lights');
$goodnight = new Voice_Cmd('Goodnight Misterhouse');
$inside_lights = new Voice_Cmd('Inside Lights [on,off]');
$normal_lights = new Voice_Cmd('Normal Lights');

if (said $normal_lights) {
    my $all = new Group(list $Inside_Lights);

    set $bookshelf_light ON;
    $all -> remove ($bookshelf_light);
    set $dining_room "80%";
    $all -> remove ($dining_room);
    set $foyer_light "40%";
    $all -> remove ($foyer_light);
    set $hallway_south "40%";
    $all -> remove ($hallway_south);
    set $dougs_lamp "60%";
    $all -> remove ($dougs_lamp);

    set $all OFF;
}

if (said $goodnight) {
    my $all = new Group(list $Inside_Lights);
    $all -> remove ( $dougs_lamp );
    set $all OFF
}

if ($state = said $inside_lights) {
    if ($state eq 'off') {
        set $Inside_Lights OFF;
    } else {
        set $Inside_Lights ON;
    }
}
