.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method protected constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .line 1332
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 2

    .line 1431
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 5
    .param p1, "streams"    # I

    .line 1437
    invoke-static {}, Lcom/android/server/notification/ZenModeStub;->get()Lcom/android/server/notification/ZenModeStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v2, v2, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-interface {v0, v1, p1, v2}, Lcom/android/server/notification/ZenModeStub;->getRingerModeAffectedStreams(Landroid/content/Context;II)I

    move-result v0

    .line 1439
    .local v0, "miuiAffectedStreams":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    .line 1440
    return v0

    .line 1446
    :cond_16
    or-int/lit8 p1, p1, 0x26

    .line 1450
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v1, v1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 1453
    or-int/lit16 p1, p1, 0x818

    goto :goto_24

    .line 1457
    :cond_22
    and-int/lit16 p1, p1, -0x819

    .line 1462
    :goto_24
    return p1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 13
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .line 1391
    move v0, p2

    .line 1392
    .local v0, "ringerModeInternalOut":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, p2, :cond_7

    move v3, v2

    goto :goto_8

    :cond_7
    move v3, v1

    .line 1393
    .local v3, "isChange":Z
    :goto_8
    if-ne p4, v2, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v1

    .line 1395
    .local v4, "isVibrate":Z
    :goto_d
    const/4 v5, -0x1

    .line 1396
    .local v5, "newZen":I
    packed-switch p2, :pswitch_data_4c

    goto :goto_2c

    .line 1410
    :pswitch_12
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v1, v1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v1, :cond_2c

    .line 1411
    const/4 v5, 0x0

    goto :goto_2c

    .line 1398
    :pswitch_1a
    if-eqz v3, :cond_2a

    .line 1399
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v6, v6, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v6, :cond_23

    .line 1400
    const/4 v5, 0x1

    .line 1402
    :cond_23
    if-eqz v4, :cond_27

    move v1, v2

    goto :goto_28

    .line 1403
    :cond_27
    nop

    :goto_28
    move v0, v1

    goto :goto_2c

    .line 1405
    :cond_2a
    move v0, p4

    .line 1407
    nop

    .line 1417
    :cond_2c
    :goto_2c
    const/4 v1, -0x1

    if-eq v5, v1, :cond_48

    .line 1420
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetRingerModeExternal do not change zenmode ,caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModeHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_48
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1426
    return v0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 16
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .line 1341
    const/4 v0, 0x1

    if-eq p1, p2, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    .line 1343
    .local v1, "isChange":Z
    :goto_6
    move v2, p2

    .line 1345
    .local v2, "ringerModeExternalOut":I
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v3, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v3, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v3, v0, :cond_26

    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v3, v3, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1347
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1350
    :cond_1d
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    .line 1352
    :cond_26
    const/4 v3, -0x1

    .line 1353
    .local v3, "newZen":I
    packed-switch p2, :pswitch_data_8c

    goto :goto_71

    .line 1364
    :pswitch_2b
    if-eqz v1, :cond_50

    if-nez p1, :cond_50

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4d

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4d

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-ne v4, v0, :cond_50

    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object v0, v0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1368
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1370
    :cond_4d
    const/4 v3, 0x0

    move v0, v3

    goto :goto_72

    .line 1371
    :cond_50
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v0, :cond_71

    .line 1372
    const/4 v2, 0x0

    move v0, v3

    goto :goto_72

    .line 1355
    :pswitch_59
    if-eqz v1, :cond_71

    iget-boolean v0, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v0, :cond_71

    .line 1356
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_66

    .line 1357
    const/4 v3, 0x1

    .line 1359
    :cond_66
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    move v0, v3

    goto :goto_72

    .line 1377
    :cond_71
    :goto_71
    move v0, v3

    .end local v3    # "newZen":I
    .local v0, "newZen":I
    :goto_72
    const/4 v9, -0x1

    if-eq v0, v9, :cond_81

    .line 1378
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v6, "ringerModeInternal"

    move v4, v0

    invoke-static/range {v3 .. v8}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1381
    :cond_81
    if-nez v1, :cond_87

    if-ne v0, v9, :cond_87

    if-eq p4, v2, :cond_8a

    .line 1382
    :cond_87
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 1385
    :cond_8a
    return v2

    nop

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_59
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1335
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
