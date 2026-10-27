.class public Lcom/android/server/power/PowerManagerServiceStub;
.super Ljava/lang/Object;
.source "PowerManagerServiceStub.java"


# static fields
.field public static final CODE_BOOST_BRIGHTNESS:I = 0xfffff7

.field public static final CODE_CLEAR_WAKE_UP_FLAG:I = 0xfffff8

.field public static final CODE_GO_TO_SLEEP_SECONDARY_DISPLAY:I = 0xfffffb

.field public static final CODE_IS_SECONDARY_DISPLAY_POWER_ON:I = 0xfffff9

.field public static final CODE_REQUEST_DIMMING_RIGHT_NOW:I = 0xfffffe

.field public static final CODE_REQUEST_HANG_UP_WHEN_SCREEN_PROJECTION:I = 0xfffffd

.field public static final CODE_WAKE_UP_SECONDARY_DISPLAY:I = 0xfffffc

.field public static final CODE_WAKE_UP_SECONDARY_DISPLAY_WITH_TOKEN:I = 0xfffffa

.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field protected static final IS_SUB_SCREEN_DEVICE:Z

.field public static final POLICY_HANGUP:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PowerManagerServiceStub"

.field public static final WAKEFULNESS_HANGUP:I = 0x4

.field public static sMockInstance:Lcom/android/server/power/PowerManagerServiceStub;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 69
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v1, "star"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/power/PowerManagerServiceStub;->IS_SUB_SCREEN_DEVICE:Z

    .line 70
    new-instance v0, Lcom/android/server/power/PowerManagerServiceStub;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerServiceStub;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerManagerServiceStub;->sMockInstance:Lcom/android/server/power/PowerManagerServiceStub;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/android/server/power/PowerManagerServiceStub;
    .registers 2

    .line 73
    const-class v0, Lcom/android/server/power/PowerManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/PowerManagerServiceStub;

    .line 74
    .local v0, "instance":Lcom/android/server/power/PowerManagerServiceStub;
    if-nez v0, :cond_d

    sget-object v1, Lcom/android/server/power/PowerManagerServiceStub;->sMockInstance:Lcom/android/server/power/PowerManagerServiceStub;

    return-object v1

    .line 75
    :cond_d
    return-object v0
.end method

