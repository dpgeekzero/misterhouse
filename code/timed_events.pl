
if (time_now "$Time_Sunset - 0:30") {
    set $Outside_Lights ON;
    run_voice_cmd "Normal Lights";
}

if (time_now "$Time_Sunrise") {
    set $Outside_Lights OFF;
}
