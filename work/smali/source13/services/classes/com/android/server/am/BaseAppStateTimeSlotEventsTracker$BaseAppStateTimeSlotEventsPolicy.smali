.class Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;
.super Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;
.source "BaseAppStateTimeSlotEventsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseAppStateTimeSlotEventsPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;",
        ">",
        "Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final mDefaultNumOfEventsThreshold:I

.field private final mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final mKeyNumOfEventsThreshold:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field volatile mNumOfEventsThreshold:I

.field mTimeSlotSize:J


# direct methods
.method constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;Ljava/lang/String;ZLjava/lang/String;JLjava/lang/String;I)V
    .registers 12
    .param p1, "injector"    # Lcom/android/server/am/BaseAppStateTracker$Injector;
    .param p3, "keyTrackerEnabled"    # Ljava/lang/String;
    .param p4, "defaultTrackerEnabled"    # Z
    .param p5, "keyMaxTrackingDuration"    # Ljava/lang/String;
    .param p6, "defaultMaxTrackingDuration"    # J
    .param p8, "keyNumOfEventsThreshold"    # Ljava/lang/String;
    .param p9, "defaultNumOfEventsThreshold"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BaseAppStateTracker$Injector;",
            "TE;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    .local p2, "tracker":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;, "TE;"
    invoke-direct/range {p0 .. p7}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateEventsTracker;Ljava/lang/String;ZLjava/lang/String;J)V

    .line 184
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    .line 187
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    .line 199
    iput-object p8, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    .line 200
    iput p9, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mDefaultNumOfEventsThreshold:I

    .line 201
    iget-object v0, p2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mLock:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    .line 202
    return-void
.end method

.method static synthetic lambda$onMaxTrackingDurationChanged$0(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V
    .registers 1
    .param p0, "rec$"    # Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    .line 226
    invoke-static {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->-$$Nest$mtrimEvents(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V

    return-void
.end method

.method private updateNumOfEventsThreshold()V
    .registers 4

    .line 230
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mDefaultNumOfEventsThreshold:I

    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 234
    .local v0, "threshold":I
    iget v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    if-eq v0, v1, :cond_17

    .line 235
    iput v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    .line 236
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->onNumOfEventsThresholdChanged(I)V

    .line 238
    :cond_17
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 336
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 338
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 341
    iget v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mDefaultNumOfEventsThreshold:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 343
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    const-string v0, "event_time_slot_size="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->getTimeSlotSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 346
    return-void
.end method

.method getEventName()Ljava/lang/String;
    .registers 2

    .line 254
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    const-string v0, "event"

    return-object v0
.end method

.method getNumOfEventsThreshold()I
    .registers 2

    .line 241
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    iget v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mNumOfEventsThreshold:I

    return v0
.end method

.method public getProposedRestrictionLevel(Ljava/lang/String;II)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "maxLevel"    # I

    .line 311
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    .line 312
    invoke-virtual {v1, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1e

    const/16 v3, 0x28

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 313
    invoke-virtual {v1}, Lcom/android/server/am/AppRestrictionController;->isAutoRestrictAbusiveAppEnabled()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_1e

    .line 315
    :cond_1c
    move v1, v3

    goto :goto_1f

    .line 314
    :cond_1e
    :goto_1e
    move v1, v2

    .line 315
    :goto_1f
    nop

    .line 316
    .local v1, "level":I
    if-le p3, v3, :cond_24

    .line 317
    monitor-exit v0

    return v1

    .line 318
    :cond_24
    if-ne p3, v3, :cond_28

    .line 319
    monitor-exit v0

    return v2

    .line 321
    :cond_28
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 322
    .end local v1    # "level":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method getTimeSlotSize()J
    .registers 3

    .line 245
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    iget-wide v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    return-wide v0
.end method

.method onExcessiveEvents(Ljava/lang/String;IIJ)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "numOfEvents"    # I
    .param p4, "now"    # J

    .line 258
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    const/4 v0, 0x0

    .line 259
    .local v0, "notifyController":Z
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 261
    .local v2, "ts":Ljava/lang/Long;
    if-nez v2, :cond_18

    .line 267
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p1, p2, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 268
    const/4 v0, 0x1

    .line 270
    .end local v2    # "ts":Ljava/lang/Long;
    :cond_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_29

    .line 271
    if-eqz v0, :cond_28

    .line 272
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 v2, 0x600

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 276
    :cond_28
    return-void

    .line 270
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public onMaxTrackingDurationChanged(J)V
    .registers 6
    .param p1, "maxDuration"    # J

    .line 226
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 212
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mKeyNumOfEventsThreshold:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 213
    invoke-direct {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->updateNumOfEventsThreshold()V

    goto :goto_f

    .line 215
    :cond_c
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onPropertiesChanged(Ljava/lang/String;)V

    .line 217
    :goto_f
    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 206
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->onSystemReady()V

    .line 207
    invoke-direct {p0}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->updateNumOfEventsThreshold()V

    .line 208
    return-void
.end method

.method public onTrackerEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 221
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->onMonitorEnabled(Z)V

    .line 222
    return-void
.end method

.method onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 326
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    const/4 v0, 0x0

    .line 327
    .local v0, "notifyController":Z
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mExcessiveEventPkgs:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    move v2, v3

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    move v0, v2

    .line 329
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_1f

    .line 330
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 v2, 0x300

    const/4 v4, 0x3

    invoke-virtual {v1, p2, v2, v4, v3}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 332
    return-void

    .line 329
    :catchall_1f
    move-exception v2

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v2
.end method

.method setTimeSlotSize(J)V
    .registers 3
    .param p1, "size"    # J

    .line 250
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    iput-wide p1, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTimeSlotSize:J

    .line 251
    return-void
.end method

.method shouldExempt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 282
    .local p0, "this":Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;, "Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy<TE;>;"
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->isUidOnTop(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 287
    const/16 v0, 0xc

    return v0

    .line 289
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppRestrictionController;->hasForegroundServices(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 294
    const/16 v0, 0xe

    return v0

    .line 296
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/android/server/am/BaseAppStateTimeSlotEventsTracker$BaseAppStateTimeSlotEventsPolicy;->shouldExemptUid(I)I

    move-result v0

    .line 297
    .local v0, "reason":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 302
    return v0

    .line 304
    :cond_24
    return v1
.end method
