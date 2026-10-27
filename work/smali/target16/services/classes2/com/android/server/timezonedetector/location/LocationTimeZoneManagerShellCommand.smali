.class public Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "LocationTimeZoneManagerShellCommand.java"


# instance fields
.field public final mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .registers 2

    .line 88
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    return-void
.end method

.method public static convertControllerStateToProtoEnum(Ljava/lang/String;)I
    .registers 2

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    goto :goto_54

    :sswitch_8
    const-string v0, "FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x6

    return p0

    :sswitch_12
    const-string v0, "INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x3

    return p0

    :sswitch_1c
    const-string v0, "CERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x5

    return p0

    :sswitch_26
    const-string v0, "UNCERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x4

    return p0

    :sswitch_30
    const-string v0, "DESTROYED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x7

    return p0

    :sswitch_3a
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    goto :goto_54

    :sswitch_40
    const-string v0, "PROVIDERS_INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x1

    return p0

    :sswitch_4a
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x2

    return p0

    :cond_54
    :goto_54
    const/4 p0, 0x0

    return p0

    :sswitch_data_56
    .sparse-switch
        -0x4584e253 -> :sswitch_4a
        -0x1be9cf16 -> :sswitch_40
        0x19d1382a -> :sswitch_3a
        0x1c83a5f9 -> :sswitch_30
        0x33ff1fc9 -> :sswitch_26
        0x52aa9882 -> :sswitch_1c
        0x72462c4d -> :sswitch_12
        0x7b29883d -> :sswitch_8
    .end sparse-switch
.end method

.method public static convertDetectionAlgorithmStatusToEnumToProtoEnum(I)I
    .registers 4

    if-eqz p0, :cond_24

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_23

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    return v0

    .line 375
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown statusEnum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    return v0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public static convertProviderStateEnumToProtoEnum(I)I
    .registers 4

    packed-switch p0, :pswitch_data_28

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stateEnum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    const/4 p0, 0x6

    return p0

    :pswitch_1c
    const/4 p0, 0x5

    return p0

    :pswitch_1e
    const/4 p0, 0x4

    return p0

    :pswitch_20
    const/4 p0, 0x3

    return p0

    :pswitch_22
    const/4 p0, 0x2

    return p0

    :pswitch_24
    const/4 p0, 0x1

    return p0

    :pswitch_26
    const/4 p0, 0x0

    return p0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
    .end packed-switch
.end method

.method public static parseProviderPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 387
    const-string v0, "@null"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method public static writeControllerStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;)V
    .registers 6

    .line 301
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-wide v1, 0x20e00000004L

    .line 304
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->convertControllerStateToProtoEnum(Ljava/lang/String;)I

    move-result v0

    .line 302
    const-string v3, "controller_states"

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_4

    :cond_1f
    return-void
.end method

.method public static writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V
    .registers 11

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 334
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 335
    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 336
    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->convertProviderStateEnumToProtoEnum(I)I

    move-result v0

    .line 335
    const-string/jumbo v3, "state"

    const-wide v4, 0x10e00000001L

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 337
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    goto :goto_4

    :cond_29
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-nez p1, :cond_7

    .line 95
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 98
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_6e

    goto :goto_4c

    :sswitch_13
    const-string v0, "dump_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_4c

    :cond_1c
    const/4 v1, 0x4

    goto :goto_4c

    :sswitch_1e
    const-string v0, "clear_recorded_provider_states"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_4c

    :cond_27
    const/4 v1, 0x3

    goto :goto_4c

    :sswitch_29
    const-string/jumbo v0, "start"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto :goto_4c

    :cond_33
    const/4 v1, 0x2

    goto :goto_4c

    :sswitch_35
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_4c

    :cond_3f
    const/4 v1, 0x1

    goto :goto_4c

    :sswitch_41
    const-string/jumbo v0, "start_with_test_providers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    packed-switch v1, :pswitch_data_84

    .line 115
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 112
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runDumpControllerState()I

    move-result p0

    return p0

    .line 109
    :pswitch_59
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runClearRecordedProviderStates()I

    move-result p0

    return p0

    .line 100
    :pswitch_5e
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStart()I

    move-result p0

    return p0

    .line 106
    :pswitch_63
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStop()I

    move-result p0

    return p0

    .line 103
    :pswitch_68
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStartWithTestProviders()I

    move-result p0

    return p0

    nop

    :sswitch_data_6e
    .sparse-switch
        -0x16f5718f -> :sswitch_41
        0x360802 -> :sswitch_35
        0x68ac462 -> :sswitch_29
        0xec9a033 -> :sswitch_1e
        0x38381a86 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_54
    .end packed-switch
.end method

