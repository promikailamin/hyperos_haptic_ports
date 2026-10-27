.class public Lcom/android/server/location/LocationShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "LocationShellCommand.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mService:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    check-cast p1, Lcom/android/server/location/LocationManagerService;

    iput-object p2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final handleAddTestProvider()V
    .registers 19

    move-object/from16 v0, p0

    .line 219
    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 231
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v4

    move v13, v12

    .line 234
    :goto_13
    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_63

    .line 285
    new-instance v3, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v3}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 286
    invoke-virtual {v3, v5}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v3

    .line 287
    invoke-virtual {v3, v6}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v3

    .line 288
    invoke-virtual {v3, v7}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v3

    .line 289
    invoke-virtual {v3, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v3

    .line 290
    invoke-virtual {v3, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v3

    .line 291
    invoke-virtual {v3, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v3

    .line 292
    invoke-virtual {v3, v11}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v3

    .line 293
    invoke-virtual {v3, v12}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v3

    .line 294
    invoke-virtual {v3, v13}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v3

    .line 295
    invoke-virtual {v3}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v3

    .line 296
    iget-object v4, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v5, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v5

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v3

    move-object v3, v2

    move-object/from16 v2, v17

    .line 296
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/LocationManagerService;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 238
    :cond_63
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/16 v16, -0x1

    sparse-switch v15, :sswitch_data_140

    goto/16 :goto_ec

    :sswitch_71
    const-string v15, "--supportsSpeed"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7b

    goto/16 :goto_ec

    :cond_7b
    const/16 v16, 0x9

    goto/16 :goto_ec

    :sswitch_7f
    const-string v15, "--powerRequirement"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_89

    goto/16 :goto_ec

    :cond_89
    const/16 v16, 0x8

    goto/16 :goto_ec

    :sswitch_8d
    const-string v15, "--requiresSatellite"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_96

    goto :goto_ec

    :cond_96
    const/16 v16, 0x7

    goto :goto_ec

    :sswitch_99
    const-string v15, "--hasMonetaryCost"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a2

    goto :goto_ec

    :cond_a2
    const/16 v16, 0x6

    goto :goto_ec

    :sswitch_a5
    const-string v15, "--requiresCell"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ae

    goto :goto_ec

    :cond_ae
    const/16 v16, 0x5

    goto :goto_ec

    :sswitch_b1
    const-string v15, "--supportsAltitude"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ba

    goto :goto_ec

    :cond_ba
    const/16 v16, 0x4

    goto :goto_ec

    :sswitch_bd
    const-string v15, "--supportsBearing"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c6

    goto :goto_ec

    :cond_c6
    const/16 v16, 0x3

    goto :goto_ec

    :sswitch_c9
    const-string v15, "--extraAttributionTags"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d2

    goto :goto_ec

    :cond_d2
    const/16 v16, 0x2

    goto :goto_ec

    :sswitch_d5
    const-string v15, "--requiresNetwork"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_de

    goto :goto_ec

    :cond_de
    move/from16 v16, v4

    goto :goto_ec

    :sswitch_e1
    const-string v15, "--accuracy"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_ea

    goto :goto_ec

    :cond_ea
    move/from16 v16, v3

    :goto_ec
    packed-switch v16, :pswitch_data_16a

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_106
    move v10, v4

    goto/16 :goto_13

    .line 268
    :pswitch_109
    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    goto/16 :goto_13

    :pswitch_113
    move v6, v4

    goto/16 :goto_13

    :pswitch_116
    move v8, v4

    goto/16 :goto_13

    :pswitch_119
    move v7, v4

    goto/16 :goto_13

    :pswitch_11c
    move v9, v4

    goto/16 :goto_13

    :pswitch_11f
    move v11, v4

    goto/16 :goto_13

    .line 276
    :pswitch_122
    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v14, ","

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto/16 :goto_13

    :pswitch_132
    move v5, v4

    goto/16 :goto_13

    .line 272
    :pswitch_135
    invoke-virtual {v0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_13

    nop

    :sswitch_data_140
    .sparse-switch
        -0x7e1ee167 -> :sswitch_e1
        -0x6a811300 -> :sswitch_d5
        -0x57e7a758 -> :sswitch_c9
        -0x563e8116 -> :sswitch_bd
        -0x4734d51a -> :sswitch_b1
        0x40bc37d0 -> :sswitch_a5
        0x4c45a754 -> :sswitch_99
        0x5864ef8d -> :sswitch_8d
        0x5f6d5b9e -> :sswitch_7f
        0x7a12a683 -> :sswitch_71
    .end sparse-switch

    :pswitch_data_16a
    .packed-switch 0x0
        :pswitch_135
        :pswitch_132
        :pswitch_122
        :pswitch_11f
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_109
        :pswitch_106
    .end packed-switch
.end method

.method public final handleIsAdasGnssLocationEnabled()V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const/4 v0, -0x3

    .line 162
    :goto_f
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    .line 173
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->isAdasGnssLocationEnabledForUser(I)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    .line 166
    :cond_23
    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 167
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_f

    .line 169
    :cond_34
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

    .line 156
    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "command only recognized on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleIsAutomotiveGnssSuspended()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 215
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0}, Lcom/android/server/location/LocationManagerService;->isAutomotiveGnssSuspended()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    .line 212
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "command only recognized on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleIsLocationEnabled()V
    .registers 4

    const/4 v0, -0x3

    .line 120
    :goto_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_15

    .line 131
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void

    .line 124
    :cond_15
    const-string v0, "--user"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 125
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 127
    :cond_26
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
.end method

.method public final handleRemoveTestProvider()V
    .registers 4

    .line 301
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 302
    iget-object v1, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-virtual {v1, v0, v2, p0}, Lcom/android/server/location/LocationManagerService;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleSendExtraCommand()V
    .registers 4

    .line 364
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 366
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/location/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final handleSetAdasGnssLocationEnabled()V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 181
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x3

    .line 186
    :goto_17
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_23

    .line 197
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/LocationManagerService;->setAdasGnssLocationEnabledForUser(ZI)V

    return-void

    .line 190
    :cond_23
    const-string v1, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 191
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_17

    .line 193
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "command only recognized on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleSetAutomotiveGnssSuspended()V
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 205
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 207
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationManagerService;->setAutomotiveGnssSuspended(Z)V

    return-void

    .line 202
    :cond_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "command only recognized on automotive devices"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleSetLocationEnabled()V
    .registers 4

    .line 135
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x3

    .line 140
    :goto_9
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    .line 151
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/LocationManagerService;->setLocationEnabledForUser(ZI)V

    return-void

    .line 144
    :cond_15
    const-string v1, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 145
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_9

    .line 147
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final handleSetTestProviderEnabled()V
    .registers 5

    .line 307
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 309
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 309
    invoke-virtual {v2, v0, v1, v3, p0}, Lcom/android/server/location/LocationManagerService;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final handleSetTestProviderLocation()V
    .registers 10

    .line 314
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 318
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x42c80000    # 100.0f

    .line 319
    invoke-virtual {v1, v2}, Landroid/location/Location;->setAccuracy(F)V

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setTime(J)V

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    const/4 v2, 0x0

    move v3, v2

    .line 324
    :goto_1e
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextOption()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_40

    if-eqz v3, :cond_38

    .line 359
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    .line 359
    invoke-virtual {v2, v0, v1, v3, p0}, Lcom/android/server/location/LocationManagerService;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 356
    :cond_38
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Option \"--location\" is required"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 328
    :cond_40
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, -0x1

    sparse-switch v5, :sswitch_data_e0

    goto :goto_6e

    :sswitch_4e
    const-string v5, "--location"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    goto :goto_6e

    :cond_57
    move v8, v6

    goto :goto_6e

    :sswitch_59
    const-string v5, "--time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_62

    goto :goto_6e

    :cond_62
    move v8, v7

    goto :goto_6e

    :sswitch_64
    const-string v5, "--accuracy"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    goto :goto_6e

    :cond_6d
    move v8, v2

    :goto_6e
    packed-switch v8, :pswitch_data_ee

    .line 351
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 330
    :pswitch_88
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 331
    array-length v4, v3

    if-ne v4, v6, :cond_aa

    .line 337
    aget-object v4, v3, v2

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 338
    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    move v3, v7

    goto/16 :goto_1e

    .line 332
    :cond_aa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location argument must be in the form of \"<LATITUDE>,<LONGITUDE>\", not "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 347
    :pswitch_c5
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/location/Location;->setTime(J)V

    goto/16 :goto_1e

    .line 343
    :pswitch_d2
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v1, v4}, Landroid/location/Location;->setAccuracy(F)V

    goto/16 :goto_1e

    nop

    :sswitch_data_e0
    .sparse-switch
        -0x7e1ee167 -> :sswitch_64
        0x4f7a886d -> :sswitch_59
        0x72400555 -> :sswitch_4e
    .end sparse-switch

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_c5
        :pswitch_88
    .end packed-switch
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 55
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_8e

    goto :goto_65

    :sswitch_15
    const-string v0, "is-adas-gnss-location-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_65

    :cond_1e
    const/4 v2, 0x6

    goto :goto_65

    :sswitch_20
    const-string/jumbo v0, "set-location-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_65

    :cond_2a
    const/4 v2, 0x5

    goto :goto_65

    :sswitch_2c
    const-string/jumbo v0, "set-adas-gnss-location-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    goto :goto_65

    :cond_36
    const/4 v2, 0x4

    goto :goto_65

    :sswitch_38
    const-string/jumbo v0, "set-automotive-gnss-suspended"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_65

    :cond_42
    const/4 v2, 0x3

    goto :goto_65

    :sswitch_44
    const-string v0, "is-automotive-gnss-suspended"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto :goto_65

    :cond_4d
    const/4 v2, 0x2

    goto :goto_65

    :sswitch_4f
    const-string/jumbo v0, "providers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_65

    :cond_59
    const/4 v2, 0x1

    goto :goto_65

    :sswitch_5b
    const-string v0, "is-location-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_65

    :cond_64
    move v2, v1

    :goto_65
    packed-switch v2, :pswitch_data_ac

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 65
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsAdasGnssLocationEnabled()V

    return v1

    .line 61
    :pswitch_71
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetLocationEnabled()V

    return v1

    .line 69
    :pswitch_75
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetAdasGnssLocationEnabled()V

    return v1

    .line 73
    :pswitch_79
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetAutomotiveGnssSuspended()V

    return v1

    .line 77
    :pswitch_7d
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsAutomotiveGnssSuspended()V

    return v1

    .line 81
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationShellCommand;->parseProvidersCommand(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 57
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsLocationEnabled()V

    return v1

    :sswitch_data_8e
    .sparse-switch
        -0x3f71c494 -> :sswitch_5b
        -0x20a3475e -> :sswitch_4f
        -0x1a7afff6 -> :sswitch_44
        -0x158a66be -> :sswitch_38
        -0x5102b3e -> :sswitch_2c
        0x5c29e334 -> :sswitch_20
        0x61cd46fa -> :sswitch_15
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_71
        :pswitch_6d
    .end packed-switch
.end method

.method public onHelp()V
    .registers 4

    .line 371
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 372
    const-string v1, "Location service commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    const-string v1, "  help or -h"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    const-string v1, "  is-location-enabled [--user <USER_ID>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    const-string v1, "    Gets the master location switch enabled state. If no user is specified,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const-string v1, "    the current user is assumed."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const-string v2, "  set-location-enabled true|false [--user <USER_ID>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const-string v2, "    Sets the master location switch enabled state. If no user is specified,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    iget-object p0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6b

    .line 382
    const-string p0, "  is-adas-gnss-location-enabled [--user <USER_ID>]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string p0, "    Gets the ADAS GNSS location enabled state. If no user is specified,"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    const-string p0, "  set-adas-gnss-location-enabled true|false [--user <USER_ID>]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const-string p0, "    Sets the ADAS GNSS location enabled state. If no user is specified,"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string p0, "  is-automotive-gnss-suspended"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string p0, "    Gets the automotive GNSS suspended state."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string p0, "  set-automotive-gnss-suspended true|false"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string p0, "    Sets the automotive GNSS suspended state."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    :cond_6b
    const-string p0, "  providers"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    const-string p0, "    The providers command is followed by a subcommand, as listed below:"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 396
    const-string p0, "    add-test-provider <PROVIDER> [--requiresNetwork] [--requiresSatellite]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    const-string p0, "      [--requiresCell] [--hasMonetaryCost] [--supportsAltitude]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    const-string p0, "      [--supportsSpeed] [--supportsBearing]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    const-string p0, "      [--powerRequirement <POWER_REQUIREMENT>]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    const-string p0, "      [--extraAttributionTags <TAG>,<TAG>,...]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const-string p0, "      Add the given test provider. Requires MOCK_LOCATION permissions which"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    const-string p0, "      can be enabled by running \"adb shell appops set <uid>"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const-string p0, "      android:mock_location allow\". There are optional flags that can be"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string p0, "      used to configure the provider properties and additional arguments. If"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const-string p0, "      no flags are included, then default values will be used."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    const-string p0, "    remove-test-provider <PROVIDER>"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    const-string p0, "      Remove the given test provider."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    const-string p0, "    set-test-provider-enabled <PROVIDER> true|false"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const-string p0, "      Sets the given test provider enabled state."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const-string p0, "    set-test-provider-location <PROVIDER> --location <LATITUDE>,<LONGITUDE>"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const-string p0, "      [--accuracy <ACCURACY>] [--time <TIME>]"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string p0, "      Set location for given test provider. Accuracy and time are optional."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string p0, "    send-extra-command <PROVIDER> <COMMAND>"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string p0, "      Sends the given extra command to the given provider."

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 416
    const-string p0, "      Common commands that may be supported by the gps provider, depending on"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string p0, "      hardware and software configurations:"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string p0, "        delete_aiding_data - requests deletion of any predictive aiding data"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string p0, "        force_time_injection - requests NTP time injection"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string p0, "        force_psds_injection - requests predictive aiding data injection"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const-string p0, "        request_power_stats - requests GNSS power stats update"

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final parseProvidersCommand(Ljava/lang/String;)I
    .registers 5

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_64

    goto :goto_47

    :sswitch_d
    const-string/jumbo v0, "send-extra-command"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_47

    :cond_17
    const/4 v2, 0x4

    goto :goto_47

    :sswitch_19
    const-string v0, "add-test-provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto :goto_47

    :cond_22
    const/4 v2, 0x3

    goto :goto_47

    :sswitch_24
    const-string/jumbo v0, "set-test-provider-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_47

    :cond_2e
    const/4 v2, 0x2

    goto :goto_47

    :sswitch_30
    const-string/jumbo v0, "set-test-provider-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_47

    :cond_3a
    const/4 v2, 0x1

    goto :goto_47

    :sswitch_3c
    const-string/jumbo v0, "remove-test-provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    goto :goto_47

    :cond_46
    move v2, v1

    :goto_47
    packed-switch v2, :pswitch_data_7a

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 108
    :pswitch_4f
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSendExtraCommand()V

    return v1

    .line 92
    :pswitch_53
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleAddTestProvider()V

    return v1

    .line 100
    :pswitch_57
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetTestProviderEnabled()V

    return v1

    .line 104
    :pswitch_5b
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetTestProviderLocation()V

    return v1

    .line 96
    :pswitch_5f
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->handleRemoveTestProvider()V

    return v1

    nop

    :sswitch_data_64
    .sparse-switch
        -0x638384bd -> :sswitch_3c
        -0x625a9a9f -> :sswitch_30
        -0x3ab9feb -> :sswitch_24
        0xae04a0 -> :sswitch_19
        0x7961b909 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_4f
    .end packed-switch
.end method
