.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final greylist-max-o TRANSACTION_attachAgent:I = 0x31

.field static final blacklist TRANSACTION_attachStartupAgents:I = 0x32

.field static final greylist-max-o TRANSACTION_bindApplication:I = 0x4

.field static final greylist-max-o TRANSACTION_clearDnsCache:I = 0x1a

.field static final greylist-max-o TRANSACTION_dispatchPackageBroadcast:I = 0x15

.field static final greylist-max-o TRANSACTION_dumpActivity:I = 0x18

.field static final blacklist TRANSACTION_dumpBinderAllocations:I = 0x3c

.field static final blacklist TRANSACTION_dumpCacheInfo:I = 0x22

.field static final greylist-max-o TRANSACTION_dumpDbInfo:I = 0x24

.field static final greylist-max-o TRANSACTION_dumpGfxInfo:I = 0x21

.field static final greylist-max-o TRANSACTION_dumpHeap:I = 0x17

.field static final blacklist TRANSACTION_dumpLogText:I = 0x3e

.field static final greylist-max-o TRANSACTION_dumpMemInfo:I = 0x1f

.field static final greylist-max-o TRANSACTION_dumpMemInfoProto:I = 0x20

.field static final blacklist TRANSACTION_dumpPeriodHistoryMessage:I = 0x3b

.field static final greylist-max-o TRANSACTION_dumpProvider:I = 0x23

.field static final blacklist TRANSACTION_dumpResources:I = 0x19

.field static final greylist-max-o TRANSACTION_dumpService:I = 0xc

.field static final blacklist TRANSACTION_enableDebugConfig:I = 0x3f

.field static final greylist-max-o TRANSACTION_handleTrustStorageUpdate:I = 0x30

.field static final blacklist TRANSACTION_instrumentWithoutRestart:I = 0x39

.field static final greylist-max-o TRANSACTION_notifyCleartextNetwork:I = 0x2c

.field static final blacklist TRANSACTION_notifyContentProviderPublishStatus:I = 0x38

.field static final blacklist TRANSACTION_performDirectAction:I = 0x37

.field static final greylist-max-o TRANSACTION_processInBackground:I = 0x9

.field static final greylist-max-o TRANSACTION_profilerControl:I = 0xf

.field static final greylist-max-o TRANSACTION_requestAssistContextExtras:I = 0x26

.field static final blacklist TRANSACTION_requestDirectActions:I = 0x36

.field static final greylist-max-o TRANSACTION_runIsolatedEntryPoint:I = 0x5

.field static final greylist-max-o TRANSACTION_scheduleApplicationInfoChanged:I = 0x33

.field static final greylist-max-o TRANSACTION_scheduleBindService:I = 0xa

.field static final greylist-max-o TRANSACTION_scheduleCrash:I = 0x16

.field static final greylist-max-o TRANSACTION_scheduleCreateBackupAgent:I = 0x11

.field static final greylist-max-o TRANSACTION_scheduleCreateService:I = 0x2

.field static final greylist-max-o TRANSACTION_scheduleDestroyBackupAgent:I = 0x12

.field static final greylist-max-o TRANSACTION_scheduleEnterAnimationComplete:I = 0x2b

.field static final greylist-max-o TRANSACTION_scheduleExit:I = 0x6

.field static final greylist-max-o TRANSACTION_scheduleInstallProvider:I = 0x29

.field static final greylist-max-o TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x2f

.field static final greylist-max-o TRANSACTION_scheduleLowMemory:I = 0xe

.field static final greylist-max-o TRANSACTION_scheduleOnNewActivityOptions:I = 0x13

.field static final greylist-max-o TRANSACTION_scheduleReceiver:I = 0x1

.field static final greylist-max-o TRANSACTION_scheduleRegisteredReceiver:I = 0xd

.field static final greylist-max-o TRANSACTION_scheduleServiceArgs:I = 0x7

