.class final Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
.super Ljava/lang/Object;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PkgSettings"
.end annotation


# instance fields
.field private mCurrentRestrictionLevel:I

.field private mLastNotificationShownTime:[J

.field private mLastRestrictionLevel:I

.field private mLevelChangeTime:J

.field private mNotificationId:[I

.field private final mPackageName:Ljava/lang/String;

.field private mReason:I

.field private final mUid:I

.field final synthetic this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastNotificationShownTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;)I
    .registers 1

    iget p0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastRestrictionLevel(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLevelChangeTime(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmReason(Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/server/am/AppRestrictionController$RestrictionSettings;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 453
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 455
    iput p3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    iput v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 457
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 5

    .line 593
    new-instance v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;-><init>(Lcom/android/server/am/AppRestrictionController$RestrictionSettings;Ljava/lang/String;I)V

    .line 594
    .local v0, "newObj":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 595
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 596
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    iput-wide v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 597
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    iput v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 598
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-eqz v1, :cond_26

    .line 599
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 602
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-eqz v1, :cond_31

    .line 603
    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 605
    :cond_31
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;J)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "now"    # J

    .line 492
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmSettingsLock(Lcom/android/server/am/AppRestrictionController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 493
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    if-eqz v1, :cond_22

    .line 495
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 496
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    invoke-static {v1}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    :cond_22
    const-string v1, " levelChange="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 499
    iget-wide v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    sub-long/2addr v1, p2

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 500
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-eqz v1, :cond_62

    .line 501
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_32
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    array-length v3, v2

    if-ge v1, v3, :cond_62

    .line 502
    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5f

    .line 503
    const-string v2, " lastNoti("

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v2, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v2}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmNotificationHelper(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$NotificationHelper;

    invoke-static {v1}, Lcom/android/server/am/AppRestrictionController$NotificationHelper;->notificationTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 505
    const-string v2, ")="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    aget-wide v2, v2, v1

    sub-long/2addr v2, p2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 501
    :cond_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 510
    .end local v1    # "i":I
    :cond_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_7a

    .line 511
    const-string v0, " effectiveExemption="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->getBackgroundRestrictionExemptionReason(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 513
    return-void

    .line 510
    :catchall_7a
    move-exception v1

    :try_start_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "other"    # Ljava/lang/Object;

    .line 611
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 612
    return v0

    .line 614
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_50

    instance-of v2, p1, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    if-nez v2, :cond_c

    goto :goto_50

    .line 617
    :cond_c
    move-object v2, p1

    check-cast v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;

    .line 618
    .local v2, "otherSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    iget v3, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    iget v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    if-ne v3, v4, :cond_4e

    iget v3, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    iget v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    if-ne v3, v4, :cond_4e

    iget v3, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    iget v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    if-ne v3, v4, :cond_4e

    iget-wide v3, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    iget-wide v5, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4e

    iget v3, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    iget v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    if-ne v3, v4, :cond_4e

    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    .line 623
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 624
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, v2, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    iget-object v4, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 626
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v0, v1

    .line 618
    :goto_4f
    return v0

    .line 615
    .end local v2    # "otherSettings":Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;
    :cond_50
    :goto_50
    return v1
.end method

.method getCurrentRestrictionLevel()I
    .registers 2

    .line 525
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    return v0
.end method

.method getLastNotificationTime(I)J
    .registers 4
    .param p1, "notificationType"    # I

    .line 541
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-nez v0, :cond_7

    .line 542
    const-wide/16 v0, 0x0

    return-wide v0

    .line 544
    :cond_7
    aget-wide v0, v0, p1

    return-wide v0
.end method

.method getLastRestrictionLevel()I
    .registers 2

    .line 530
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    return v0
.end method

.method getNotificationId(I)I
    .registers 3
    .param p1, "notificationType"    # I

    .line 569
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-nez v0, :cond_6

    .line 570
    const/4 v0, 0x0

    return v0

    .line 572
    :cond_6
    aget v0, v0, p1

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .line 516
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getReason()I
    .registers 2

    .line 535
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    return v0
.end method

.method getUid()I
    .registers 2

    .line 520
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    return v0
.end method

.method setLastNotificationTime(IJ)V
    .registers 5
    .param p1, "notificationType"    # I
    .param p2, "timestamp"    # J

    .line 550
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->setLastNotificationTime(IJZ)V

    .line 551
    return-void
.end method

.method setLastNotificationTime(IJZ)V
    .registers 7
    .param p1, "notificationType"    # I
    .param p2, "timestamp"    # J
    .param p4, "persist"    # Z

    .line 557
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    if-nez v0, :cond_9

    .line 558
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    .line 561
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastNotificationShownTime:[J

    aput-wide p2, v0, p1

    .line 562
    if-eqz p4, :cond_28

    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmRestrictionSettingsXmlLoaded(Lcom/android/server/am/AppRestrictionController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 563
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->schedulePersistToXml(I)V

    .line 565
    :cond_28
    return-void
.end method

.method setLevelChangeTime(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 587
    iput-wide p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 588
    return-void
.end method

.method setNotificationId(II)V
    .registers 4
    .param p1, "notificationType"    # I
    .param p2, "notificationId"    # I

    .line 578
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    if-nez v0, :cond_9

    .line 579
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    .line 581
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mNotificationId:[I

    aput p2, v0, p1

    .line 582
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 476
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "RestrictionLevel{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    iget-object v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 483
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    invoke-static {v1}, Landroid/app/ActivityManager;->restrictionLevelToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 486
    iget v1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    invoke-static {v1}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method update(III)I
    .registers 8
    .param p1, "level"    # I
    .param p2, "reason"    # I
    .param p3, "subReason"    # I

    .line 461
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    if-eq p1, v0, :cond_33

    .line 462
    iput v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    .line 463
    iput p1, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mCurrentRestrictionLevel:I

    .line 464
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmInjector(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/AppRestrictionController$Injector;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLevelChangeTime:J

    .line 465
    const v0, 0xff00

    and-int/2addr v0, p2

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mReason:I

    .line 466
    iget-object v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->this$1:Lcom/android/server/am/AppRestrictionController$RestrictionSettings;

    iget-object v0, v0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {v0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/am/AppRestrictionController$BgHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 467
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 469
    :cond_33
    iget v0, p0, Lcom/android/server/am/AppRestrictionController$RestrictionSettings$PkgSettings;->mLastRestrictionLevel:I

    return v0
.end method
