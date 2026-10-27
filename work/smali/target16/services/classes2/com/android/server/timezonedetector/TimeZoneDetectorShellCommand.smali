.class public Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "TimeZoneDetectorShellCommand.java"


# instance fields
.field public final mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;


# direct methods
.method public static synthetic $r8$lambda$CF7XnN3MJqK8G5U49oP5XUmOEA8(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->lambda$runSuggestTelephonyTimeZone$2()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nfuxiWPQ6NioQ4CXo4rUmtmVQo8(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->lambda$runSuggestManualTimeZone$1()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zLI6f49IVNNAe-dQfAH_dCCNtz4(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)Lcom/android/server/timezonedetector/LocationAlgorithmEvent;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->lambda$runHandleLocationEvent$0()Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    return-void
.end method

.method public static parseTimeZoneIdArg(Landroid/os/ShellCommand;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    .line 218
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 219
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "--zone_id"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 221
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 225
    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2e
    if-eqz v0, :cond_31

    return-object v0

    .line 231
    :cond_31
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No zoneId specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final synthetic lambda$runHandleLocationEvent$0()Lcom/android/server/timezonedetector/LocationAlgorithmEvent;
    .registers 1

    .line 159
    invoke-static {p0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->parseCommandLineArg(Landroid/os/ShellCommand;)Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$runSuggestManualTimeZone$1()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 1

    .line 165
    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$runSuggestTelephonyTimeZone$2()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 1

    .line 171
    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 70
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_112

    goto/16 :goto_c4

    :sswitch_14
    const-string/jumbo v0, "set_auto_detection_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_c4

    :cond_1f
    const/16 v1, 0xd

    goto/16 :goto_c4

    :sswitch_23
    const-string v0, "handle_location_algorithm_event"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_c4

    :cond_2d
    const/16 v1, 0xc

    goto/16 :goto_c4

    :sswitch_31
    const-string v0, "is_geo_detection_supported"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_c4

    :cond_3b
    const/16 v1, 0xb

    goto/16 :goto_c4

    :sswitch_3f
    const-string v0, "enable_telephony_fallback"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    goto/16 :goto_c4

    :cond_49
    const/16 v1, 0xa

    goto/16 :goto_c4

    :sswitch_4d
    const-string/jumbo v0, "suggest_telephony_time_zone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    goto/16 :goto_c4

    :cond_58
    const/16 v1, 0x9

    goto/16 :goto_c4

    :sswitch_5c
    const-string v0, "is_geo_detection_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_66

    goto/16 :goto_c4

    :cond_66
    const/16 v1, 0x8

    goto/16 :goto_c4

    :sswitch_6a
    const-string v0, "confirm_time_zone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_73

    goto :goto_c4

    :cond_73
    const/4 v1, 0x7

    goto :goto_c4

    :sswitch_75
    const-string/jumbo v0, "set_geo_detection_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    goto :goto_c4

    :cond_7f
    const/4 v1, 0x6

    goto :goto_c4

    :sswitch_81
    const-string v0, "dump_metrics"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_c4

    :cond_8a
    const/4 v1, 0x5

    goto :goto_c4

    :sswitch_8c
    const-string v0, "is_auto_detection_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    goto :goto_c4

    :cond_95
    const/4 v1, 0x4

    goto :goto_c4

    :sswitch_97
    const-string/jumbo v0, "set_time_zone_state_for_tests"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_c4

    :cond_a1
    const/4 v1, 0x3

    goto :goto_c4

    :sswitch_a3
    const-string v0, "get_time_zone_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_c4

    :cond_ac
    const/4 v1, 0x2

    goto :goto_c4

    :sswitch_ae
    const-string/jumbo v0, "suggest_manual_time_zone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b8

    goto :goto_c4

    :cond_b8
    const/4 v1, 0x1

    goto :goto_c4

    :sswitch_ba
    const-string v0, "is_telephony_detection_supported"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c3

    goto :goto_c4

    :cond_c3
    const/4 v1, 0x0

    :goto_c4
    packed-switch v1, :pswitch_data_14c

    .line 100
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 74
    :pswitch_cc
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSetAutoDetectionEnabled()I

    move-result p0

    return p0

    .line 84
    :pswitch_d1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runHandleLocationEvent()I

    move-result p0

    return p0

    .line 78
    :pswitch_d6
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsGeoDetectionSupported()I

    move-result p0

    return p0

    .line 90
    :pswitch_db
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runEnableTelephonyFallback()I

    move-result p0

    return p0

    .line 88
    :pswitch_e0
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTelephonyTimeZone()I

    move-result p0

    return p0

    .line 80
    :pswitch_e5
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsGeoDetectionEnabled()I

    move-result p0

    return p0

    .line 96
    :pswitch_ea
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runConfirmTimeZone()I

    move-result p0

    return p0

    .line 82
    :pswitch_ef
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSetGeoDetectionEnabled()I

    move-result p0

    return p0

    .line 98
    :pswitch_f4
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runDumpMetrics()I

    move-result p0

    return p0

    .line 72
    :pswitch_f9
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsAutoDetectionEnabled()I

    move-result p0

    return p0

    .line 94
    :pswitch_fe
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSetTimeZoneState()I

    move-result p0

    return p0

    .line 92
    :pswitch_103
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runGetTimeZoneState()I

    move-result p0

    return p0

    .line 86
    :pswitch_108
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestManualTimeZone()I

    move-result p0

    return p0

    .line 76
    :pswitch_10d
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsTelephonyDetectionSupported()I

    move-result p0

    return p0

    :sswitch_data_112
    .sparse-switch
        -0x71c6eb88 -> :sswitch_ba
        -0x5f15f000 -> :sswitch_ae
        -0x5ebe7bf9 -> :sswitch_a3
        -0x51772501 -> :sswitch_97
        -0x4e7e5c54 -> :sswitch_8c
        -0x4b579288 -> :sswitch_81
        -0x26840a04 -> :sswitch_75
        -0x15bd4ce1 -> :sswitch_6a
        0x1d9e00c4 -> :sswitch_5c
        0x2390c53c -> :sswitch_4d
        0x4394f365 -> :sswitch_3f
        0x5298f571 -> :sswitch_31
        0x6d140877 -> :sswitch_23
        0x71625574 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_10d
        :pswitch_108
        :pswitch_103
        :pswitch_fe
        :pswitch_f9
        :pswitch_f4
        :pswitch_ef
        :pswitch_ea
        :pswitch_e5
        :pswitch_e0
        :pswitch_db
        :pswitch_d6
        :pswitch_d1
        :pswitch_cc
    .end packed-switch
.end method

.method public onHelp()V
    .registers 6

    .line 246
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 247
    const-string/jumbo v0, "time_zone_detector"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Time Zone Detector (%s) commands:\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 248
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "  help\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 249
    const-string v1, "    Print this help text.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 250
    const-string v1, "is_auto_detection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "  %s\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 251
    const-string v1, "    Prints true/false according to the automatic time zone detection setting\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 252
    const-string/jumbo v1, "set_auto_detection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "  %s true|false\n"

    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 253
    const-string v1, "    Sets the automatic time zone detection setting.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 254
    const-string v1, "is_telephony_detection_supported"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 255
    const-string v1, "    Prints true/false according to whether telephony time zone detection is supported on this device.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 257
    const-string v1, "is_geo_detection_supported"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 258
    const-string v1, "    Prints true/false according to whether geolocation time zone detection is supported on this device.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 260
    const-string v1, "is_geo_detection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 261
    const-string v1, "    Prints true/false according to the geolocation time zone detection setting.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 263
    const-string/jumbo v1, "set_geo_detection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 264
    const-string v1, "    Sets the geolocation time zone detection enabled setting.\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 265
    const-string v1, "enable_telephony_fallback"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 266
    const-string v3, "    Signals that telephony time zone detection fall back can be used if geolocation detection is supported and enabled.\n)"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 268
    const-string v3, "    This is a temporary state until geolocation detection becomes \"certain\".\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 270
    const-string v3, "    To have an effect this requires that the telephony fallback feature is supported on the device, see below for device_config flags.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 272
    const-string v3, "handle_location_algorithm_event"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <location event opts>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 273
    const-string v3, "    Simulates an event from the location time zone detection algorithm.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 274
    const-string/jumbo v3, "suggest_manual_time_zone"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <manual suggestion opts>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 275
    const-string v3, "    Suggests a time zone as if supplied by a user manually.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 276
    const-string/jumbo v3, "suggest_telephony_time_zone"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <telephony suggestion opts>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 277
    const-string v3, "    Simulates a time zone suggestion from the telephony time zone detection algorithm.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 279
    const-string v3, "get_time_zone_state"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 280
    const-string v3, "    Returns the current time zone setting state.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 281
    const-string/jumbo v3, "set_time_zone_state_for_tests"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <time zone state options>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 282
    const-string v3, "    Sets the current time zone state for tests.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 283
    const-string v3, "confirm_time_zone"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %s <--zone_id Olson ID>\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 284
    const-string v3, "    Tries to confirms the time zone, raising the confidence.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 285
    const-string v3, "dump_metrics"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 286
    const-string v3, "    Dumps the service metrics to stdout for inspection.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 287
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 288
    invoke-static {p0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 289
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 290
    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 291
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 292
    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 293
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 294
    invoke-static {p0}, Landroid/app/time/TimeZoneState;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 295
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 296
    const-string/jumbo v3, "system_time"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "This service is also affected by the following device_config flags in the %s namespace:\n"

    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 298
    const-string v3, "location_time_zone_detection_feature_supported"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 299
    const-string v3, "    Only observed if the geolocation time zone detection feature is enabled in config.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 301
    const-string v3, "    Set this to false to disable the feature.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 302
    const-string v3, "location_time_zone_detection_run_in_background_enabled"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 303
    const-string v3, "    Runs geolocation time zone detection even when it not enabled by the user. The result is not used to set the device\'s time zone [*]\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 305
    const-string v3, "location_time_zone_detection_setting_enabled_default"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 306
    const-string v3, "    Only used if the device does not have an explicit \'geolocation time zone detection enabled\' setting stored [*].\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 308
    const-string v3, "    The default is when unset is false.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 309
    const-string v3, "location_time_zone_detection_setting_enabled_override"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 310
    const-string v3, "    Used to override the device\'s \'geolocation time zone detection enabled\' setting [*].\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 312
    const-string/jumbo v3, "time_zone_detector_auto_detection_enabled_default"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 313
    const-string v3, "    Used to set the automatic time zone detection enabled default, i.e. when the device\'s automatic time zone detection enabled setting hasn\'t been set explicitly. Intended for internal testers."

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 316
    const-string/jumbo v3, "time_zone_detector_telephony_fallback_supported"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 317
    const-string v3, "    Used to enable / disable support for telephony detection fallback. Also see the %s command.\n"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 319
    const-string v1, "enhanced_metrics_collection_enabled"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 320
    const-string v1, "    Used to increase the detail of metrics collected / reported.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 321
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 322
    const-string v1, "[*] To be enabled, the user must still have location = on / auto time zone detection = on.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 324
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 325
    const-string v1, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 326
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 327
    const-string v0, "location_time_zone_manager"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Also see \"adb shell cmd %s help\" for lower-level location time zone commands / settings.\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 329
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runConfirmTimeZone()I
    .registers 3

    .line 210
    invoke-static {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->parseTimeZoneIdArg(Landroid/os/ShellCommand;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->confirmTimeZone(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runDumpMetrics()I
    .registers 3

    .line 237
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 238
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object p0

    .line 239
    const-string v1, "MetricsTimeZoneDetectorState:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runEnableTelephonyFallback()I
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    const-string v0, "Command line"

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enableTelephonyFallback(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runGetTimeZoneState()I
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getTimeZoneState()Landroid/app/time/TimeZoneState;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runHandleLocationEvent()I
    .registers 4

    .line 158
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 160
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 158
    invoke-virtual {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public final runIsAutoDetectionEnabled()I
    .registers 3

    .line 106
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    .line 108
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    .line 110
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result p0

    .line 111
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsGeoDetectionEnabled()I
    .registers 3

    .line 130
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x2

    .line 132
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    .line 133
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result p0

    .line 135
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsGeoDetectionSupported()I
    .registers 2

    .line 123
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 124
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->isGeoTimeZoneDetectionSupported()Z

    move-result p0

    .line 125
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runIsTelephonyDetectionSupported()I
    .registers 2

    .line 116
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 117
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->isTelephonyTimeZoneDetectionSupported()Z

    move-result p0

    .line 118
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSetAutoDetectionEnabled()I
    .registers 3

    .line 140
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 142
    new-instance v1, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v1}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 143
    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 145
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final runSetGeoDetectionEnabled()I
    .registers 3

    .line 149
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 151
    new-instance v1, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v1}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 152
    invoke-virtual {v1, v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v0

    .line 154
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final runSetTimeZoneState()I
    .registers 2

    .line 204
    invoke-static {p0}, Landroid/app/time/TimeZoneState;->parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/TimeZoneState;

    move-result-object v0

    .line 205
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->setTimeZoneState(Landroid/app/time/TimeZoneState;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I
    .registers 5

    .line 176
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const/4 v0, 0x1

    .line 178
    :try_start_5
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_13

    .line 180
    const-string p1, "Error: arg not specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :catch_11
    move-exception p1

    goto :goto_31

    .line 183
    :cond_13
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 184
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Arg "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " injected."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_2f} :catch_11

    const/4 p0, 0x0

    return p0

    .line 187
    :goto_31
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return v0
.end method

.method public final runSuggestManualTimeZone()I
    .registers 4

    .line 164
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 166
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 164
    invoke-virtual {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result p0

    return p0
.end method

.method public final runSuggestTelephonyTimeZone()I
    .registers 4

    .line 170
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 172
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 170
    invoke-virtual {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result p0

    return p0
.end method