.field static final greylist-max-o TRANSACTION_scheduleStopService:I = 0x3

.field static final greylist-max-o TRANSACTION_scheduleSuicide:I = 0x14

.field static final greylist-max-o TRANSACTION_scheduleTransaction:I = 0x35

.field static final greylist-max-o TRANSACTION_scheduleTranslucentConversionComplete:I = 0x27

.field static final greylist-max-o TRANSACTION_scheduleTrimMemory:I = 0x1e

.field static final greylist-max-o TRANSACTION_scheduleUnbindService:I = 0xb

.field static final greylist-max-o TRANSACTION_setCoreSettings:I = 0x1c

.field static final greylist-max-o TRANSACTION_setNetworkBlockSeq:I = 0x34

.field static final greylist-max-o TRANSACTION_setProcessState:I = 0x28

.field static final greylist-max-o TRANSACTION_setSchedulingGroup:I = 0x10

.field static final greylist-max-o TRANSACTION_startBinderTracking:I = 0x2d

.field static final greylist-max-o TRANSACTION_stopBinderTrackingAndDump:I = 0x2e

.field static final blacklist TRANSACTION_trackBinderAllocations:I = 0x3d

.field static final greylist-max-o TRANSACTION_unstableProviderDied:I = 0x25

.field static final blacklist TRANSACTION_updateHttpProxy:I = 0x1b

.field static final greylist-max-o TRANSACTION_updatePackageCompatibilityInfo:I = 0x1d

.field static final greylist-max-o TRANSACTION_updateTimePrefs:I = 0x2a

.field static final greylist-max-o TRANSACTION_updateTimeZone:I = 0x8

