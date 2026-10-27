.class Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "LocationTimeZoneManagerShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 78
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 80
    return-void
.end method

.method private static convertControllerStateToProtoEnum(Ljava/lang/String;)I
    .registers 10
    .param p0, "state"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_6c

    :cond_f
    goto :goto_60

    :sswitch_10
    const-string v0, "FAILED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v4

    goto :goto_61

    :sswitch_1a
    const-string v0, "INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v7

    goto :goto_61

    :sswitch_24
    const-string v0, "CERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v5

    goto :goto_61

    :sswitch_2e
    const-string v0, "UNCERTAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v6

    goto :goto_61

    :sswitch_38
    const-string v0, "DESTROYED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v3

    goto :goto_61

    :sswitch_42
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_61

    :sswitch_4c
    const-string v0, "PROVIDERS_INITIALIZING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_61

    :sswitch_56
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v8

    goto :goto_61

    :goto_60
    const/4 v0, -0x1

    :goto_61
    packed-switch v0, :pswitch_data_8e

    .line 296
    return v1

    .line 293
    :pswitch_65
    return v2

    .line 291
    :pswitch_66
    return v3

    .line 289
    :pswitch_67
    return v4

    .line 287
    :pswitch_68
    return v5

    .line 285
    :pswitch_69
    return v6

    .line 283
    :pswitch_6a
    return v7

    .line 281
    :pswitch_6b
    return v8

    :sswitch_data_6c
    .sparse-switch
        -0x4584e253 -> :sswitch_56
        -0x1be9cf16 -> :sswitch_4c
        0x19d1382a -> :sswitch_42
        0x1c83a5f9 -> :sswitch_38
        0x33ff1fc9 -> :sswitch_2e
        0x52aa9882 -> :sswitch_24
        0x72462c4d -> :sswitch_1a
        0x7b29883d -> :sswitch_10
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
    .end packed-switch
.end method

.method private static convertProviderStateEnumToProtoEnum(I)I
    .registers 4
    .param p0, "stateEnum"    # I

    .line 312
    packed-switch p0, :pswitch_data_2a

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stateEnum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :pswitch_1c
    const/4 v0, 0x6

    return v0

    .line 324
    :pswitch_1e
    const/4 v0, 0x5

    return v0

    .line 322
    :pswitch_20
    const/4 v0, 0x4

    return v0

    .line 320
    :pswitch_22
    const/4 v0, 0x3

    return v0

    .line 318
    :pswitch_24
    const/4 v0, 0x2

    return v0

    .line 316
    :pswitch_26
    const/4 v0, 0x1

    return v0

    .line 314
    :pswitch_28
    const/4 v0, 0x0

    return v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_28
        :pswitch_26
        :pswitch_24
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
    .end packed-switch
.end method

.method private static parseProviderPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "providerPackageNameString"    # Ljava/lang/String;

    .line 341
    const-string v0, "@null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 342
    const/4 v0, 0x0

    return-object v0

    .line 344
    :cond_a
    return-object p0
.end method

