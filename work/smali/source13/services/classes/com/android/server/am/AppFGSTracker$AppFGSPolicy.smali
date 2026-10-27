.class final Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;
.super Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.source "AppFGSTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppFGSTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppFGSPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy<",
        "Lcom/android/server/am/AppFGSTracker;",
        ">;"
    }
.end annotation


# static fields
.field static final DEFAULT_BG_FGS_LOCATION_THRESHOLD:J = 0xdbba00L

.field static final DEFAULT_BG_FGS_LONG_RUNNING_THRESHOLD:J = 0x44aa200L

.field static final DEFAULT_BG_FGS_LONG_RUNNING_WINDOW:J = 0x5265c00L

.field static final DEFAULT_BG_FGS_MEDIA_PLAYBACK_THRESHOLD:J = 0xdbba00L

.field static final DEFAULT_BG_FGS_MONITOR_ENABLED:Z = true

.field static final KEY_BG_FGS_LOCATION_THRESHOLD:Ljava/lang/String; = "bg_fgs_location_threshold"

.field static final KEY_BG_FGS_LONG_RUNNING_THRESHOLD:Ljava/lang/String; = "bg_fgs_long_running_threshold"

.field static final KEY_BG_FGS_LONG_RUNNING_WINDOW:Ljava/lang/String; = "bg_fgs_long_running_window"

.field static final KEY_BG_FGS_MEDIA_PLAYBACK_THRESHOLD:Ljava/lang/String; = "bg_fgs_media_playback_threshold"

.field static final KEY_BG_FGS_MONITOR_ENABLED:Ljava/lang/String; = "bg_fgs_monitor_enabled"


# instance fields
.field private volatile mBgFgsLocationThresholdMs:J

.field private volatile mBgFgsLongRunningThresholdMs:J

.field private volatile mBgFgsMediaPlaybackThresholdMs:J


# direct methods
.method constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppFGSTracker;)V
    .registers 11
    .param p1, "injector"    # Lcom/android/server/am/BaseAppStateTracker$Injector;
    .param p2, "tracker"    # Lcom/android/server/am/AppFGSTracker;

    .line 858
    const-string v3, "bg_fgs_monitor_enabled"

    const/4 v4, 0x1

    const-string v5, "bg_fgs_long_running_window"

    const-wide/32 v6, 0x5265c00

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 844
    const-wide/32 v0, 0x44aa200

    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 849
    const-wide/32 v0, 0xdbba00

    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    .line 855
    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    .line 860
    return-void
.end method

.method private updateBgFgsLocationThreshold()V
    .registers 5

    .line 917
    const-string v0, "activity_manager"

    const-string v1, "bg_fgs_location_threshold"

    const-wide/32 v2, 0xdbba00

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    .line 921
    return-void
.end method

.method private updateBgFgsLongRunningThreshold()V
    .registers 5

    .line 899
    const-string v0, "activity_manager"

    const-string v1, "bg_fgs_long_running_threshold"

    const-wide/32 v2, 0x44aa200

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 903
    .local v0, "threshold":J
    iget-wide v2, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1a

    .line 904
    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    .line 905
    iget-object v2, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v2, Lcom/android/server/am/AppFGSTracker;

    invoke-static {v2}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V

    .line 907
    :cond_1a
    return-void
.end method

.method private updateBgFgsMediaPlaybackThreshold()V
    .registers 5

    .line 910
    const-string v0, "activity_manager"

    const-string v1, "bg_fgs_media_playback_threshold"

    const-wide/32 v2, 0xdbba00

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    .line 914
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1003
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    const-string v0, "APP FOREGROUND SERVICE TRACKER POLICY SETTINGS:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    const-string v0, "  "

    .line 1006
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1007
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1009
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1010
    const-string v1, "bg_fgs_long_running_threshold"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1012
    iget-wide v2, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1013
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1014
    const-string v2, "bg_fgs_media_playback_threshold"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1016
    iget-wide v2, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 1017
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1018
    const-string v2, "bg_fgs_location_threshold"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1020
    iget-wide v1, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 1022
    :cond_58
    return-void
.end method

