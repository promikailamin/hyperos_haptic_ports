.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 2517
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final areAllPriorityOnlyRingerSoundsMuted()Z
    .registers 2

    .line 2574
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmConfigLock(Lcom/android/server/notification/ZenModeHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2575
    :try_start_7
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 2576
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public canVolumeDownEnterSilent()Z
    .registers 1

    .line 2618
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 4

    or-int/lit8 v0, p1, 0x26

    .line 2629
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_c

    or-int/lit16 p0, p1, 0x83e

    return p0

    :cond_c
    and-int/lit16 p0, v0, -0x819

    return p0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_e

    move v6, v5

    goto :goto_f

    :cond_e
    move v6, v4

    :goto_f
    if-ne v3, v5, :cond_13

    move v7, v5

    goto :goto_14

    :cond_13
    move v7, v4

    :goto_14
    const/4 v8, -0x1

    if-eqz v2, :cond_29

    if-eq v2, v5, :cond_1d

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1d

    goto :goto_26

    .line 2601
    :cond_1d
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_26

    move v7, v2

    :goto_24
    move v11, v4

    goto :goto_37

    :cond_26
    :goto_26
    move v7, v2

    :goto_27
    move v11, v8

    goto :goto_37

    :cond_29
    if-eqz v6, :cond_35

    .line 2590
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v4, :cond_33

    move v4, v5

    goto :goto_24

    :cond_33
    move v4, v8

    goto :goto_24

    :cond_35
    move v7, v3

    goto :goto_27

    :goto_37
    if-eq v11, v8, :cond_4c

    .line 2607
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x3e8

    const/4 v12, 0x0

    const/4 v13, 0x5

    const-string/jumbo v14, "ringerModeExternal"

    move-object/from16 v15, p3

    invoke-static/range {v9 .. v17}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_4e

    :cond_4c
    move-object/from16 v15, p3

    .line 2611
    :goto_4e
    invoke-static {v1, v2, v15, v3, v7}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    return v7
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_e

    move v6, v5

    goto :goto_f

    :cond_e
    move v6, v4

    .line 2530
    :goto_f
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v7, v7, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v7, :cond_1d

    if-ne v7, v5, :cond_26

    .line 2532
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->areAllPriorityOnlyRingerSoundsMuted()Z

    move-result v7

    if-nez v7, :cond_26

    .line 2535
    :cond_1d
    iget-object v7, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    :cond_26
    const/4 v7, -0x1

    if-eqz v2, :cond_4f

    const/4 v8, 0x2

    if-eq v2, v5, :cond_2f

    if-eq v2, v8, :cond_2f

    goto :goto_69

    :cond_2f
    if-eqz v6, :cond_47

    if-nez v1, :cond_47

    .line 2549
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v9, v9, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v9, v8, :cond_44

    const/4 v8, 0x3

    if-eq v9, v8, :cond_44

    if-ne v9, v5, :cond_47

    .line 2553
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->areAllPriorityOnlyRingerSoundsMuted()Z

    move-result v5

    if-eqz v5, :cond_47

    :cond_44
    move v11, v4

    move v4, v2

    goto :goto_6b

    .line 2555
    :cond_47
    iget-object v5, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v5, :cond_69

    :goto_4d
    move v11, v7

    goto :goto_6b

    :cond_4f
    if-eqz v6, :cond_69

    move-object/from16 v4, p5

    .line 2540
    iget-boolean v4, v4, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v4, :cond_69

    .line 2541
    iget-object v4, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v8, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v8, :cond_5e

    goto :goto_5f

    :cond_5e
    move v5, v7

    .line 2544
    :goto_5f
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    move v4, v2

    move v11, v5

    goto :goto_6b

    :cond_69
    :goto_69
    move v4, v2

    goto :goto_4d

    :goto_6b
    if-eq v11, v7, :cond_7e

    .line 2562
    iget-object v9, v0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v16, 0x0

    const/16 v17, 0x3e8

    const/4 v12, 0x0

    const/4 v13, 0x5

    const-string/jumbo v14, "ringerModeInternal"

    const/4 v15, 0x0

    invoke-static/range {v9 .. v17}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;ZI)V

    :cond_7e
    if-nez v6, :cond_84

    if-ne v11, v7, :cond_84

    if-eq v3, v4, :cond_87

    :cond_84
    move-object/from16 v0, p3

    goto :goto_88

    :cond_87
    return v4

    .line 2567
    :goto_88
    invoke-static {v1, v2, v0, v3, v4}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    return v4
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 2520
    const-string p0, "ZenModeHelper"

    return-object p0
.end method