.method private reportError(Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 335
    .local v0, "errPrintWriter":Ljava/io/PrintWriter;
    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 337
    return-void
.end method

.method private runClearRecordedProviderStates()I
    .registers 3

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->clearRecordedProviderStates()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8

    .line 215
    nop

    .line 216
    const/4 v0, 0x0

    return v0

    .line 212
    :catch_8
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 214
    const/4 v1, 0x2

    return v1
.end method

.method private runDumpControllerState()I
    .registers 13

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_b7

    .line 226
    .local v0, "state":Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    nop

    .line 228
    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 230
    return v1

    .line 234
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const-string v3, "--proto"

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 235
    .local v2, "useProto":Z
    if-eqz v2, :cond_27

    .line 236
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 237
    .local v3, "outFd":Ljava/io/FileDescriptor;
    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    move-object v3, v4

    .line 238
    .local v3, "outputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    goto :goto_37

    .line 239
    .end local v3    # "outputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :cond_27
    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Landroid/util/IndentingPrintWriter;

    .line 240
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "  "

    invoke-direct {v4, v5, v6}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 242
    .restart local v3    # "outputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_37
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getLastSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v4

    if-eqz v4, :cond_8e

    .line 243
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getLastSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v4

    .line 244
    .local v4, "lastSuggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    const-wide v5, 0x10b00000001L

    const-string v7, "last_suggestion"

    invoke-virtual {v3, v7, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v5

    .line 246
    .local v5, "lastSuggestionToken":J
    invoke-virtual {v4}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_54
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 247
    .local v8, "zoneId":Ljava/lang/String;
    const-wide v9, 0x20900000001L

    const-string/jumbo v11, "zone_ids"

    invoke-virtual {v3, v11, v9, v10, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 249
    .end local v8    # "zoneId":Ljava/lang/String;
    goto :goto_54

    .line 250
    :cond_6c
    invoke-virtual {v4}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getDebugInfo()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_74
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 251
    .local v8, "debugInfo":Ljava/lang/String;
    const-wide v9, 0x20900000002L

    const-string v11, "debug_info"

    invoke-virtual {v3, v11, v9, v10, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 253
    .end local v8    # "debugInfo":Ljava/lang/String;
    goto :goto_74

    .line 254
    :cond_8b
    invoke-virtual {v3, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 257
    .end local v4    # "lastSuggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .end local v5    # "lastSuggestionToken":J
    :cond_8e
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getControllerStates()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeControllerStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;)V

    .line 258
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getPrimaryProviderStates()Ljava/util/List;

    move-result-object v4

    const-wide v5, 0x20b00000002L

    const-string/jumbo v7, "primary_provider_states"

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    .line 261
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->getSecondaryProviderStates()Ljava/util/List;

    move-result-object v4

    const-wide v5, 0x20b00000003L

    const-string/jumbo v7, "secondary_provider_states"

    invoke-static {v3, v4, v7, v5, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    .line 264
    invoke-virtual {v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 266
    return v1

    .line 223
    .end local v0    # "state":Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .end local v2    # "useProto":Z
    .end local v3    # "outputStream":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :catch_b7
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 225
    const/4 v1, 0x1

    return v1
.end method

.method private runStart()I
    .registers 3

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->start()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_11

    .line 174
    nop

    .line 175
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 176
    .local v0, "outPrintWriter":Ljava/io/PrintWriter;
    const-string v1, "Service started"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    const/4 v1, 0x0

    return v1

    .line 171
    .end local v0    # "outPrintWriter":Ljava/io/PrintWriter;
    :catch_11
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 173
    const/4 v1, 0x1

    return v1
.end method

.method private runStartWithTestProviders()I
    .registers 6

    .line 181
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->parseProviderPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "testPrimaryProviderPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->parseProviderPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "testSecondaryProviderPackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 186
    .local v2, "recordProviderStateChanges":Z
    :try_start_18
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->startWithTestProviders(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1d} :catch_29

    .line 191
    nop

    .line 192
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 193
    .local v3, "outPrintWriter":Ljava/io/PrintWriter;
    const-string v4, "Service started (test mode)"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    const/4 v4, 0x0

    return v4

    .line 188
    .end local v3    # "outPrintWriter":Ljava/io/PrintWriter;
    :catch_29
    move-exception v3

    .line 189
    .local v3, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 190
    const/4 v4, 0x1

    return v4
.end method

.method private runStop()I
    .registers 3

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->stop()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5} :catch_11

    .line 203
    nop

    .line 204
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 205
    .local v0, "outPrintWriter":Ljava/io/PrintWriter;
    const-string v1, "Service stopped"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x0

    return v1

    .line 200
    .end local v0    # "outPrintWriter":Ljava/io/PrintWriter;
    :catch_11
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 202
    const/4 v1, 0x1

    return v1
.end method

.method private static writeControllerStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;)V
    .registers 8
    .param p0, "outputStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/dump/DualDumpOutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "states":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "state":Ljava/lang/String;
    const-wide v2, 0x20e00000004L

    .line 274
    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->convertControllerStateToProtoEnum(Ljava/lang/String;)I

    move-result v4

    .line 272
    const-string v5, "controller_states"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 275
    .end local v1    # "state":Ljava/lang/String;
    goto :goto_4

    .line 276
    :cond_1f
    return-void
.end method

.method private static writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V
    .registers 13
    .param p0, "outputStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/dump/DualDumpOutputStream;",
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;",
            ">;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 303
    .local p1, "providerStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 304
    .local v1, "providerState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    .line 305
    .local v2, "providerStateToken":J
    const-wide v4, 0x10e00000001L

    iget v6, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 306
    invoke-static {v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->convertProviderStateEnumToProtoEnum(I)I

    move-result v6

    .line 305
    const-string/jumbo v7, "state"

    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 307
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 308
    .end local v1    # "providerState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v2    # "providerStateToken":J
    goto :goto_4

    .line 309
    :cond_29
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 84
    if-nez p1, :cond_7

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 88
    :cond_7
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_66

    :cond_f
    goto :goto_44

    :sswitch_10
    const-string v1, "dump_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x4

    goto :goto_44

    :sswitch_1a
    const-string v1, "clear_recorded_provider_states"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x3

    goto :goto_44

    :sswitch_24
    const-string/jumbo v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    goto :goto_44

    :sswitch_2f
    const-string/jumbo v1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x2

    goto :goto_44

    :sswitch_3a
    const-string/jumbo v1, "start_with_test_providers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :goto_44
    packed-switch v0, :pswitch_data_7c

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 102
    :pswitch_4c
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runDumpControllerState()I

    move-result v0

    return v0

    .line 99
    :pswitch_51
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runClearRecordedProviderStates()I

    move-result v0

    return v0

    .line 96
    :pswitch_56
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStop()I

    move-result v0

    return v0

    .line 93
    :pswitch_5b
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStartWithTestProviders()I

    move-result v0

    return v0

    .line 90
    :pswitch_60
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->runStart()I

    move-result v0

    return v0

    nop

    :sswitch_data_66
    .sparse-switch
        -0x16f5718f -> :sswitch_3a
        0x360802 -> :sswitch_2f
        0x68ac462 -> :sswitch_24
        0xec9a033 -> :sswitch_1a
        0x38381a86 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5b
        :pswitch_56
        :pswitch_51
        :pswitch_4c
    .end packed-switch
.end method

.method public onHelp()V
    .registers 13

    .line 112
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 113
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "location_time_zone_manager"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Location Time Zone Manager (%s) commands for tests:\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 114
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "  help\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 115
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "    Print this help text.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 116
    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "start"

    aput-object v3, v2, v4

    const-string v5, "  %s\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 117
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Starts the service, creating location time zone providers.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 118
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/Object;

    const-string/jumbo v7, "start_with_test_providers"

    aput-object v7, v6, v4

    const-string v8, "@null"

    aput-object v8, v6, v1

    const-string v8, "  %s <primary package name|%2$s> <secondary package name|%2$s> <record states>\n"

    invoke-virtual {v0, v8, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 121
    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "    Starts the service with test provider packages configured / provider permission checks disabled.\n"

    invoke-virtual {v0, v8, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 123
    new-array v6, v4, [Ljava/lang/Object;

    const-string v8, "    <record states> - true|false, determines whether state recording is enabled.\n"

    invoke-virtual {v0, v8, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 125
    new-array v6, v2, [Ljava/lang/Object;

    const-string v8, "dump_state"

    aput-object v8, v6, v4

    const-string v9, "clear_recorded_provider_states"

    aput-object v9, v6, v1

    const-string v10, "    See %s and %s.\n"

    invoke-virtual {v0, v10, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 127
    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v10, "stop"

    aput-object v10, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 128
    new-array v6, v4, [Ljava/lang/Object;

    const-string v11, "    Stops the service, destroying location time zone providers.\n"

    invoke-virtual {v0, v11, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 129
    new-array v6, v1, [Ljava/lang/Object;

    aput-object v9, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 130
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v7, v6, v4

    aput-object v8, v6, v1

    const-string v7, "    Clears recorded provider state. See also %s and %s.\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 132
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "    Note: This is only intended for use during testing.\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 133
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v8, v6, v4

    const-string v7, "--proto"

    aput-object v7, v6, v1

    const-string v7, "  %s [%s]\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 134
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "    Dumps service state for tests as text or binary proto form.\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 135
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "    See the LocationTimeZoneManagerServiceStateProto definition for details.\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 136
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 137
    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "system_time"

    aput-object v7, v6, v4

    const-string v7, "This service is also affected by the following device_config flags in the %s namespace:\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 139
    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v7, "primary_location_time_zone_provider_mode_override"

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 140
    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "disabled"

    aput-object v7, v6, v4

    const-string v8, "enabled"

    aput-object v8, v6, v1

    const-string v9, "    Overrides the mode of the primary provider. Values=%s|%s\n"

    invoke-virtual {v0, v9, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 142
    new-array v6, v1, [Ljava/lang/Object;

    const-string/jumbo v9, "secondary_location_time_zone_provider_mode_override"

    aput-object v9, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 143
    new-array v6, v2, [Ljava/lang/Object;

    aput-object v7, v6, v4

    aput-object v8, v6, v1

    const-string v7, "    Overrides the mode of the secondary provider. Values=%s|%s\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 145
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "location_time_zone_detection_uncertainty_delay_millis"

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 146
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "    Sets the amount of time the service waits when uncertain before making an \'uncertain\' suggestion to the time zone detector.\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 148
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "ltzp_init_timeout_millis"

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 149
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "    Sets the initialization time passed to the providers.\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 150
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "ltzp_init_timeout_fuzz_millis"

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 151
    new-array v6, v4, [Ljava/lang/Object;

    const-string v7, "    Sets the amount of extra time added to the providers\' initialization time.\n"

    invoke-virtual {v0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 153
    new-array v6, v1, [Ljava/lang/Object;

    const-string v7, "ltzp_event_filtering_age_threshold_millis"

    aput-object v7, v6, v4

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 154
    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "    Sets the amount of time that must pass between equivalent LTZP events before they will be reported to the system server.\n"

    invoke-virtual {v0, v6, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 156
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 157
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v4

    aput-object v3, v2, v1

    const-string v3, "Typically, use \'%s\' to stop the service before setting individual flags and \'%s\' after to restart it.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 160
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 161
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 162
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 163
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "time_zone_detector"

    aput-object v2, v1, v4

    const-string v2, "Also see \"adb shell cmd %s help\" for higher-level location time zone commands / settings.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 165
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 166
    return-void
.end method