.method public static recordShutDownTime()V
    .registers 11

    .line 115
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "usrConfirmTime":J
    const/4 v2, 0x0

    .line 117
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 118
    .local v3, "buf":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "/cache/recovery/last_utime"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v4, "last_utime":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "PowerManagerServiceStub"

    if-nez v5, :cond_19

    .line 120
    const-string v5, "last_utime doesn\'t exist"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 125
    :cond_19
    :try_start_19
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    .local v5, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    if-eqz v7, :cond_77

    .line 127
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    move-wide v0, v7

    .line 128
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-gtz v7, :cond_3e

    .line 129
    const-string v7, "last_utime has invalid content"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 131
    return-void

    .line 138
    :cond_3e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 140
    new-instance v7, Ljava/io/File;

    const-string v8, "/cache/recovery/last_shutdowntime"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v7, "last_ShutdownTime":Ljava/io/File;
    new-instance v8, Ljava/io/BufferedWriter;

    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 142
    .local v8, "writer":Ljava/io/BufferedWriter;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 143
    invoke-virtual {v8, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->flush()V

    .line 145
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 146
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v9

    if-nez v9, :cond_76

    .line 147
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 148
    const-string/jumbo v9, "set last_shutdowntime readable failed"

    invoke-static {v6, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 153
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v7    # "last_ShutdownTime":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    :cond_76
    goto :goto_88

    .line 134
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_77
    const-string v7, "last_utime is blank"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_7f} :catch_80

    .line 136
    return-void

    .line 151
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_80
    move-exception v5

    .line 152
    .local v5, "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .end local v5    # "ex":Ljava/io/IOException;
    :goto_88
    return-void
.end method


# virtual methods
.method protected adjustDirtyIfNeededLocked(I)I
    .registers 2
    .param p1, "dirty"    # I

    .line 198
    return p1
.end method

.method public adjustScreenOffTimeoutIfNeededLocked(Lcom/android/server/power/PowerGroup;J)J
    .registers 4
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;
    .param p2, "timeout"    # J

    .line 218
    return-wide p2
.end method

.method protected adjustWakeLockDueToHangUpLocked(I)I
    .registers 2
    .param p1, "wakeLockSummary"    # I

    .line 202
    return p1
.end method

.method public clearRequestDimmingParamsLocked()V
    .registers 1

    .line 187
    return-void
.end method

.method public dumpLocal(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 156
    return-void
.end method

.method public exitHangupWakefulnessLocked()Z
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method protected finishWakefulnessChangeIfNeededLocked()V
    .registers 1

    .line 195
    return-void
.end method

.method public getDimDurationExtraTime(J)J
    .registers 5
    .param p1, "extraTimeMillis"    # J

    .line 237
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPartialWakeLockHoldByUid(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenWakeLockHoldByUid(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public hangUpNoUpdateLocked(Z)Z
    .registers 3
    .param p1, "enable"    # Z

    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/android/server/power/PowerManagerService;Ljava/util/ArrayList;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Landroid/util/SparseArray;)V
    .registers 7
    .param p1, "powerManagerService"    # Lcom/android/server/power/PowerManagerService;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/power/PowerManagerService;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/power/PowerGroup;",
            ">;)V"
        }
    .end annotation

    .line 85
    .local p2, "allWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    .local p6, "powerGroup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/power/PowerGroup;>;"
    return-void
.end method

.method public isBrightnessBoostForSoftLightInProgress()Z
    .registers 2

    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public isInHangUpState()Z
    .registers 2

    .line 214
    const/4 v0, 0x0

    return v0
.end method

.method public isPendingStopBrightnessBoost()Z
    .registers 2

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public isShutdownOrRebootPermitted(ZZLjava/lang/String;Z)Z
    .registers 6
    .param p1, "shutdown"    # Z
    .param p2, "confirm"    # Z
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "wait"    # Z

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public isSubScreenDeviceDisplayGroup(Lcom/android/server/power/PowerGroup;)Z
    .registers 4
    .param p1, "powerGroup"    # Lcom/android/server/power/PowerGroup;

    .line 226
    sget-boolean v0, Lcom/android/server/power/PowerManagerServiceStub;->IS_SUB_SCREEN_DEVICE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/android/server/power/PowerGroup;->getGroupId()I

    move-result v0

    if-ne v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public isSubScreenSuperPowerSaveModeOpen()Z
    .registers 2

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method isWakelockDisabledByPolicy(Lcom/android/server/power/PowerManagerService$WakeLock;)Z
    .registers 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public lockNowIfNeededLocked(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 276
    return-void
.end method

.method public notifyDisplayStateChangeEndLocked(Z)V
    .registers 2
    .param p1, "isFirstDisplay"    # Z

    .line 272
    return-void
.end method

.method public notifyDisplayStateChangeStartLocked(Z)V
    .registers 2
    .param p1, "isFirstDisplay"    # Z

    .line 270
    return-void
.end method

.method public notifyScreenOnUnBlocker(IJI)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "screenOnBlockStartRealTime"    # J
    .param p4, "delayMiles"    # I

    .line 268
    return-void
.end method

.method public notifyUserAttentionChanged(JI)V
    .registers 4
    .param p1, "startTimeStamp"    # J
    .param p3, "result"    # I

    .line 274
    return-void
.end method

.method public notifyWakefulnessChangedLocked(IIJI)V
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "wakefulness"    # I
    .param p3, "eventTime"    # J
    .param p5, "reason"    # I

    .line 263
    return-void
.end method

.method public notifyWakefulnessCompletedLocked(I)V
    .registers 2
    .param p1, "groupId"    # I

    .line 265
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method protected printWakeLockDetails(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V
    .registers 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "isAcquired"    # Z

    .line 106
    return-void
.end method

.method public reassignRebootReason(II)Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetBoostBrightnessIfNeededLocked()V
    .registers 1

    .line 248
    return-void
.end method

.method protected sendBroadcastRestoreBrightnessIfNeededLocked()V
    .registers 1

    .line 235
    return-void
.end method

.method public setBootPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 166
    return-void
.end method

.method public setPickUpSensorEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 250
    return-void
.end method

.method protected setProximityWakeLockDisabledStateLocked(Lcom/android/server/power/PowerManagerService$WakeLock;Z)V
    .registers 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "notAcquired"    # Z

    .line 104
    return-void
.end method

.method public setUidPartialWakeLockDisabledState(ILjava/lang/String;Z)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "disabled"    # Z

    .line 102
    return-void
.end method

.method public setWakeUpDetail(Ljava/lang/String;)V
    .registers 2
    .param p1, "detail"    # Ljava/lang/String;

    .line 256
    return-void
.end method

.method public shouldAlwaysWakeUpSecondaryDisplay()Z
    .registers 2

    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public shouldEnterHangupLocked()Z
    .registers 2

    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldOverrideUserActivityTimeoutLocked(J)J
    .registers 3
    .param p1, "timeout"    # J

    .line 210
    return-wide p1
.end method

.method public shouldRequestDisplayHangupLocked()Z
    .registers 2

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public updateAllPartialWakeLockDisableState()V
    .registers 1

    .line 100
    return-void
.end method

.method public updateLowPowerModeIfNeeded(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .registers 2
    .param p1, "displayPowerRequest"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 253
    return-void
.end method

.method protected updateNextDimTimeoutIfNeededLocked(JJ)J
    .registers 5
    .param p1, "groupNextTimeout"    # J
    .param p3, "lastUserActivityTime"    # J

    .line 206
    return-wide p1
.end method

.method public updateWakefulnessLocked(I)V
    .registers 2
    .param p1, "wakefulness"    # I

    .line 189
    return-void
.end method
