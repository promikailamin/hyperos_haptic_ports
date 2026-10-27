.class Lcom/android/server/location/LocationShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "LocationShellCommand.java"


# static fields
.field private static final DEFAULT_TEST_LOCATION_ACCURACY:F = 100.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/server/location/LocationManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/location/LocationManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/location/LocationManagerService;

    .line 44
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationManagerService;

    iput-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    .line 47
    return-void
.end method

.method private handleAddTestProvider()V
    .registers 21

    .line 219
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "provider":Ljava/lang/String;
    const/4 v1, 0x0

    .line 222
    .local v1, "requiresNetwork":Z
    const/4 v2, 0x0

    .line 223
    .local v2, "requiresSatellite":Z
    const/4 v3, 0x0

    .line 224
    .local v3, "requiresCell":Z
    const/4 v4, 0x0

    .line 225
    .local v4, "hasMonetaryCost":Z
    const/4 v5, 0x0

    .line 226
    .local v5, "supportsAltitude":Z
    const/4 v6, 0x0

    .line 227
    .local v6, "supportsSpeed":Z
    const/4 v8, 0x0

    .line 228
    .local v8, "supportsBearing":Z
    const/4 v9, 0x1

    .line 229
    .local v9, "powerRequirement":I
    const/4 v10, 0x1

    .line 231
    .local v10, "accuracy":I
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move v12, v5

    move v13, v6

    move v14, v8

    move v15, v9

    move v6, v10

    move-object/from16 v16, v11

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v4

    .line 234
    .end local v1    # "requiresNetwork":Z
    .end local v2    # "requiresSatellite":Z
    .end local v3    # "requiresCell":Z
    .end local v4    # "hasMonetaryCost":Z
    .end local v5    # "supportsAltitude":Z
    .local v6, "accuracy":I
    .local v8, "requiresNetwork":Z
    .local v9, "requiresSatellite":Z
    .local v10, "requiresCell":Z
    .local v11, "hasMonetaryCost":Z
    .local v12, "supportsAltitude":Z
    .local v13, "supportsSpeed":Z
    .local v14, "supportsBearing":Z
    .local v15, "powerRequirement":I
    .local v16, "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "option":Ljava/lang/String;
    if-nez v1, :cond_6d

    .line 236
    nop

    .line 285
    .end local v1    # "option":Ljava/lang/String;
    new-instance v1, Landroid/location/provider/ProviderProperties$Builder;

    invoke-direct {v1}, Landroid/location/provider/ProviderProperties$Builder;-><init>()V

    .line 286
    invoke-virtual {v1, v8}, Landroid/location/provider/ProviderProperties$Builder;->setHasNetworkRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 287
    invoke-virtual {v1, v9}, Landroid/location/provider/ProviderProperties$Builder;->setHasSatelliteRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 288
    invoke-virtual {v1, v10}, Landroid/location/provider/ProviderProperties$Builder;->setHasCellRequirement(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 289
    invoke-virtual {v1, v11}, Landroid/location/provider/ProviderProperties$Builder;->setHasMonetaryCost(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v12}, Landroid/location/provider/ProviderProperties$Builder;->setHasAltitudeSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 291
    invoke-virtual {v1, v13}, Landroid/location/provider/ProviderProperties$Builder;->setHasSpeedSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 292
    invoke-virtual {v1, v14}, Landroid/location/provider/ProviderProperties$Builder;->setHasBearingSupport(Z)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 293
    invoke-virtual {v1, v15}, Landroid/location/provider/ProviderProperties$Builder;->setPowerUsage(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 294
    invoke-virtual {v1, v6}, Landroid/location/provider/ProviderProperties$Builder;->setAccuracy(I)Landroid/location/provider/ProviderProperties$Builder;

    move-result-object v1

    .line 295
    invoke-virtual {v1}, Landroid/location/provider/ProviderProperties$Builder;->build()Landroid/location/provider/ProviderProperties;

    move-result-object v17

    .line 296
    .local v17, "properties":Landroid/location/provider/ProviderProperties;
    iget-object v1, v0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v18

    .line 296
    move-object v2, v7

    move-object/from16 v3, v17

    move-object/from16 v4, v16

    move/from16 v19, v6

    .end local v6    # "accuracy":I
    .local v19, "accuracy":I
    move-object/from16 v6, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/location/LocationManagerService;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    return-void

    .line 238
    .end local v17    # "properties":Landroid/location/provider/ProviderProperties;
    .end local v19    # "accuracy":I
    .restart local v1    # "option":Ljava/lang/String;
    .restart local v6    # "accuracy":I
    :cond_6d
    move/from16 v19, v6

    .end local v6    # "accuracy":I
    .restart local v19    # "accuracy":I
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_148

    :cond_77
    goto/16 :goto_de

    :sswitch_79
    const-string v3, "--supportsSpeed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x5

    goto :goto_de

    :sswitch_83
    const-string v3, "--powerRequirement"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x7

    goto :goto_de

    :sswitch_8d
    const-string v3, "--requiresSatellite"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x1

    goto :goto_de

    :sswitch_97
    const-string v3, "--hasMonetaryCost"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x3

    goto :goto_de

    :sswitch_a1
    const-string v3, "--requiresCell"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x2

    goto :goto_de

    :sswitch_ab
    const-string v3, "--supportsAltitude"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x4

    goto :goto_de

    :sswitch_b5
    const-string v3, "--supportsBearing"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x6

    goto :goto_de

    :sswitch_bf
    const-string v3, "--extraAttributionTags"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/16 v2, 0x9

    goto :goto_de

    :sswitch_ca
    const-string v3, "--requiresNetwork"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/4 v2, 0x0

    goto :goto_de

    :sswitch_d4
    const-string v3, "--accuracy"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const/16 v2, 0x8

    :goto_de
    packed-switch v2, :pswitch_data_172

    .line 280
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unexpected option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :pswitch_fa
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 277
    .end local v16    # "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v16, v2

    move/from16 v6, v19

    goto :goto_145

    .line 272
    .end local v2    # "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "extraAttributionTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_10d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 273
    .end local v19    # "accuracy":I
    .local v2, "accuracy":I
    move v6, v2

    goto :goto_145

    .line 268
    .end local v2    # "accuracy":I
    .restart local v19    # "accuracy":I
    :pswitch_117
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 269
    .end local v15    # "powerRequirement":I
    .local v2, "powerRequirement":I
    move v15, v2

    move/from16 v6, v19

    goto :goto_145

    .line 264
    .end local v2    # "powerRequirement":I
    .restart local v15    # "powerRequirement":I
    :pswitch_123
    const/4 v2, 0x1

    .line 265
    .end local v14    # "supportsBearing":Z
    .local v2, "supportsBearing":Z
    move v14, v2

    move/from16 v6, v19

    goto :goto_145

    .line 260
    .end local v2    # "supportsBearing":Z
    .restart local v14    # "supportsBearing":Z
    :pswitch_128
    const/4 v2, 0x1

    .line 261
    .end local v13    # "supportsSpeed":Z
    .local v2, "supportsSpeed":Z
    move v13, v2

    move/from16 v6, v19

    goto :goto_145

    .line 256
    .end local v2    # "supportsSpeed":Z
    .restart local v13    # "supportsSpeed":Z
    :pswitch_12d
    const/4 v2, 0x1

    .line 257
    .end local v12    # "supportsAltitude":Z
    .local v2, "supportsAltitude":Z
    move v12, v2

    move/from16 v6, v19

    goto :goto_145

    .line 252
    .end local v2    # "supportsAltitude":Z
    .restart local v12    # "supportsAltitude":Z
    :pswitch_132
    const/4 v2, 0x1

    .line 253
    .end local v11    # "hasMonetaryCost":Z
    .local v2, "hasMonetaryCost":Z
    move v11, v2

    move/from16 v6, v19

    goto :goto_145

    .line 248
    .end local v2    # "hasMonetaryCost":Z
    .restart local v11    # "hasMonetaryCost":Z
    :pswitch_137
    const/4 v2, 0x1

    .line 249
    .end local v10    # "requiresCell":Z
    .local v2, "requiresCell":Z
    move v10, v2

    move/from16 v6, v19

    goto :goto_145

    .line 244
    .end local v2    # "requiresCell":Z
    .restart local v10    # "requiresCell":Z
    :pswitch_13c
    const/4 v2, 0x1

    .line 245
    .end local v9    # "requiresSatellite":Z
    .local v2, "requiresSatellite":Z
    move v9, v2

    move/from16 v6, v19

    goto :goto_145

    .line 240
    .end local v2    # "requiresSatellite":Z
    .restart local v9    # "requiresSatellite":Z
    :pswitch_141
    const/4 v2, 0x1

    .line 241
    .end local v8    # "requiresNetwork":Z
    .local v2, "requiresNetwork":Z
    move v8, v2

    move/from16 v6, v19

    .line 283
    .end local v1    # "option":Ljava/lang/String;
    .end local v2    # "requiresNetwork":Z
    .end local v19    # "accuracy":I
    .restart local v6    # "accuracy":I
    .restart local v8    # "requiresNetwork":Z
    :goto_145
    goto/16 :goto_1e

    nop

    :sswitch_data_148
    .sparse-switch
        -0x7e1ee167 -> :sswitch_d4
        -0x6a811300 -> :sswitch_ca
        -0x57e7a758 -> :sswitch_bf
        -0x563e8116 -> :sswitch_b5
        -0x4734d51a -> :sswitch_ab
        0x40bc37d0 -> :sswitch_a1
        0x4c45a754 -> :sswitch_97
        0x5864ef8d -> :sswitch_8d
        0x5f6d5b9e -> :sswitch_83
        0x7a12a683 -> :sswitch_79
    .end sparse-switch

    :pswitch_data_172
    .packed-switch 0x0
        :pswitch_141
        :pswitch_13c
        :pswitch_137
        :pswitch_132
        :pswitch_12d
        :pswitch_128
        :pswitch_123
        :pswitch_117
        :pswitch_10d
        :pswitch_fa
    .end packed-switch
.end method

.method private handleIsAdasGnssLocationEnabled()V
    .registers 6

    .line 155
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 159
    const/4 v0, -0x3

    .line 162
    .local v0, "userId":I
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "option":Ljava/lang/String;
    if-nez v1, :cond_24

    .line 164
    nop

    .line 173
    .end local v1    # "option":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/location/LocationManagerService;->isAdasGnssLocationEnabledForUser(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 174
    return-void

    .line 166
    .restart local v1    # "option":Ljava/lang/String;
    :cond_24
    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 167
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 171
    .end local v1    # "option":Ljava/lang/String;
    goto :goto_f

    .line 169
    .restart local v1    # "option":Ljava/lang/String;
    :cond_35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    .end local v0    # "userId":I
    .end local v1    # "option":Ljava/lang/String;
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "command only recognized on automotive devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleIsAutomotiveGnssSuspended()V
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
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/location/LocationManagerService;->isAutomotiveGnssSuspended()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 216
    return-void

    .line 212
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "command only recognized on automotive devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleIsLocationEnabled()V
    .registers 6

    .line 117
    const/4 v0, -0x3

    .line 120
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "option":Ljava/lang/String;
    if-nez v1, :cond_16

    .line 122
    nop

    .line 131
    .end local v1    # "option":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/location/LocationManagerService;->isLocationEnabledForUser(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 132
    return-void

    .line 124
    .restart local v1    # "option":Ljava/lang/String;
    :cond_16
    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 125
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 129
    .end local v1    # "option":Ljava/lang/String;
    goto :goto_1

    .line 127
    .restart local v1    # "option":Ljava/lang/String;
    :cond_27
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleRemoveTestProvider()V
    .registers 5

    .line 301
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "provider":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/location/LocationManagerService;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method private handleSendExtraCommand()V
    .registers 5

    .line 364
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "command":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/server/location/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 367
    return-void
.end method

.method private handleSetAdasGnssLocationEnabled()V
    .registers 7

    .line 177
    iget-object v0, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 181
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 183
    .local v0, "enabled":Z
    const/4 v1, -0x3

    .line 186
    .local v1, "userId":I
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "option":Ljava/lang/String;
    if-nez v2, :cond_24

    .line 188
    nop

    .line 197
    .end local v2    # "option":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/location/LocationManagerService;->setAdasGnssLocationEnabledForUser(ZI)V

    .line 198
    return-void

    .line 190
    .restart local v2    # "option":Ljava/lang/String;
    :cond_24
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 191
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 195
    .end local v2    # "option":Ljava/lang/String;
    goto :goto_17

    .line 193
    .restart local v2    # "option":Ljava/lang/String;
    :cond_35
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 178
    .end local v0    # "enabled":Z
    .end local v1    # "userId":I
    .end local v2    # "option":Ljava/lang/String;
    :cond_4e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "command only recognized on automotive devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleSetAutomotiveGnssSuspended()V
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
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 207
    .local v0, "suspended":Z
    iget-object v1, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/location/LocationManagerService;->setAutomotiveGnssSuspended(Z)V

    .line 208
    return-void

    .line 202
    .end local v0    # "suspended":Z
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "command only recognized on automotive devices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleSetLocationEnabled()V
    .registers 7

    .line 135
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 137
    .local v0, "enabled":Z
    const/4 v1, -0x3

    .line 140
    .local v1, "userId":I
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, "option":Ljava/lang/String;
    if-nez v2, :cond_16

    .line 142
    nop

    .line 151
    .end local v2    # "option":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/location/LocationManagerService;->setLocationEnabledForUser(ZI)V

    .line 152
    return-void

    .line 144
    .restart local v2    # "option":Ljava/lang/String;
    :cond_16
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 145
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    .line 149
    .end local v2    # "option":Ljava/lang/String;
    goto :goto_9

    .line 147
    .restart local v2    # "option":Ljava/lang/String;
    :cond_27
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private handleSetTestProviderEnabled()V
    .registers 6

    .line 307
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 309
    .local v1, "enabled":Z
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 310
    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 309
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/location/LocationManagerService;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method private handleSetTestProviderLocation()V
    .registers 10

    .line 314
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "provider":Ljava/lang/String;
    const/4 v1, 0x0

    .line 318
    .local v1, "hasLatLng":Z
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 319
    .local v2, "location":Landroid/location/Location;
    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V

    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 324
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, "option":Ljava/lang/String;
    if-nez v3, :cond_40

    .line 326
    nop

    .line 355
    .end local v3    # "option":Ljava/lang/String;
    if-eqz v1, :cond_38

    .line 359
    iget-object v3, p0, Lcom/android/server/location/LocationShellCommand;->mService:Lcom/android/server/location/LocationManagerService;

    iget-object v4, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    .line 360
    invoke-virtual {v5}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 359
    invoke-virtual {v3, v0, v2, v4, v5}, Lcom/android/server/location/LocationManagerService;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void

    .line 356
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Option \"--location\" is required"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    .restart local v3    # "option":Ljava/lang/String;
    :cond_40
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    sparse-switch v5, :sswitch_data_de

    :cond_4b
    goto :goto_69

    :sswitch_4c
    const-string v5, "--location"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move v4, v6

    goto :goto_69

    :sswitch_56
    const-string v5, "--time"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move v4, v8

    goto :goto_69

    :sswitch_60
    const-string v5, "--accuracy"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    move v4, v7

    :goto_69
    packed-switch v4, :pswitch_data_ec

    .line 351
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 347
    :pswitch_85
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setTime(J)V

    .line 348
    goto :goto_be

    .line 343
    :pswitch_91
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/location/Location;->setAccuracy(F)V

    .line 344
    goto :goto_be

    .line 330
    :pswitch_9d
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "locationInput":[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v8, :cond_c0

    .line 337
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLatitude(D)V

    .line 338
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Landroid/location/Location;->setLongitude(D)V

    .line 339
    const/4 v1, 0x1

    .line 340
    nop

    .line 353
    .end local v3    # "option":Ljava/lang/String;
    .end local v4    # "locationInput":[Ljava/lang/String;
    :goto_be
    goto/16 :goto_1d

    .line 332
    .restart local v3    # "option":Ljava/lang/String;
    .restart local v4    # "locationInput":[Ljava/lang/String;
    :cond_c0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Location argument must be in the form of \"<LATITUDE>,<LONGITUDE>\", not "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 334
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    nop

    :sswitch_data_de
    .sparse-switch
        -0x7e1ee167 -> :sswitch_60
        0x4f7a886d -> :sswitch_56
        0x72400555 -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_9d
        :pswitch_91
        :pswitch_85
    .end packed-switch
.end method

.method private parseProvidersCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_5c

    :cond_8
    goto :goto_3f

    :sswitch_9
    const-string/jumbo v0, "send-extra-command"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x4

    goto :goto_40

    :sswitch_14
    const-string v0, "add-test-provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_40

    :sswitch_1e
    const-string/jumbo v0, "set-test-provider-enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    goto :goto_40

    :sswitch_29
    const-string/jumbo v0, "set-test-provider-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x3

    goto :goto_40

    :sswitch_34
    const-string/jumbo v0, "remove-test-provider"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_40

    :goto_3f
    const/4 v0, -0x1

    :goto_40
    packed-switch v0, :pswitch_data_72

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 108
    :pswitch_48
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSendExtraCommand()V

    .line 109
    return v1

    .line 104
    :pswitch_4c
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetTestProviderLocation()V

    .line 105
    return v1

    .line 100
    :pswitch_50
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetTestProviderEnabled()V

    .line 101
    return v1

    .line 96
    :pswitch_54
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleRemoveTestProvider()V

    .line 97
    return v1

    .line 92
    :pswitch_58
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleAddTestProvider()V

    .line 93
    return v1

    :sswitch_data_5c
    .sparse-switch
        -0x638384bd -> :sswitch_34
        -0x625a9a9f -> :sswitch_29
        -0x3ab9feb -> :sswitch_1e
        0xae04a0 -> :sswitch_14
        0x7961b909 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_58
        :pswitch_54
        :pswitch_50
        :pswitch_4c
        :pswitch_48
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 51
    if-nez p1, :cond_8

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/location/LocationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 55
    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_88

    :cond_11
    goto :goto_5e

    :sswitch_12
    const-string/jumbo v1, "is-adas-gnss-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x2

    goto :goto_5e

    :sswitch_1d
    const-string/jumbo v1, "set-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    goto :goto_5e

    :sswitch_28
    const-string/jumbo v1, "set-adas-gnss-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x3

    goto :goto_5e

    :sswitch_33
    const-string/jumbo v1, "set-automotive-gnss-suspended"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x4

    goto :goto_5e

    :sswitch_3e
    const-string/jumbo v1, "is-automotive-gnss-suspended"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x5

    goto :goto_5e

    :sswitch_49
    const-string/jumbo v1, "providers"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v0, 0x6

    goto :goto_5e

    :sswitch_54
    const-string/jumbo v1, "is-location-enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v0, v2

    :goto_5e
    packed-switch v0, :pswitch_data_a6

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/server/location/LocationShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 81
    :pswitch_66
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/location/LocationShellCommand;->parseProvidersCommand(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 77
    .end local v0    # "command":Ljava/lang/String;
    :pswitch_6f
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsAutomotiveGnssSuspended()V

    .line 78
    return v2

    .line 73
    :pswitch_73
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetAutomotiveGnssSuspended()V

    .line 74
    return v2

    .line 69
    :pswitch_77
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetAdasGnssLocationEnabled()V

    .line 70
    return v2

    .line 65
    :pswitch_7b
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsAdasGnssLocationEnabled()V

    .line 66
    return v2

    .line 61
    :pswitch_7f
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleSetLocationEnabled()V

    .line 62
    return v2

    .line 57
    :pswitch_83
    invoke-direct {p0}, Lcom/android/server/location/LocationShellCommand;->handleIsLocationEnabled()V

    .line 58
    return v2

    nop

    :sswitch_data_88
    .sparse-switch
        -0x3f71c494 -> :sswitch_54
        -0x20a3475e -> :sswitch_49
        -0x1a7afff6 -> :sswitch_3e
        -0x158a66be -> :sswitch_33
        -0x5102b3e -> :sswitch_28
        0x5c29e334 -> :sswitch_1d
        0x61cd46fa -> :sswitch_12
    .end sparse-switch

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_66
    .end packed-switch
.end method

.method public onHelp()V
    .registers 5

    .line 371
    invoke-virtual {p0}, Lcom/android/server/location/LocationShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 372
    .local v0, "pw":Ljava/io/PrintWriter;
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
    iget-object v2, p0, Lcom/android/server/location/LocationShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 382
    const-string v2, "  is-adas-gnss-location-enabled [--user <USER_ID>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    const-string v2, "    Gets the ADAS GNSS location enabled state. If no user is specified,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    const-string v2, "  set-adas-gnss-location-enabled true|false [--user <USER_ID>]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    const-string v2, "    Sets the ADAS GNSS location enabled state. If no user is specified,"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 388
    const-string v1, "  is-automotive-gnss-suspended"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    const-string v1, "    Gets the automotive GNSS suspended state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    const-string v1, "  set-automotive-gnss-suspended true|false"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    const-string v1, "    Sets the automotive GNSS suspended state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    :cond_6b
    const-string v1, "  providers"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    const-string v1, "    The providers command is followed by a subcommand, as listed below:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 396
    const-string v1, "    add-test-provider <PROVIDER> [--requiresNetwork] [--requiresSatellite]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    const-string v1, "      [--requiresCell] [--hasMonetaryCost] [--supportsAltitude]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    const-string v1, "      [--supportsSpeed] [--supportsBearing]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    const-string v1, "      [--powerRequirement <POWER_REQUIREMENT>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    const-string v1, "      [--extraAttributionTags <TAG>,<TAG>,...]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const-string v1, "      Add the given test provider. Requires MOCK_LOCATION permissions which"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    const-string v1, "      can be enabled by running \"adb shell appops set <uid>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const-string v1, "      android:mock_location allow\". There are optional flags that can be"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string v1, "      used to configure the provider properties and additional arguments. If"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const-string v1, "      no flags are included, then default values will be used."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    const-string v1, "    remove-test-provider <PROVIDER>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    const-string v1, "      Remove the given test provider."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    const-string v1, "    set-test-provider-enabled <PROVIDER> true|false"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    const-string v1, "      Sets the given test provider enabled state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    const-string v1, "    set-test-provider-location <PROVIDER> --location <LATITUDE>,<LONGITUDE>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 411
    const-string v1, "      [--accuracy <ACCURACY>] [--time <TIME>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string v1, "      Set location for given test provider. Accuracy and time are optional."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string v1, "    send-extra-command <PROVIDER> <COMMAND>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string v1, "      Sends the given extra command to the given provider."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 416
    const-string v1, "      Common commands that may be supported by the gps provider, depending on"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string v1, "      hardware and software configurations:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string v1, "        delete_aiding_data - requests deletion of any predictive aiding data"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    const-string v1, "        force_time_injection - requests NTP time injection"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v1, "        force_psds_injection - requests predictive aiding data injection"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const-string v1, "        request_power_stats - requests GNSS power stats update"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    return-void
.end method
