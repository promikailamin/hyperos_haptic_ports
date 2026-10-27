.class Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "TimeZoneDetectorShellCommand.java"


# instance fields
.field private final mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .registers 2
    .param p1, "timeZoneDetectorService"    # Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 55
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 57
    return-void
.end method

.method private runDumpMetrics()I
    .registers 4

    .line 187
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 188
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v1

    .line 189
    .local v1, "metricsState":Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    const-string v2, "MetricsTimeZoneDetectorState:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    const/4 v2, 0x0

    return v2
.end method

.method private runEnableTelephonyFallback()I
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enableTelephonyFallback()V

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method private runIsAutoDetectionEnabled()I
    .registers 5

    .line 95
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 96
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    .line 97
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v2

    .line 98
    invoke-virtual {v2}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    .line 99
    invoke-virtual {v2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v2

    .line 100
    .local v2, "enabled":Z
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 101
    const/4 v3, 0x0

    return v3
.end method

.method private runIsGeoDetectionEnabled()I
    .registers 5

    .line 119
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 120
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    .line 121
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v2

    .line 124
    .local v2, "enabled":Z
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 125
    const/4 v3, 0x0

    return v3
.end method

.method private runIsGeoDetectionSupported()I
    .registers 4

    .line 112
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 113
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->isGeoTimeZoneDetectionSupported()Z

    move-result v1

    .line 114
    .local v1, "enabled":Z
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 115
    const/4 v2, 0x0

    return v2
.end method

.method private runIsTelephonyDetectionSupported()I
    .registers 4

    .line 105
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 106
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->isTelephonyTimeZoneDetectionSupported()Z

    move-result v1

    .line 107
    .local v1, "enabled":Z
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 108
    const/4 v2, 0x0

    return v2
.end method

.method private runSetAutoDetectionEnabled()I
    .registers 5

    .line 129
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 130
    .local v0, "enabled":Z
    const/4 v1, -0x2

    .line 131
    .local v1, "userId":I
    new-instance v2, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v2}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 132
    invoke-virtual {v2, v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    .line 134
    .local v2, "configuration":Landroid/app/time/TimeZoneConfiguration;
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method private runSetGeoDetectionEnabled()I
    .registers 5

    .line 138
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 139
    .local v0, "enabled":Z
    const/4 v1, -0x2

    .line 140
    .local v1, "userId":I
    new-instance v2, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v2}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 141
    invoke-virtual {v2, v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    .line 143
    .local v2, "configuration":Landroid/app/time/TimeZoneConfiguration;
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method private runSuggestGeolocationTimeZone()I
    .registers 4

    .line 147
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 149
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 147
    invoke-direct {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result v0

    return v0
.end method

.method private runSuggestManualTimeZone()I
    .registers 4

    .line 153
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 155
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 153
    invoke-direct {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result v0

    return v0
.end method

.method private runSuggestTelephonyTimeZone()I
    .registers 4

    .line 159
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 161
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 159
    invoke-direct {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result v0

    return v0
.end method

.method private runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)I"
        }
    .end annotation

    .line 165
    .local p1, "suggestionParser":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p2, "invoker":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 167
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    :try_start_5
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    .line 168
    .local v2, "suggestion":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_11

    .line 169
    const-string v3, "Error: suggestion not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    return v1

    .line 172
    :cond_11
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Suggestion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " injected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_30} :catch_32

    .line 174
    const/4 v1, 0x0

    return v1

    .line 175
    .end local v2    # "suggestion":Ljava/lang/Object;, "TT;"
    :catch_32
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 177
    return v1
.end method


# virtual methods
.method synthetic lambda$runSuggestGeolocationTimeZone$0$com-android-server-timezonedetector-TimeZoneDetectorShellCommand()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 2

    .line 148
    invoke-static {p0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$runSuggestManualTimeZone$1$com-android-server-timezonedetector-TimeZoneDetectorShellCommand()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 2

    .line 154
    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$runSuggestTelephonyTimeZone$2$com-android-server-timezonedetector-TimeZoneDetectorShellCommand()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 2

    .line 160
    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 61
    if-nez p1, :cond_7

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 65
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_c6

    :cond_f
    goto/16 :goto_87

    :sswitch_11
    const-string/jumbo v1, "set_auto_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    goto/16 :goto_87

    :sswitch_1d
    const-string v1, "is_geo_detection_supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x3

    goto :goto_87

    :sswitch_27
    const-string v1, "enable_telephony_fallback"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v0, 0x9

    goto :goto_87

    :sswitch_32
    const-string/jumbo v1, "suggest_geo_location_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x6

    goto :goto_87

    :sswitch_3d
    const-string/jumbo v1, "suggest_telephony_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v0, 0x8

    goto :goto_87

    :sswitch_49
    const-string v1, "is_geo_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x4

    goto :goto_87

    :sswitch_53
    const-string/jumbo v1, "set_geo_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x5

    goto :goto_87

    :sswitch_5e
    const-string v1, "dump_metrics"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v0, 0xa

    goto :goto_87

    :sswitch_69
    const-string v1, "is_auto_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    goto :goto_87

    :sswitch_73
    const-string/jumbo v1, "suggest_manual_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x7

    goto :goto_87

    :sswitch_7e
    const-string v1, "is_telephony_detection_supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x2

    :goto_87
    packed-switch v0, :pswitch_data_f4

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 87
    :pswitch_8f
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runDumpMetrics()I

    move-result v0

    return v0

    .line 85
    :pswitch_94
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runEnableTelephonyFallback()I

    move-result v0

    return v0

    .line 83
    :pswitch_99
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTelephonyTimeZone()I

    move-result v0

    return v0

    .line 81
    :pswitch_9e
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestManualTimeZone()I

    move-result v0

    return v0

    .line 79
    :pswitch_a3
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestGeolocationTimeZone()I

    move-result v0

    return v0

    .line 77
    :pswitch_a8
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSetGeoDetectionEnabled()I

    move-result v0

    return v0

    .line 75
    :pswitch_ad
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsGeoDetectionEnabled()I

    move-result v0

    return v0

    .line 73
    :pswitch_b2
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsGeoDetectionSupported()I

    move-result v0

    return v0

    .line 71
    :pswitch_b7
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsTelephonyDetectionSupported()I

    move-result v0

    return v0

    .line 69
    :pswitch_bc
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSetAutoDetectionEnabled()I

    move-result v0

    return v0

    .line 67
    :pswitch_c1
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsAutoDetectionEnabled()I

    move-result v0

    return v0

    :sswitch_data_c6
    .sparse-switch
        -0x71c6eb88 -> :sswitch_7e
        -0x5f15f000 -> :sswitch_73
        -0x4e7e5c54 -> :sswitch_69
        -0x4b579288 -> :sswitch_5e
        -0x26840a04 -> :sswitch_53
        0x1d9e00c4 -> :sswitch_49
        0x2390c53c -> :sswitch_3d
        0x26a0e49d -> :sswitch_32
        0x4394f365 -> :sswitch_27
        0x5298f571 -> :sswitch_1d
        0x71625574 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_f4
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_bc
        :pswitch_b7
        :pswitch_b2
        :pswitch_ad
        :pswitch_a8
        :pswitch_a3
        :pswitch_9e
        :pswitch_99
        :pswitch_94
        :pswitch_8f
    .end packed-switch
.end method

.method public onHelp()V
    .registers 8

    .line 196
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 197
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "time_zone_detector"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Time Zone Detector (%s) commands:\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 198
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "  help\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 199
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "    Print this help text.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 200
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "is_auto_detection_enabled"

    aput-object v3, v2, v4

    const-string v3, "  %s\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 201
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Prints true/false according to the automatic time zone detection setting\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 202
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v5, "set_auto_detection_enabled"

    aput-object v5, v2, v4

    const-string v5, "  %s true|false\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 203
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Sets the automatic time zone detection setting.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 204
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "is_telephony_detection_supported"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 205
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Prints true/false according to whether telephony time zone detection is supported on this device.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 207
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "is_geo_detection_supported"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 208
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Prints true/false according to whether geolocation time zone detection is supported on this device.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 210
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "is_geo_detection_enabled"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 211
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Prints true/false according to the geolocation time zone detection setting.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 213
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "set_geo_detection_enabled"

    aput-object v6, v2, v4

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 214
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Sets the geolocation time zone detection enabled setting.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 215
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "enable_telephony_fallback"

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 216
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Signals that telephony time zone detection fall back can be used if geolocation detection is supported and enabled. This is a temporary state until geolocation detection becomes \"certain\". To have an effect this requires that the telephony fallback feature is supported on the device, see below for for device_config flags.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 221
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 222
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "suggest_geo_location_time_zone"

    aput-object v6, v2, v4

    const-string v6, "  %s <geolocation suggestion opts>\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 224
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "suggest_manual_time_zone"

    aput-object v6, v2, v4

    const-string v6, "  %s <manual suggestion opts>\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 225
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "suggest_telephony_time_zone"

    aput-object v6, v2, v4

    const-string v6, "  %s <telephony suggestion opts>\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 226
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "dump_metrics"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 227
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Dumps the service metrics to stdout for inspection.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 228
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 229
    invoke-static {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 231
    invoke-static {v0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 233
    invoke-static {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 234
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 235
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "system_time"

    aput-object v6, v2, v4

    const-string v6, "This service is also affected by the following device_config flags in the %s namespace:\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 237
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "location_time_zone_detection_feature_supported"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 238
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Only observed if the geolocation time zone detection feature is enabled in config.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 240
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Set this to false to disable the feature.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 241
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "location_time_zone_detection_run_in_background_enabled"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 242
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Runs geolocation time zone detection even when it not enabled by the user. The result is not used to set the device\'s time zone [*]\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 244
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "location_time_zone_detection_setting_enabled_default"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 245
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Only used if the device does not have an explicit \'geolocation time zone detection enabled\' setting stored [*].\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 247
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    The default is when unset is false.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 248
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "location_time_zone_detection_setting_enabled_override"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 249
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Used to override the device\'s \'geolocation time zone detection enabled\' setting [*].\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 251
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v6, "time_zone_detector_telephony_fallback_supported"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 252
    new-array v2, v1, [Ljava/lang/Object;

    aput-object v5, v2, v4

    const-string v5, "    Used to enable / disable support for telephony detection fallback. Also see the %s command.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 254
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "enhanced_metrics_collection_enabled"

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 255
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "    Used to increase the detail of metrics collected / reported.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 256
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 257
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "[*] To be enabled, the user must still have location = on / auto time zone detection = on.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 259
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 260
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 261
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 262
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "location_time_zone_manager"

    aput-object v2, v1, v4

    const-string v2, "Also see \"adb shell cmd %s help\" for lower-level location time zone commands / settings.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 264
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 265
    return-void
.end method
