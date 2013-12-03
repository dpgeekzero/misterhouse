
if ( time_now "$Time_Sunset - 1:00" ) {
    set $Outside_Lights ON;
    run_voice_cmd "Normal Lights";
}

if ( time_now "$Time_Sunrise_Twilight" ) {
    set $Outside_Lights OFF;
}
