.class public Lcom/android/server/power/feature/PowerManagerFlags;
.super Ljava/lang/Object;
.source "PowerManagerFlags.java"


# instance fields
.field public final mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mEnableAppWakelockDataSource:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mForceDisableWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mLockOnUnplug:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mPartialSleepWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mSeparateTimeoutsFlicker:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mWakeAdjacentDisplaysOnWakeupCall:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

.field public final mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.enable_early_screen_timeout_detector"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 40
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.improve_wakelock_latency"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 45
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.per_display_wake_by_touch"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 50
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.policy_reason_in_display_power_request"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 55
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.move_wsc_logging_to_notifier"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 58
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.lock_on_unplug"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mLockOnUnplug:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 62
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.wakelock_attribution_via_workchain"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 66
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.disable_frozen_process_wakelocks"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 70
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.force_disable_wakelocks"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mForceDisableWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 73
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.enable_app_wakelock_data_source"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEnableAppWakelockDataSource:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 77
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.partial_sleep_wakelocks"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPartialSleepWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 82
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.separate_timeouts_flicker"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mSeparateTimeoutsFlicker:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    .line 87
    new-instance v0, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    new-instance v1, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/display/feature/DisplayManagerFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "com.android.server.power.feature.flags.wake_adjacent_displays_on_wakeup_call"

    invoke-direct {v0, v2, v1, v3}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;Lcom/android/server/power/feature/PowerManagerFlags-IA;)V

    iput-object v0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakeAdjacentDisplaysOnWakeupCall:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 188
    const-string v0, "PowerManagerFlags:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mLockOnUnplug:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mForceDisableWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEnableAppWakelockDataSource:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPartialSleepWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mSeparateTimeoutsFlicker:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakeAdjacentDisplaysOnWakeupCall:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public improveWakelockLatency()Z
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mImproveWakelockLatency:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isAppWakelockDataSourceEnabled()Z
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEnableAppWakelockDataSource:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isDisableFrozenProcessWakelocksEnabled()Z
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mDisableFrozenProcessWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isEarlyScreenTimeoutDetectorEnabled()Z
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mEarlyScreenTimeoutDetectorFlagState:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isForceDisableWakelocksEnabled()Z
    .registers 1

    .line 158
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mForceDisableWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isLockOnUnplugEnabled()Z
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mLockOnUnplug:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isMoveWscLoggingToNotifierEnabled()Z
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mMoveWscLoggingToNotifier:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isPartialSleepWakelocksFeatureEnabled()Z
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPartialSleepWakelocks:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isPerDisplayWakeByTouchEnabled()Z
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPerDisplayWakeByTouch:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isPolicyReasonInDisplayPowerRequestEnabled()Z
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mPolicyReasonInDisplayPowerRequest:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isSeparateTimeoutsFlickerEnabled()Z
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mSeparateTimeoutsFlicker:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isWakeAdjacentDisplaysOnWakeupCallEnabled()Z
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakeAdjacentDisplaysOnWakeupCall:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method

.method public isWakelockAttributionViaWorkchainEnabled()Z
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/power/feature/PowerManagerFlags;->mWakelockAttributionViaWorkchain:Lcom/android/server/power/feature/PowerManagerFlags$FlagState;

    invoke-static {p0}, Lcom/android/server/power/feature/PowerManagerFlags$FlagState;->-$$Nest$misEnabled(Lcom/android/server/power/feature/PowerManagerFlags$FlagState;)Z

    move-result p0

    return p0
.end method