.method public onHelp()V
    .registers 10

    .line 122
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 123
    const-string v0, "location_time_zone_manager"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Location Time Zone Manager (%s) commands for tests:\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 124
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "  help\n"

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 125
    const-string v1, "    Print this help text.\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 126
    const-string/jumbo v1, "start"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  %s\n"

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 127
    const-string v2, "    Starts the service, creating location time zone providers.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 128
    const-string v2, "@null"

    const-string/jumbo v4, "start_with_test_providers"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v5, "  %s <primary package name|%2$s> <secondary package name|%2$s> <record states>\n"

    invoke-virtual {p0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 131
    const-string v2, "    Starts the service with test provider packages configured / provider permission checks disabled.\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 133
    const-string v2, "    <record states> - true|false, determines whether state recording is enabled.\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 135
    const-string v2, "dump_state"

    const-string v5, "clear_recorded_provider_states"

    filled-new-array {v2, v5}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "    See %s and %s.\n"

    invoke-virtual {p0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 137
    const-string/jumbo v6, "stop"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 138
    const-string v7, "    Stops the service, destroying location time zone providers.\n"

    new-array v8, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 139
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 140
    const-string v5, "    Clears recorded provider state. See also %s and %s.\n"

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 142
    const-string v4, "    Note: This is only intended for use during testing.\n"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 143
    const-string v4, "--proto"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "  %s [%s]\n"

    invoke-virtual {p0, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 144
    const-string v2, "    Dumps service state for tests as text or binary proto form.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 145
    const-string v2, "    See the LocationTimeZoneManagerServiceStateProto definition for details.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 146
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 147
    const-string/jumbo v2, "system_time"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "This service is also affected by the following device_config flags in the %s namespace:\n"

    invoke-virtual {p0, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 149
    const-string/jumbo v2, "primary_location_time_zone_provider_mode_override"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 150
    const-string v2, "disabled"

    const-string v4, "enabled"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "    Overrides the mode of the primary provider. Values=%s|%s\n"

    invoke-virtual {p0, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 152
    const-string/jumbo v5, "secondary_location_time_zone_provider_mode_override"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 153
    const-string v5, "    Overrides the mode of the secondary provider. Values=%s|%s\n"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 155
    const-string v2, "location_time_zone_detection_uncertainty_delay_millis"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 156
    const-string v2, "    Sets the amount of time the service waits when uncertain before making an \'uncertain\' suggestion to the time zone detector.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 158
    const-string v2, "ltzp_init_timeout_millis"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 159
    const-string v2, "    Sets the initialization time passed to the providers.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 160
    const-string v2, "ltzp_init_timeout_fuzz_millis"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 161
    const-string v2, "    Sets the amount of extra time added to the providers\' initialization time.\n"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 163
    const-string v2, "ltzp_event_filtering_age_threshold_millis"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 164
    const-string v2, "    Sets the amount of time that must pass between equivalent LTZP events before they will be reported to the system server.\n"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 166
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 167
    const-string v2, "Typically, use \'%s\' to stop the service before setting individual flags and \'%s\' after to restart it.\n"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 170
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 171
    const-string v1, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 172
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 173
    const-string/jumbo v0, "time_zone_detector"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Also see \"adb shell cmd %s help\" for higher-level location time zone commands / settings.\n"

    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 175
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final reportError(Ljava/lang/Throwable;)V
    .registers 3

    .line 380
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 381
    const-string v0, "Error: "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final runClearRecordedProviderStates()I
    .registers 2

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->clearRecordedProviderStates()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 p0, 0x0

    return p0

    :catch_7
    move-exception v0

    .line 223
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x2

    return p0
.end method

.method public final runDumpControllerState()I
    .registers 14

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_ee

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 244
    :cond_a
    const-string v2, "--proto"

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 246
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    .line 247
    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3, p0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_35

    .line 249
    :cond_25
    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v3, Landroid/util/IndentingPrintWriter;

    .line 250
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v4, "  "

    invoke-direct {v3, p0, v4}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 253
    :goto_35
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getLastEvent()Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    move-result-object p0

    if-eqz p0, :cond_c5

    .line 254
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getLastEvent()Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    move-result-object p0

    .line 255
    const-string v3, "last_event"

    const-wide v4, 0x10b00000001L

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 259
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->getAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object v3

    .line 260
    const-string v8, "algorithm_status"

    const-wide v9, 0x10b00000003L

    invoke-virtual {v2, v8, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v8

    .line 263
    invoke-virtual {v3}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->convertDetectionAlgorithmStatusToEnumToProtoEnum(I)I

    move-result v3

    .line 262
    const-string/jumbo v10, "status"

    const-wide v11, 0x10e00000001L

    invoke-virtual {v2, v10, v11, v12, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 264
    invoke-virtual {v2, v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->getSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v3

    if-eqz v3, :cond_a3

    .line 268
    const-string/jumbo v3, "suggestion"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v3

    .line 270
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->getSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v5

    .line 271
    invoke-virtual {v5}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_88
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 272
    const-string/jumbo v9, "zone_ids"

    const-wide v10, 0x20900000001L

    invoke-virtual {v2, v9, v10, v11, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_88

    .line 275
    :cond_a0
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 279
    :cond_a3
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->getDebugInfo()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_ab
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 280
    const-string v4, "debug_info"

    const-wide v8, 0x20900000002L

    invoke-virtual {v2, v4, v8, v9, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_ab

    .line 284
    :cond_c2
    invoke-virtual {v2, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 287
    :cond_c5
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getControllerStates()Ljava/util/List;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeControllerStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;)V

    .line 288
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getPrimaryProviderStates()Ljava/util/List;

    move-result-object p0

    const-string/jumbo v3, "primary_provider_states"

    const-wide v4, 0x20b00000002L

    invoke-static {v2, p0, v3, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    .line 291
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getSecondaryProviderStates()Ljava/util/List;

    move-result-object p0

    const-string/jumbo v0, "secondary_provider_states"

    const-wide v3, 0x20b00000003L

    invoke-static {v2, p0, v0, v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    .line 294
    invoke-virtual {v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    return v1

    :catch_ee
    move-exception v0

    .line 234
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runStart()I
    .registers 2

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->start()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_10

    .line 185
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 186
    const-string v0, "Service started"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catch_10
    move-exception v0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runStartWithTestProviders()I
    .registers 5

    .line 191
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->parseProviderPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->parseProviderPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 196
    :try_start_18
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startWithTestProviders(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1d} :catch_28

    .line 202
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 203
    const-string v0, "Service started (test mode)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catch_28
    move-exception v0

    .line 199
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final runStop()I
    .registers 2

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stop()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_10

    .line 214
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 215
    const-string v0, "Service stopped"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catch_10
    move-exception v0

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    return p0
.end method
