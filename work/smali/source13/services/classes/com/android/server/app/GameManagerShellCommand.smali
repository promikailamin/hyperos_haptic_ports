.class public Lcom/android/server/app/GameManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "GameManagerShellCommand.java"


# static fields
.field private static final DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 56
    new-instance v0, Landroid/util/ArraySet;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/Long;

    .line 57
    const-wide/32 v2, 0xa09e1d7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 58
    const-wide/32 v2, 0xae57a6b

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 59
    const-wide/32 v2, 0xb52b546

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 60
    const-wide/32 v2, 0xa8bb021

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 61
    const-wide/32 v2, 0xb52b573

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 62
    const-wide/32 v2, 0xa8bb06d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 63
    const-wide/32 v2, 0xb52b550

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 64
    const-wide/32 v2, 0xa8bb033

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 65
    const-wide/32 v2, 0xb52b674

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 66
    const-wide/32 v2, 0xa8bb015

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 67
    const-wide/32 v2, 0xb52b576

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 68
    const-wide/32 v2, 0xb52b676

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 69
    const-wide/32 v2, 0xb52b555

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 70
    const-wide/32 v2, 0xb52b678

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xd

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lcom/android/server/app/GameManagerShellCommand;->DOWNSCALE_CHANGE_IDS:Landroid/util/ArraySet;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method

.method private runGameList(Ljava/io/PrintWriter;)I
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "packageName":Ljava/lang/String;
    nop

    .line 121
    const-string v1, "game"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/app/GameManagerService;

    .line 123
    .local v1, "gameManagerService":Lcom/android/server/app/GameManagerService;
    invoke-virtual {v1, v0}, Lcom/android/server/app/GameManagerService;->getInterventionList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "listStr":Ljava/lang/String;
    if-nez v2, :cond_2a

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No interventions found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_44

    .line 128
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " interventions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    :goto_44
    const/4 v3, 0x0

    return v3
.end method