.field static final blacklist TRANSACTION_updateUiTranslationState:I = 0x3a


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 222
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 223
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 231
    if-nez p0, :cond_4

    .line 232
    const/4 v0, 0x0

    return-object v0

    .line 234
    :cond_4
    const-string v0, "android.app.IApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 235
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_14

    .line 236
    move-object v1, v0

    check-cast v1, Landroid/app/IApplicationThread;

    return-object v1

    .line 238
    :cond_14
    new-instance v1, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 247
    packed-switch p0, :pswitch_data_ec

    .line 503
    const/4 v0, 0x0

    return-object v0

    .line 499
    :pswitch_5
    const-string v0, "enableDebugConfig"

    return-object v0

    .line 495
    :pswitch_8
    const-string v0, "dumpLogText"

    return-object v0

    .line 491
    :pswitch_b
    const-string/jumbo v0, "trackBinderAllocations"

    return-object v0

    .line 487
    :pswitch_f
    const-string v0, "dumpBinderAllocations"

    return-object v0

    .line 483
    :pswitch_12
    const-string v0, "dumpPeriodHistoryMessage"

    return-object v0

    .line 479
    :pswitch_15
    const-string/jumbo v0, "updateUiTranslationState"

    return-object v0

    .line 475
    :pswitch_19
    const-string v0, "instrumentWithoutRestart"

    return-object v0

    .line 471
    :pswitch_1c
    const-string/jumbo v0, "notifyContentProviderPublishStatus"

    return-object v0

    .line 467
    :pswitch_20
    const-string/jumbo v0, "performDirectAction"

    return-object v0

    .line 463
    :pswitch_24
    const-string/jumbo v0, "requestDirectActions"

    return-object v0

    .line 459
    :pswitch_28
    const-string/jumbo v0, "scheduleTransaction"

    return-object v0

    .line 455
    :pswitch_2c
    const-string/jumbo v0, "setNetworkBlockSeq"

    return-object v0

    .line 451
    :pswitch_30
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    .line 447
    :pswitch_34
    const-string v0, "attachStartupAgents"

    return-object v0

    .line 443
    :pswitch_37
    const-string v0, "attachAgent"

    return-object v0

    .line 439
    :pswitch_3a
    const-string v0, "handleTrustStorageUpdate"

    return-object v0

    .line 435
    :pswitch_3d
    const-string/jumbo v0, "scheduleLocalVoiceInteractionStarted"

    return-object v0

    .line 431
    :pswitch_41
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    .line 427
    :pswitch_45
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    .line 423
    :pswitch_49
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    .line 419
    :pswitch_4d
    const-string/jumbo v0, "scheduleEnterAnimationComplete"

    return-object v0

    .line 415
    :pswitch_51
    const-string/jumbo v0, "updateTimePrefs"

    return-object v0

    .line 411
    :pswitch_55
    const-string/jumbo v0, "scheduleInstallProvider"

    return-object v0

    .line 407
    :pswitch_59
    const-string/jumbo v0, "setProcessState"

    return-object v0

    .line 403
    :pswitch_5d
    const-string/jumbo v0, "scheduleTranslucentConversionComplete"

    return-object v0

    .line 399
    :pswitch_61
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    .line 395
    :pswitch_65
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    .line 391
    :pswitch_69
    const-string v0, "dumpDbInfo"

    return-object v0

    .line 387
    :pswitch_6c
    const-string v0, "dumpProvider"

    return-object v0

    .line 383
    :pswitch_6f
    const-string v0, "dumpCacheInfo"

    return-object v0

    .line 379
    :pswitch_72
    const-string v0, "dumpGfxInfo"

    return-object v0

    .line 375
    :pswitch_75
    const-string v0, "dumpMemInfoProto"

    return-object v0

    .line 371
    :pswitch_78
    const-string v0, "dumpMemInfo"

    return-object v0

    .line 367
    :pswitch_7b
    const-string/jumbo v0, "scheduleTrimMemory"

    return-object v0

    .line 363
    :pswitch_7f
    const-string/jumbo v0, "updatePackageCompatibilityInfo"

    return-object v0

    .line 359
    :pswitch_83
    const-string/jumbo v0, "setCoreSettings"

    return-object v0

    .line 355
    :pswitch_87
    const-string/jumbo v0, "updateHttpProxy"

    return-object v0

    .line 351
    :pswitch_8b
    const-string v0, "clearDnsCache"

    return-object v0

    .line 347
    :pswitch_8e
    const-string v0, "dumpResources"

    return-object v0

    .line 343
    :pswitch_91
    const-string v0, "dumpActivity"

    return-object v0

    .line 339
    :pswitch_94
    const-string v0, "dumpHeap"

    return-object v0

    .line 335
    :pswitch_97
    const-string/jumbo v0, "scheduleCrash"

    return-object v0

    .line 331
    :pswitch_9b
    const-string v0, "dispatchPackageBroadcast"

    return-object v0

    .line 327
    :pswitch_9e
    const-string/jumbo v0, "scheduleSuicide"

    return-object v0

    .line 323
    :pswitch_a2
    const-string/jumbo v0, "scheduleOnNewActivityOptions"

    return-object v0

    .line 319
    :pswitch_a6
    const-string/jumbo v0, "scheduleDestroyBackupAgent"

    return-object v0

    .line 315
    :pswitch_aa
    const-string/jumbo v0, "scheduleCreateBackupAgent"

    return-object v0

    .line 311
    :pswitch_ae
    const-string/jumbo v0, "setSchedulingGroup"

    return-object v0

    .line 307
    :pswitch_b2
    const-string/jumbo v0, "profilerControl"

    return-object v0

    .line 303
    :pswitch_b6
    const-string/jumbo v0, "scheduleLowMemory"

    return-object v0

    .line 299
    :pswitch_ba
    const-string/jumbo v0, "scheduleRegisteredReceiver"

    return-object v0

    .line 295
    :pswitch_be
    const-string v0, "dumpService"

    return-object v0

    .line 291
    :pswitch_c1
    const-string/jumbo v0, "scheduleUnbindService"

    return-object v0

    .line 287
    :pswitch_c5
    const-string/jumbo v0, "scheduleBindService"

    return-object v0

    .line 283
    :pswitch_c9
    const-string/jumbo v0, "processInBackground"

    return-object v0

    .line 279
    :pswitch_cd
    const-string/jumbo v0, "updateTimeZone"

    return-object v0

    .line 275
    :pswitch_d1
    const-string/jumbo v0, "scheduleServiceArgs"

    return-object v0

    .line 271
    :pswitch_d5
    const-string/jumbo v0, "scheduleExit"

    return-object v0

    .line 267
    :pswitch_d9
    const-string/jumbo v0, "runIsolatedEntryPoint"

    return-object v0

    .line 263
    :pswitch_dd
    const-string v0, "bindApplication"

    return-object v0

    .line 259
    :pswitch_e0
    const-string/jumbo v0, "scheduleStopService"

    return-object v0

    .line 255
    :pswitch_e4
    const-string/jumbo v0, "scheduleCreateService"

    return-object v0

    .line 251
    :pswitch_e8
    const-string/jumbo v0, "scheduleReceiver"

    return-object v0

    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_e8
        :pswitch_e4
        :pswitch_e0
        :pswitch_dd
        :pswitch_d9
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_c9
        :pswitch_c5
        :pswitch_c1
        :pswitch_be
        :pswitch_ba
        :pswitch_b6
        :pswitch_b2
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9b
        :pswitch_97
        :pswitch_94
        :pswitch_91
        :pswitch_8e
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6c
        :pswitch_69
        :pswitch_65
        :pswitch_61
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 242
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2209
    const/16 v0, 0x3e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 510
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 66
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    const-string v12, "android.app.IApplicationThread"

    .line 515
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v14, v11, :cond_13

    const v0, 0xffffff

    if-gt v14, v0, :cond_13

    .line 516
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    :cond_13
    packed-switch v14, :pswitch_data_852

    .line 526
    move-object/from16 v10, p3

    packed-switch v14, :pswitch_data_858

    .line 1248
    move-object v11, v13

    move-object v10, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 522
    :pswitch_22
    move-object/from16 v10, p3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    return v11

    .line 1239
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1241
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1242
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1243
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->enableDebugConfig(Ljava/lang/String;Z)V

    .line 1244
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1231
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_3e
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1232
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1233
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->dumpLogText(Landroid/os/ParcelFileDescriptor;)V

    .line 1234
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1223
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1224
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->trackBinderAllocations(Z)V

    .line 1226
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1215
    .end local v0    # "_arg0":Z
    :pswitch_66
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1216
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->dumpBinderAllocations(Landroid/os/ParcelFileDescriptor;)V

    .line 1218
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1205
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1207
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1208
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1209
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpPeriodHistoryMessage(JI)V

    .line 1210
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1187
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":I
    :pswitch_92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1189
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1191
    .local v8, "_arg1":I
    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/translation/TranslationSpec;

    .line 1193
    .local v9, "_arg2":Landroid/view/translation/TranslationSpec;
    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/translation/TranslationSpec;

    .line 1195
    .local v16, "_arg3":Landroid/view/translation/TranslationSpec;
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1197
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v0, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/translation/UiTranslationSpec;

    .line 1198
    .local v18, "_arg5":Landroid/view/translation/UiTranslationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 1200
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1171
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/view/translation/TranslationSpec;
    .end local v16    # "_arg3":Landroid/view/translation/TranslationSpec;
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v18    # "_arg5":Landroid/view/translation/UiTranslationSpec;
    :pswitch_d6
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 1173
    .local v6, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1175
    .local v7, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v8

    .line 1177
    .local v8, "_arg2":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v9

    .line 1179
    .local v9, "_arg3":Landroid/app/IUiAutomationConnection;
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/pm/ApplicationInfo;

    .line 1180
    .local v16, "_arg4":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V

    .line 1182
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1157
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_arg2":Landroid/app/IInstrumentationWatcher;
    .end local v9    # "_arg3":Landroid/app/IUiAutomationConnection;
    .end local v16    # "_arg4":Landroid/content/pm/ApplicationInfo;
    :pswitch_118
    sget-object v0, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContentProviderHolder;

    .line 1159
    .local v0, "_arg0":Landroid/app/ContentProviderHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1161
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1163
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1164
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1165
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V

    .line 1166
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1141
    .end local v0    # "_arg0":Landroid/app/ContentProviderHolder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_13a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1143
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1145
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    .line 1147
    .local v8, "_arg2":Landroid/os/Bundle;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/RemoteCallback;

    .line 1149
    .local v9, "_arg3":Landroid/os/RemoteCallback;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/RemoteCallback;

    .line 1150
    .local v16, "_arg4":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1152
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1127
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/os/Bundle;
    .end local v9    # "_arg3":Landroid/os/RemoteCallback;
    .end local v16    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1129
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v1

    .line 1131
    .local v1, "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 1133
    .local v2, "_arg2":Landroid/os/RemoteCallback;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1134
    .local v3, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1135
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1136
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1119
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    .end local v2    # "_arg2":Landroid/os/RemoteCallback;
    .end local v3    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_19e
    sget-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 1120
    .local v0, "_arg0":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1122
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1111
    .end local v0    # "_arg0":Landroid/app/servertransaction/ClientTransaction;
    :pswitch_1b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1112
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1113
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    .line 1114
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1103
    .end local v0    # "_arg0":J
    :pswitch_1c6
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1104
    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 1106
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1095
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :pswitch_1dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1096
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1097
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->attachStartupAgents(Ljava/lang/String;)V

    .line 1098
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1087
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1ee
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    .line 1090
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1081
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_200
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    .line 1082
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1072
    :pswitch_20b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1074
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v1

    .line 1075
    .restart local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1076
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1077
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1064
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_225
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1065
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1066
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 1067
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1058
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_23b
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    .line 1059
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1051
    :pswitch_246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1052
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    .line 1054
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1043
    .end local v0    # "_arg0":[B
    :pswitch_258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1044
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 1046
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1035
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_26a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1036
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    .line 1038
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1027
    .end local v0    # "_arg0":I
    :pswitch_27c
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 1028
    .local v0, "_arg0":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 1030
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1019
    .end local v0    # "_arg0":Landroid/content/pm/ProviderInfo;
    :pswitch_292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1020
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1021
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    .line 1022
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 1009
    .end local v0    # "_arg0":I
    :pswitch_2a4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1011
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1012
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1013
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 1014
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 993
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_2ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 995
    .restart local v6    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 997
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 999
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1001
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1002
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 1004
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 985
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_2e4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 986
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 988
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 975
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_2f6
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 977
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 978
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 980
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 963
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_310
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 965
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 967
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 968
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 969
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 970
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 953
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_32e
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 955
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 957
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 958
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 943
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_348
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 945
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 946
    .restart local v1    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 948
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 923
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_362
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 925
    .local v8, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Debug$MemoryInfo;

    .line 927
    .local v9, "_arg1":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 929
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 931
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 933
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 935
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 936
    .local v20, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 937
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 938
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 899
    .end local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":[Ljava/lang/String;
    :pswitch_3a4
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/ParcelFileDescriptor;

    .line 901
    .local v16, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Debug$MemoryInfo;

    .line 903
    .local v17, "_arg1":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 905
    .local v18, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 907
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 909
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 911
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 913
    .local v22, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 915
    .local v23, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v24

    .line 916
    .local v24, "_arg8":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 917
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V

    .line 918
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 891
    .end local v16    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v18    # "_arg2":Z
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":[Ljava/lang/String;
    :pswitch_3f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 892
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    .line 894
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 881
    .end local v0    # "_arg0":I
    :pswitch_408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 883
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    .line 884
    .local v1, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 886
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 873
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :pswitch_422
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 874
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 875
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    .line 876
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 867
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_438
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateHttpProxy()V

    .line 868
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 862
    :pswitch_443
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    .line 863
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 853
    :pswitch_44e
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 855
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 856
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 858
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 839
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_46c
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 841
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 843
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 845
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 848
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 821
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":[Ljava/lang/String;
    :pswitch_48e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 823
    .local v7, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 825
    .local v8, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 827
    .local v9, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 829
    .local v16, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    .line 831
    .local v17, "_arg4":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/RemoteCallback;

    .line 832
    .local v18, "_arg5":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 833
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 834
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 809
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "_arg5":Landroid/os/RemoteCallback;
    :pswitch_4cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 813
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 814
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 815
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 816
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 799
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_4e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 801
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 804
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 793
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_4ff
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    .line 794
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 784
    :pswitch_50a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 786
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 787
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 789
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 772
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_524
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 774
    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    .line 776
    .local v1, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 777
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 779
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 756
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .end local v2    # "_arg2":I
    :pswitch_546
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 758
    .local v6, "_arg0":Landroid/content/pm/ApplicationInfo;
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/res/CompatibilityInfo;

    .line 760
    .local v7, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 762
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 764
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 765
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 766
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;III)V

    .line 767
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 748
    .end local v6    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_57a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 749
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 750
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    .line 751
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 736
    .end local v0    # "_arg0":I
    :pswitch_58c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 738
    .local v0, "_arg0":Z
    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfilerInfo;

    .line 740
    .local v1, "_arg1":Landroid/app/ProfilerInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 741
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 742
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 743
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 730
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/app/ProfilerInfo;
    .end local v2    # "_arg2":I
    :pswitch_5aa
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    .line 731
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 707
    :pswitch_5b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v16

    .line 709
    .local v16, "_arg0":Landroid/content/IIntentReceiver;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 711
    .local v17, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 713
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 715
    .local v19, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 717
    .local v20, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 719
    .restart local v21    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 721
    .restart local v22    # "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 723
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 724
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 726
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 695
    .end local v16    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v17    # "_arg1":Landroid/content/Intent;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Landroid/os/Bundle;
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_60b
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 697
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 699
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 702
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 685
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 687
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 688
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 690
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 671
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 673
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 675
    .restart local v1    # "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 677
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 678
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 680
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 665
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_665
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    .line 666
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 660
    :pswitch_670
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    .line 661
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 651
    :pswitch_67b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 653
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 654
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 655
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 656
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 645
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_695
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    .line 646
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 636
    :pswitch_6a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 639
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    .line 641
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_850

    .line 577
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_6b6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .local v29, "_arg0":Ljava/lang/String;
    move-object/from16 v1, v29

    .line 579
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v30, v0

    check-cast v30, Landroid/content/pm/ApplicationInfo;

    .local v30, "_arg1":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v2, v30

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .local v31, "_arg2":Ljava/lang/String;
    move-object/from16 v3, v31

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v32

    .line 585
    sget-object v0, Landroid/content/pm/ProviderInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Landroid/content/pm/ProviderInfoList;

    .local v33, "_arg4":Landroid/content/pm/ProviderInfoList;
    move-object/from16 v5, v33

    .line 587
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v34, v0

    check-cast v34, Landroid/content/ComponentName;

    .local v34, "_arg5":Landroid/content/ComponentName;
    move-object/from16 v6, v34

    .line 589
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v35, v0

    check-cast v35, Landroid/app/ProfilerInfo;

    .local v35, "_arg6":Landroid/app/ProfilerInfo;
    move-object/from16 v7, v35

    .line 591
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Landroid/os/Bundle;

    .local v36, "_arg7":Landroid/os/Bundle;
    move-object/from16 v8, v36

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v37

    .local v37, "_arg8":Landroid/app/IInstrumentationWatcher;
    move-object/from16 v9, v37

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v38

    .local v38, "_arg9":Landroid/app/IUiAutomationConnection;
    move-object/from16 v10, v38

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    move/from16 v40, v11

    .local v39, "_arg10":I
    move/from16 v11, v39

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v41

    move-object/from16 v42, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v41, "_arg11":Z
    .local v42, "descriptor":Ljava/lang/String;
    move/from16 v12, v41

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v43

    move-object v0, v13

    .local v43, "_arg12":Z
    move/from16 v13, v43

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v44

    .local v44, "_arg13":Z
    move/from16 v14, v44

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v45

    .local v45, "_arg14":Z
    move/from16 v15, v45

    .line 607
    move-object/from16 v46, v1

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v47, v1

    check-cast v47, Landroid/content/res/Configuration;

    .local v47, "_arg15":Landroid/content/res/Configuration;
    move-object/from16 v16, v47

    .line 609
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v48, v1

    check-cast v48, Landroid/content/res/CompatibilityInfo;

    .local v48, "_arg16":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v17, v48

    .line 611
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 612
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v49

    .local v49, "_arg17":Ljava/util/Map;
    move-object/from16 v18, v49

    .line 614
    move-object/from16 v50, v1

    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .local v50, "cl":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Landroid/os/Bundle;

    .local v51, "_arg18":Landroid/os/Bundle;
    move-object/from16 v19, v51

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .local v52, "_arg19":Ljava/lang/String;
    move-object/from16 v20, v52

    .line 618
    sget-object v1, Landroid/content/AutofillOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v53, v1

    check-cast v53, Landroid/content/AutofillOptions;

    .local v53, "_arg20":Landroid/content/AutofillOptions;
    move-object/from16 v21, v53

    .line 620
    sget-object v1, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v54, v1

    check-cast v54, Landroid/content/ContentCaptureOptions;

    .local v54, "_arg21":Landroid/content/ContentCaptureOptions;
    move-object/from16 v22, v54

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v55

    .local v55, "_arg22":[J
    move-object/from16 v23, v55

    .line 624
    sget-object v1, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v56, v1

    check-cast v56, Landroid/os/SharedMemory;

    .local v56, "_arg23":Landroid/os/SharedMemory;
    move-object/from16 v24, v56

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v57

    .local v57, "_arg24":J
    move-wide/from16 v25, v57

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v59

    .local v59, "_arg25":J
    move-wide/from16 v27, v59

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v46, v50

    .end local v50    # "cl":Ljava/lang/ClassLoader;
    .local v46, "cl":Ljava/lang/ClassLoader;
    invoke-virtual/range {v0 .. v28}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[JLandroid/os/SharedMemory;JJ)V

    .line 631
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    goto/16 :goto_850

    .line 569
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v32    # "_arg3":Ljava/lang/String;
    .end local v33    # "_arg4":Landroid/content/pm/ProviderInfoList;
    .end local v34    # "_arg5":Landroid/content/ComponentName;
    .end local v35    # "_arg6":Landroid/app/ProfilerInfo;
    .end local v36    # "_arg7":Landroid/os/Bundle;
    .end local v37    # "_arg8":Landroid/app/IInstrumentationWatcher;
    .end local v38    # "_arg9":Landroid/app/IUiAutomationConnection;
    .end local v39    # "_arg10":I
    .end local v41    # "_arg11":Z
    .end local v42    # "descriptor":Ljava/lang/String;
    .end local v43    # "_arg12":Z
    .end local v44    # "_arg13":Z
    .end local v45    # "_arg14":Z
    .end local v46    # "cl":Ljava/lang/ClassLoader;
    .end local v47    # "_arg15":Landroid/content/res/Configuration;
    .end local v48    # "_arg16":Landroid/content/res/CompatibilityInfo;
    .end local v49    # "_arg17":Ljava/util/Map;
    .end local v51    # "_arg18":Landroid/os/Bundle;
    .end local v52    # "_arg19":Ljava/lang/String;
    .end local v53    # "_arg20":Landroid/content/AutofillOptions;
    .end local v54    # "_arg21":Landroid/content/ContentCaptureOptions;
    .end local v55    # "_arg22":[J
    .end local v56    # "_arg23":Landroid/os/SharedMemory;
    .end local v57    # "_arg24":J
    .end local v59    # "_arg25":J
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_7c0
    move/from16 v40, v11

    move-object/from16 v42, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v42    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 570
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 571
    move-object/from16 v10, p0

    invoke-virtual {v10, v0}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    .line 572
    move-object/from16 v11, p2

    goto/16 :goto_850

    .line 555
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v42    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_7d4
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v10, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v42    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 557
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v11, p2

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 559
    .local v1, "_arg1":Landroid/content/pm/ServiceInfo;
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    .line 561
    .local v2, "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 562
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 563
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 564
    goto :goto_850

    .line 531
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/pm/ServiceInfo;
    .end local v2    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v3    # "_arg3":I
    .end local v42    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_7fa
    move/from16 v40, v11

    move-object/from16 v42, v12

    move-object v11, v13

    move-object v10, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v42    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/Intent;

    .line 533
    .local v12, "_arg0":Landroid/content/Intent;
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ActivityInfo;

    .line 535
    .local v13, "_arg1":Landroid/content/pm/ActivityInfo;
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/res/CompatibilityInfo;

    .line 537
    .local v14, "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 539
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 541
    .local v16, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 543
    .local v17, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 545
    .local v18, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 547
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 548
    .local v20, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 549
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 550
    nop

    .line 1251
    .end local v12    # "_arg0":Landroid/content/Intent;
    .end local v13    # "_arg1":Landroid/content/pm/ActivityInfo;
    .end local v14    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":Landroid/os/Bundle;
    .end local v18    # "_arg6":Z
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":I
    :goto_850
    return v40

    nop

    :pswitch_data_852
    .packed-switch 0x5f4e5446
        :pswitch_22
    .end packed-switch

    :pswitch_data_858
    .packed-switch 0x1
        :pswitch_7fa
        :pswitch_7d4
        :pswitch_7c0
        :pswitch_6b6
        :pswitch_6a0
        :pswitch_695
        :pswitch_67b
        :pswitch_670
        :pswitch_665
        :pswitch_643
        :pswitch_629
        :pswitch_60b
        :pswitch_5b5
        :pswitch_5aa
        :pswitch_58c
        :pswitch_57a
        :pswitch_546
        :pswitch_524
        :pswitch_50a
        :pswitch_4ff
        :pswitch_4e9
        :pswitch_4cb
        :pswitch_48e
        :pswitch_46c
        :pswitch_44e
        :pswitch_443
        :pswitch_438
        :pswitch_422
        :pswitch_408
        :pswitch_3f6
        :pswitch_3a4
        :pswitch_362
        :pswitch_348
        :pswitch_32e
        :pswitch_310
        :pswitch_2f6
        :pswitch_2e4
        :pswitch_2ba
        :pswitch_2a4
        :pswitch_292
        :pswitch_27c
        :pswitch_26a
        :pswitch_258
        :pswitch_246
        :pswitch_23b
        :pswitch_225
        :pswitch_20b
        :pswitch_200
        :pswitch_1ee
        :pswitch_1dc
        :pswitch_1c6
        :pswitch_1b4
        :pswitch_19e
        :pswitch_174
        :pswitch_13a
        :pswitch_118
        :pswitch_d6
        :pswitch_92
        :pswitch_7c
        :pswitch_66
        :pswitch_54
        :pswitch_3e
        :pswitch_28
    .end packed-switch
.end method