.method getExemptionReasonString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reason"    # I

    .line 986
    const/4 v0, -0x1

    move/from16 v1, p3

    if-eq v1, v0, :cond_a

    .line 987
    invoke-super/range {p0 .. p3}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->getExemptionReasonString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 989
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 990
    .local v9, "now":J
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningWindowSize()J

    move-result-wide v11

    .line 991
    .local v11, "window":J
    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningWindowSize()J

    move-result-wide v4

    sub-long v4, v9, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 992
    .local v13, "since":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{mediaPlayback="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide v5, v9

    move-wide v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptMediaPlaybackFGS(Ljava/lang/String;IJJ)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", location="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 993
    move-object v2, p0

    move-wide v7, v13

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptLocationFGS(Ljava/lang/String;IJJ)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 992
    return-object v0
.end method

.method getFGSMediaPlaybackThreshold()J
    .registers 3

    .line 932
    iget-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsMediaPlaybackThresholdMs:J

    return-wide v0
.end method

.method getFgsLongRunningThreshold()J
    .registers 3

    .line 924
    iget-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLongRunningThresholdMs:J

    return-wide v0
.end method

.method getFgsLongRunningWindowSize()J
    .registers 3

    .line 928
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getMaxTrackingDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method getLocationFGSThreshold()J
    .registers 3

    .line 936
    iget-wide v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mBgFgsLocationThresholdMs:J

    return-wide v0
.end method

.method onLongRunningFgs(Ljava/lang/String;II)V
    .registers 19
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "exemptReason"    # I

    .line 940
    const/4 v0, -0x1

    move/from16 v1, p3

    if-eq v1, v0, :cond_6

    .line 941
    return-void

    .line 943
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 944
    .local v9, "now":J
    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFgsLongRunningWindowSize()J

    move-result-wide v11

    .line 945
    .local v11, "window":J
    const-wide/16 v2, 0x0

    sub-long v4, v9, v11

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 946
    .local v13, "since":J
    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide v5, v9

    move-wide v7, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptMediaPlaybackFGS(Ljava/lang/String;IJJ)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 947
    return-void

    .line 949
    :cond_24
    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-wide v5, v9

    move-wide v7, v13

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->shouldExemptLocationFGS(Ljava/lang/String;IJJ)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 950
    return-void

    .line 952
    :cond_32
    move-object v0, p0

    iget-object v2, v0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v2, Lcom/android/server/am/AppFGSTracker;

    iget-object v2, v2, Lcom/android/server/am/AppFGSTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/AppRestrictionController;->postLongRunningFgsIfNecessary(Ljava/lang/String;I)V

    .line 953
    return-void
.end method

.method onLongRunningFgsGone(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 997
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    iget-object v0, v0, Lcom/android/server/am/AppFGSTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 998
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->cancelLongRunningFGSNotificationIfNecessary(Ljava/lang/String;I)V

    .line 999
    return-void
.end method

.method public onMaxTrackingDurationChanged(J)V
    .registers 4
    .param p1, "maxDuration"    # J

    .line 895
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    invoke-static {v0}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$monBgFgsLongRunningThresholdChanged(Lcom/android/server/am/AppFGSTracker;)V

    .line 896
    return-void
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 872
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_3c

    :cond_7
    goto :goto_26

    :sswitch_8
    const-string v0, "bg_fgs_media_playback_threshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :sswitch_12
    const-string v0, "bg_fgs_long_running_threshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :sswitch_1c
    const-string v0, "bg_fgs_location_threshold"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_4a

    .line 883
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onPropertiesChanged(Ljava/lang/String;)V

    goto :goto_3a

    .line 880
    :pswitch_2e
    invoke-direct {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->updateBgFgsLocationThreshold()V

    .line 881
    goto :goto_3a

    .line 877
    :pswitch_32
    invoke-direct {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->updateBgFgsMediaPlaybackThreshold()V

    .line 878
    goto :goto_3a

    .line 874
    :pswitch_36
    invoke-direct {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->updateBgFgsLongRunningThreshold()V

    .line 875
    nop

    .line 886
    :goto_3a
    return-void

    nop

    :sswitch_data_3c
    .sparse-switch
        -0x774f54d8 -> :sswitch_1c
        0x14fa6a2f -> :sswitch_12
        0x2fe08d09 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_36
        :pswitch_32
        :pswitch_2e
    .end packed-switch
.end method

.method public onSystemReady()V
    .registers 1

    .line 864
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onSystemReady()V

    .line 865
    invoke-direct {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->updateBgFgsLongRunningThreshold()V

    .line 866
    invoke-direct {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->updateBgFgsMediaPlaybackThreshold()V

    .line 867
    invoke-direct {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->updateBgFgsLocationThreshold()V

    .line 868
    return-void
.end method

.method public onTrackerEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 890
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    invoke-static {v0, p1}, Lcom/android/server/am/AppFGSTracker;->-$$Nest$monBgFgsMonitorEnabled(Lcom/android/server/am/AppFGSTracker;Z)V

    .line 891
    return-void
.end method

.method shouldExemptLocationFGS(Ljava/lang/String;IJJ)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J
    .param p5, "since"    # J

    .line 970
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    iget-object v1, v0, Lcom/android/server/am/AppFGSTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 971
    const/16 v8, 0x8

    move-object v2, p1

    move v3, p2

    move-wide v4, p5

    move-wide v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(Ljava/lang/String;IJJI)J

    move-result-wide v0

    .line 973
    .local v0, "locationMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_20

    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getLocationFGSThreshold()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_20

    .line 979
    const/4 v2, 0x1

    return v2

    .line 981
    :cond_20
    const/4 v2, 0x0

    return v2
.end method

.method shouldExemptMediaPlaybackFGS(Ljava/lang/String;IJJ)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "now"    # J
    .param p5, "window"    # J

    .line 956
    iget-object v0, p0, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppFGSTracker;

    iget-object v1, v0, Lcom/android/server/am/AppFGSTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 957
    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/AppRestrictionController;->getCompositeMediaPlaybackDurations(Ljava/lang/String;IJJ)J

    move-result-wide v0

    .line 958
    .local v0, "mediaPlaybackMs":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/am/AppFGSTracker$AppFGSPolicy;->getFGSMediaPlaybackThreshold()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1e

    .line 964
    const/4 v2, 0x1

    return v2

    .line 966
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method