.method private runGameMode(Ljava/io/PrintWriter;)I
    .registers 19
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "option":Ljava/lang/String;
    const/4 v2, 0x0

    .line 136
    .local v2, "userIdStr":Ljava/lang/String;
    if-eqz v1, :cond_15

    const-string v3, "--user"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 140
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, "gameMode":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "packageName":Ljava/lang/String;
    nop

    .line 143
    const-string v5, "game"

    invoke-static {v5}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 142
    invoke-static {v5}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object v5

    .line 144
    .local v5, "service":Landroid/app/IGameManagerService;
    const/4 v6, 0x0

    .line 145
    .local v6, "batteryModeSupported":Z
    const/4 v7, 0x0

    .line 146
    .local v7, "perfModeSupported":Z
    invoke-interface {v5, v4}, Landroid/app/IGameManagerService;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object v8

    .line 147
    .local v8, "modes":[I
    array-length v9, v8

    const/4 v11, 0x0

    :goto_30
    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ge v11, v9, :cond_40

    aget v14, v8, v11

    .line 148
    .local v14, "mode":I
    if-ne v14, v13, :cond_3a

    .line 149
    const/4 v7, 0x1

    goto :goto_3d

    .line 150
    :cond_3a
    if-ne v14, v12, :cond_3d

    .line 151
    const/4 v6, 0x1

    .line 147
    .end local v14    # "mode":I
    :cond_3d
    :goto_3d
    add-int/lit8 v11, v11, 0x1

    goto :goto_30

    .line 154
    :cond_40
    if-eqz v2, :cond_47

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_4b

    .line 155
    :cond_47
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    :goto_4b
    nop

    .line 156
    .local v9, "userId":I
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, -0x1

    sparse-switch v14, :sswitch_data_106

    :cond_5a
    goto :goto_99

    :sswitch_5b
    const-string/jumbo v14, "standard"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5a

    move v11, v15

    goto :goto_9b

    :sswitch_66
    const-string v14, "3"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5a

    const/4 v11, 0x4

    goto :goto_9b

    :sswitch_70
    const-string v14, "2"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5a

    move v11, v13

    goto :goto_9b

    :sswitch_7a
    const-string v14, "1"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5a

    const/4 v11, 0x0

    goto :goto_9b

    :sswitch_84
    const-string v14, "battery"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5a

    const/4 v11, 0x5

    goto :goto_9b

    :sswitch_8e
    const-string/jumbo v14, "performance"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5a

    move v11, v12

    goto :goto_9b

    :goto_99
    move/from16 v11, v16

    :goto_9b
    const-string v14, " not supported by "

    const-string v10, "Game mode: "

    packed-switch v11, :pswitch_data_120

    .line 186
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid game mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    return v16

    .line 176
    :pswitch_b9
    if-eqz v6, :cond_bf

    .line 177
    invoke-interface {v5, v4, v12, v9}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    goto :goto_103

    .line 180
    :cond_bf
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    return v16

    .line 165
    :pswitch_dc
    if-eqz v7, :cond_e2

    .line 166
    invoke-interface {v5, v4, v13, v9}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    goto :goto_103

    .line 169
    :cond_e2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    return v16

    .line 161
    :pswitch_ff
    invoke-interface {v5, v4, v15, v9}, Landroid/app/IGameManagerService;->setGameMode(Ljava/lang/String;II)V

    .line 162
    nop

    .line 189
    :goto_103
    const/4 v10, 0x0

    return v10

    nop

    :sswitch_data_106
    .sparse-switch
        -0x583cefd0 -> :sswitch_8e
        -0x13be51f3 -> :sswitch_84
        0x31 -> :sswitch_7a
        0x32 -> :sswitch_70
        0x33 -> :sswitch_66
        0x4e3d1ebd -> :sswitch_5b
    .end sparse-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_ff
        :pswitch_ff
        :pswitch_dc
        :pswitch_dc
        :pswitch_b9
        :pswitch_b9
    .end packed-switch
.end method

.method private runResetGameMode(Ljava/io/PrintWriter;)I
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    const/4 v0, 0x0

    .line 302
    .local v0, "option":Ljava/lang/String;
    const/4 v1, 0x0

    .line 303
    .local v1, "gameMode":Ljava/lang/String;
    const/4 v2, 0x0

    .line 304
    .local v2, "userIdStr":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v3, :cond_8b

    .line 305
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_108

    :cond_14
    goto :goto_28

    :sswitch_15
    const-string v3, "--user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v4, v5

    goto :goto_29

    :sswitch_1f
    const-string v3, "--mode"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_29

    :goto_28
    move v4, v6

    :goto_29
    const-string v3, "Duplicate option \'"

    const-string v5, "\'"

    packed-switch v4, :pswitch_data_112

    .line 323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid option \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    return v6

    .line 315
    :pswitch_4b
    if-nez v1, :cond_52

    .line 316
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    goto :goto_71

    .line 318
    :cond_52
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    return v6

    .line 307
    :pswitch_6b
    if-nez v2, :cond_72

    .line 308
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 324
    :goto_71
    goto :goto_3

    .line 310
    :cond_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    return v6

    .line 328
    :cond_8b
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "packageName":Ljava/lang/String;
    nop

    .line 331
    const-string v7, "game"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    check-cast v7, Lcom/android/server/app/GameManagerService;

    .line 333
    .local v7, "gameManagerService":Lcom/android/server/app/GameManagerService;
    if-eqz v2, :cond_9f

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_a3

    .line 334
    :cond_9f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    :goto_a3
    nop

    .line 336
    .local v8, "userId":I
    if-nez v1, :cond_aa

    .line 337
    invoke-virtual {v7, v3, v8, v6}, Lcom/android/server/app/GameManagerService;->resetGameModeConfigOverride(Ljava/lang/String;II)V

    .line 338
    return v5

    .line 341
    :cond_aa
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    sparse-switch v10, :sswitch_data_11a

    :cond_bb
    goto :goto_e4

    :sswitch_bc
    const-string v4, "3"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    move v4, v12

    goto :goto_e5

    :sswitch_c6
    const-string v4, "2"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    move v4, v5

    goto :goto_e5

    :sswitch_d0
    const-string v4, "battery"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    move v4, v11

    goto :goto_e5

    :sswitch_da
    const-string/jumbo v10, "performance"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bb

    goto :goto_e5

    :goto_e4
    move v4, v6

    :goto_e5
    packed-switch v4, :pswitch_data_12c

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid game mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    return v6

    .line 349
    :pswitch_ff
    invoke-virtual {v7, v3, v8, v11}, Lcom/android/server/app/GameManagerService;->resetGameModeConfigOverride(Ljava/lang/String;II)V

    .line 351
    goto :goto_107

    .line 344
    :pswitch_103
    invoke-virtual {v7, v3, v8, v12}, Lcom/android/server/app/GameManagerService;->resetGameModeConfigOverride(Ljava/lang/String;II)V

    .line 346
    nop

    .line 356
    :goto_107
    return v5

    :sswitch_data_108
    .sparse-switch
        0x4f776f43 -> :sswitch_1f
        0x4f7b216b -> :sswitch_15
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_6b
        :pswitch_4b
    .end packed-switch

    :sswitch_data_11a
    .sparse-switch
        -0x583cefd0 -> :sswitch_da
        -0x13be51f3 -> :sswitch_d0
        0x32 -> :sswitch_c6
        0x33 -> :sswitch_bc
    .end sparse-switch

    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_103
        :pswitch_103
        :pswitch_ff
        :pswitch_ff
    .end packed-switch
.end method

.method private runSetGameMode(Ljava/io/PrintWriter;)I
    .registers 23
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "option":Ljava/lang/String;
    const-string v2, "--mode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Invalid option \'"

    const-string v4, "\'"

    const/4 v5, -0x1

    if-nez v2, :cond_2c

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    return v5

    .line 199
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, "gameMode":Ljava/lang/String;
    const/4 v6, 0x0

    .line 206
    .local v6, "userIdStr":Ljava/lang/String;
    const/4 v7, 0x0

    .line 207
    .local v7, "fpsStr":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    .line 208
    .end local v7    # "fpsStr":Ljava/lang/String;
    .local v16, "fpsStr":Ljava/lang/String;
    .local v17, "downscaleRatio":Ljava/lang/String;
    :goto_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    const/4 v8, 0x1

    const/4 v10, 0x2

    const/16 v18, 0x0

    if-eqz v7, :cond_13e

    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_228

    :cond_49
    goto :goto_68

    :sswitch_4a
    const-string v7, "--downscale"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    goto :goto_69

    :sswitch_53
    const-string v7, "--user"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    move/from16 v8, v18

    goto :goto_69

    :sswitch_5e
    const-string v7, "--fps"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    move v8, v10

    goto :goto_69

    :goto_68
    move v8, v5

    :goto_69
    const-string v7, "Duplicate option \'"

    packed-switch v8, :pswitch_data_236

    .line 245
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    return v5

    .line 233
    :pswitch_87
    if-nez v16, :cond_b3

    .line 234
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 235
    .end local v16    # "fpsStr":Ljava/lang/String;
    .restart local v7    # "fpsStr":Ljava/lang/String;
    if-eqz v7, :cond_b0

    invoke-static {v7}, Lcom/android/server/app/GameManagerService;->getFpsInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v5, :cond_b0

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid frame rate \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    return v5

    .line 246
    :cond_b0
    move-object/from16 v16, v7

    goto :goto_123

    .line 240
    .end local v7    # "fpsStr":Ljava/lang/String;
    .restart local v16    # "fpsStr":Ljava/lang/String;
    :cond_b3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    return v5

    .line 219
    :pswitch_cc
    if-nez v17, :cond_104

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 221
    .end local v17    # "downscaleRatio":Ljava/lang/String;
    .local v7, "downscaleRatio":Ljava/lang/String;
    if-eqz v7, :cond_101

    .line 222
    invoke-static {v7}, Lcom/android/server/app/GameManagerService;->getCompatChangeId(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_101

    .line 223
    const-string v8, "disable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_101

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid scaling ratio \'"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    return v5

    .line 246
    :cond_101
    move-object/from16 v17, v7

    goto :goto_123

    .line 228
    .end local v7    # "downscaleRatio":Ljava/lang/String;
    .restart local v17    # "downscaleRatio":Ljava/lang/String;
    :cond_104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    return v5

    .line 211
    :pswitch_11d
    if-nez v6, :cond_125

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    .line 246
    :goto_123
    goto/16 :goto_37

    .line 214
    :cond_125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    return v5

    .line 250
    :cond_13e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_14a

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v9, v4

    goto :goto_14f

    .line 253
    :cond_14a
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    move v9, v4

    :goto_14f
    nop

    .line 255
    .local v9, "userId":I
    nop

    .line 256
    const-string v4, "game"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/app/GameManagerService;

    .line 258
    .local v4, "gameManagerService":Lcom/android/server/app/GameManagerService;
    const/4 v7, 0x0

    .line 259
    .local v7, "batteryModeSupported":Z
    const/4 v11, 0x0

    .line 260
    .local v11, "perfModeSupported":Z
    invoke-virtual {v4, v3}, Lcom/android/server/app/GameManagerService;->getAvailableGameModes(Ljava/lang/String;)[I

    move-result-object v15

    .line 262
    .local v15, "modes":[I
    array-length v12, v15

    move/from16 v19, v7

    move/from16 v20, v11

    move/from16 v7, v18

    .end local v7    # "batteryModeSupported":Z
    .end local v11    # "perfModeSupported":Z
    .local v19, "batteryModeSupported":Z
    .local v20, "perfModeSupported":Z
    :goto_166
    const/4 v11, 0x3

    if-ge v7, v12, :cond_179

    aget v13, v15, v7

    .line 263
    .local v13, "mode":I
    if-ne v13, v10, :cond_171

    .line 264
    const/4 v11, 0x1

    move/from16 v20, v11

    .end local v20    # "perfModeSupported":Z
    .restart local v11    # "perfModeSupported":Z
    goto :goto_176

    .line 265
    .end local v11    # "perfModeSupported":Z
    .restart local v20    # "perfModeSupported":Z
    :cond_171
    if-ne v13, v11, :cond_176

    .line 266
    const/4 v11, 0x1

    move/from16 v19, v11

    .line 262
    .end local v13    # "mode":I
    :cond_176
    :goto_176
    add-int/lit8 v7, v7, 0x1

    goto :goto_166

    .line 270
    :cond_179
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_240

    :cond_188
    goto :goto_1b2

    :sswitch_189
    const-string v8, "3"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_188

    move v8, v10

    goto :goto_1b3

    :sswitch_193
    const-string v8, "2"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_188

    move/from16 v8, v18

    goto :goto_1b3

    :sswitch_19e
    const-string v8, "battery"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_188

    move v8, v11

    goto :goto_1b3

    :sswitch_1a8
    const-string/jumbo v10, "performance"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_188

    goto :goto_1b3

    :goto_1b2
    move v8, v5

    :goto_1b3
    const-string v7, " not supported by "

    const-string v10, "Game mode: "

    packed-switch v8, :pswitch_data_252

    .line 294
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid game mode: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    return v5

    .line 284
    :pswitch_1d1
    if-eqz v19, :cond_1df

    .line 285
    const/4 v10, 0x3

    move-object v7, v4

    move-object v8, v3

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/app/GameManagerService;->setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move-object v8, v15

    goto :goto_20a

    .line 288
    :cond_1df
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    return v5

    .line 273
    :pswitch_1fc
    if-eqz v20, :cond_20b

    .line 274
    const/4 v13, 0x2

    move-object v10, v4

    move-object v11, v3

    move v12, v9

    move-object/from16 v14, v16

    move-object v8, v15

    .end local v15    # "modes":[I
    .local v8, "modes":[I
    move-object/from16 v15, v17

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/app/GameManagerService;->setGameModeConfigOverride(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 297
    :goto_20a
    return v18

    .line 277
    .end local v8    # "modes":[I
    .restart local v15    # "modes":[I
    :cond_20b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    return v5

    :sswitch_data_228
    .sparse-switch
        0x2902349 -> :sswitch_5e
        0x4f7b216b -> :sswitch_53
        0x6bb7c848 -> :sswitch_4a
    .end sparse-switch

    :pswitch_data_236
    .packed-switch 0x0
        :pswitch_11d
        :pswitch_cc
        :pswitch_87
    .end packed-switch

    :sswitch_data_240
    .sparse-switch
        -0x583cefd0 -> :sswitch_1a8
        -0x13be51f3 -> :sswitch_19e
        0x32 -> :sswitch_193
        0x33 -> :sswitch_189
    .end sparse-switch

    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_1fc
        :pswitch_1fc
        :pswitch_1d1
        :pswitch_1d1
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;

    .line 75
    if-nez p1, :cond_7

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 78
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 80
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    sparse-switch v2, :sswitch_data_92

    :cond_14
    goto :goto_4b

    :sswitch_15
    const-string v2, "downscale"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v3

    goto :goto_4c

    :sswitch_1f
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x2

    goto :goto_4c

    :sswitch_2a
    const-string/jumbo v2, "mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x3

    goto :goto_4c

    :sswitch_35
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x4

    goto :goto_4c

    :sswitch_40
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    goto :goto_4c

    :goto_4b
    move v2, v1

    :goto_4c
    packed-switch v2, :pswitch_data_a8

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    goto :goto_78

    .line 106
    :pswitch_54
    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runGameList(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 103
    :pswitch_59
    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runGameMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 91
    :pswitch_5e
    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runResetGameMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 88
    :pswitch_63
    invoke-direct {p0, v0}, Lcom/android/server/app/GameManagerShellCommand;->runSetGameMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    .line 82
    :pswitch_68
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "ratio":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/app/GameManagerServiceStub;->getInstance()Lcom/android/server/app/GameManagerServiceStub;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/android/server/app/GameManagerServiceStub;->shellCmd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_77} :catch_79

    .line 85
    return v3

    .line 109
    .end local v2    # "ratio":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    :goto_78
    return v1

    .line 111
    :catch_79
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    return v1

    nop

    :sswitch_data_92
    .sparse-switch
        0x1bc62 -> :sswitch_40
        0x32b09e -> :sswitch_35
        0x3339a3 -> :sswitch_2a
        0x6761d4f -> :sswitch_1f
        0x4e9b79e8 -> :sswitch_15
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_68
        :pswitch_63
        :pswitch_5e
        :pswitch_59
        :pswitch_54
    .end packed-switch
.end method

.method public onHelp()V
    .registers 5

    .line 361
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 362
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Game manager (game) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const-string v1, "      Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    const-string v1, "  downscale"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    const-string v1, "      Deprecated. Please use `set` command."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    const-string v1, "  mode [--user <USER_ID>] [1|2|3|standard|performance|battery] <PACKAGE_NAME>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    const-string v1, "      Set app to run in the specified game mode, if supported."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    const-string v1, "      --user <USER_ID>: apply for the given user,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    const-string v2, "                        the current user is used when unspecified."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    const-string v3, "  set --mode [2|3|performance|battery] [intervention configs] <PACKAGE_NAME>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    const-string v3, "      Set app to run at given game mode with configs, if supported."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    const-string v3, "      Intervention configs consists of:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    const-string v3, "      --downscale [0.3|0.35|0.4|0.45|0.5|0.55|0.6|0.65"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v3, "                  |0.7|0.75|0.8|0.85|0.9|disable]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    const-string v3, "      Set app to run at the specified scaling ratio."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const-string v3, "      --fps [30|45|60|90|120|disable]"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const-string v3, "      Set app to run at the specified fps, if supported."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const-string v3, "  reset [--mode [2|3|performance|battery] --user <USER_ID>] <PACKAGE_NAME>"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    const-string v3, "      Resets the game mode of the app to device configuration."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    const-string v3, "      --mode [2|3|performance|battery]: apply for the given mode,"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    const-string v3, "                                        resets all modes when unspecified."

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    return-void
.end method
