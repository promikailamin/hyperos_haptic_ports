.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;,
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field public static final FLAG_ACTIVITY_SENDER:I = 0x1

.field public static final FLAG_BROADCAST_SENDER:I = 0x2

.field public static final FLAG_SERVICE_SENDER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final controller:Lcom/android/server/am/PendingIntentController;

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowlistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I


# direct methods
.method public static synthetic $r8$lambda$0acvBWvihzGS4yw0LCNL-NJDvhU(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 5
    .param p1, "_controller"    # Lcom/android/server/am/PendingIntentController;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .line 234
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 74
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 75
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 76
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 235
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 236
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 237
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 238
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 239
    return-void
.end method

.method private completeFinalize()V
    .registers 5

    .line 576
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 578
    .local v1, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_23

    .line 579
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v2, p0}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 582
    .end local v1    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_23
    monitor-exit v0

    .line 583
    return-void

    .line 582
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public static isPendingIntentBalAllowedByCaller(Landroid/app/ActivityOptions;)Z
    .registers 2
    .param p0, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 326
    if-nez p0, :cond_4

    .line 327
    const/4 v0, 0x1

    return v0

    .line 329
    :cond_4
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/PendingIntentRecord;->isPendingIntentBalAllowedByCaller(Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private static isPendingIntentBalAllowedByCaller(Landroid/os/Bundle;)Z
    .registers 3
    .param p0, "options"    # Landroid/os/Bundle;

    .line 333
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 334
    return v0

    .line 336
    :cond_4
    const-string v1, "android.pendingIntent.backgroundActivityAllowed"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPendingIntentBalAllowedByPermission(Landroid/app/ActivityOptions;)Z
    .registers 2
    .param p0, "activityOptions"    # Landroid/app/ActivityOptions;

    .line 318
    if-nez p0, :cond_4

    .line 319
    const/4 v0, 0x0

    return v0

    .line 321
    :cond_4
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->isPendingIntentBackgroundActivityLaunchAllowedByPermission()Z

    move-result v0

    return v0
.end method


# virtual methods
.method clearAllowBgActivityStarts(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 272
    if-nez p1, :cond_3

    return-void

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 297
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 298
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 586
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 587
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    const-string v0, " featureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 589
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 590
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_6b

    .line 592
    :cond_50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 593
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    :cond_6b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_93

    .line 596
    :cond_77
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 597
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    :cond_93
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_af

    .line 600
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    :cond_af
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_b7

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_cf

    .line 604
    :cond_b7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 605
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 607
    :cond_cf
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_132

    .line 608
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 609
    const-string v0, "allowlistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_dc
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_12f

    .line 611
    if-eqz v0, :cond_eb

    .line 612
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 614
    :cond_eb
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 615
    .local v1, "entry":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 616
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 617
    iget-wide v2, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 618
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 620
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 621
    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v3}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 610
    .end local v1    # "entry":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    add-int/lit8 v0, v0, 0x1

    goto :goto_dc

    .line 625
    .end local v0    # "i":I
    :cond_12f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 627
    :cond_132
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_164

    .line 628
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 629
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_140
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_164

    .line 630
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 629
    add-int/lit8 v0, v0, 0x1

    goto :goto_140

    .line 634
    .end local v0    # "i":I
    :cond_164
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 566
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_14

    .line 567
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_19

    .line 571
    :cond_14
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 572
    nop

    .line 573
    return-void

    .line 571
    :catchall_19
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 572
    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 279
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 280
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 282
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 283
    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 21
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "allowlistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 303
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    .line 305
    return-void
.end method

.method public sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 59
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "allowlistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "flagsMask"    # I
    .param p11, "flagsValues"    # I
    .param p12, "options"    # Landroid/os/Bundle;

    .line 343
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p12

    const/4 v0, 0x1

    if-eqz v14, :cond_e

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 344
    :cond_e
    if-eqz v12, :cond_13

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 346
    :cond_13
    const/4 v1, 0x0

    .line 347
    .local v1, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    const/4 v2, 0x0

    .line 348
    .local v2, "finalIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 349
    .local v3, "allIntents":[Landroid/content/Intent;
    const/4 v4, 0x0

    .line 350
    .local v4, "allResolvedTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 351
    .local v5, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 352
    :try_start_1d
    iget-boolean v7, v15, Lcom/android/server/am/PendingIntentRecord;->canceled:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_4c6

    const/16 v11, -0x60

    if-eqz v7, :cond_2f

    .line 353
    :try_start_23
    monitor-exit v6
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_25

    return v11

    .line 417
    :catchall_25
    move-exception v0

    move-object/from16 v33, p3

    move/from16 v34, p10

    move/from16 v35, p11

    move-object v11, v15

    goto/16 :goto_4d0

    .line 356
    :cond_2f
    :try_start_2f
    iput-boolean v0, v15, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 357
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_4c6

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_3f

    .line 358
    :try_start_3a
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v7, v15, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_25

    .line 361
    :cond_3f
    :try_start_3f
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_4c6

    if-eqz v7, :cond_4f

    :try_start_45
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_25

    goto :goto_54

    :cond_4f
    :try_start_4f
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_4c6

    :goto_54
    move-object v10, v7

    .line 363
    .end local v2    # "finalIntent":Landroid/content/Intent;
    .local v10, "finalIntent":Landroid/content/Intent;
    :try_start_55
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_4ba

    const/high16 v7, 0x4000000

    and-int/2addr v2, v7

    const/4 v7, 0x0

    if-eqz v2, :cond_61

    move v2, v0

    goto :goto_62

    :cond_61
    move v2, v7

    .line 364
    .local v2, "immutable":Z
    :goto_62
    if-nez v2, :cond_bb

    .line 365
    if-eqz v14, :cond_86

    .line 366
    :try_start_66
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v10, v14, v8}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v8

    .line 367
    .local v8, "changes":I
    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_77

    .line 368
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_7b

    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v9, "resolvedType":Ljava/lang/String;
    goto :goto_79

    .line 367
    .end local v9    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_77
    move-object/from16 v9, p3

    .line 370
    .end local v8    # "changes":I
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v9    # "resolvedType":Ljava/lang/String;
    :goto_79
    move-object v8, v9

    goto :goto_8a

    .line 417
    .end local v2    # "immutable":Z
    .end local v9    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :catchall_7b
    move-exception v0

    move-object/from16 v33, p3

    move/from16 v34, p10

    move/from16 v35, p11

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_4d0

    .line 371
    .restart local v2    # "immutable":Z
    :cond_86
    :try_start_86
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_ae

    .line 373
    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    :goto_8a
    move/from16 v9, p10

    and-int/lit16 v9, v9, -0xc4

    .line 374
    .end local p10    # "flagsMask":I
    .local v9, "flagsMask":I
    and-int v16, p11, v9

    .line 375
    .end local p11    # "flagsValues":I
    .local v16, "flagsValues":I
    :try_start_90
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v17

    not-int v11, v9

    and-int v11, v17, v11

    or-int v11, v11, v16

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_9c
    .catchall {:try_start_90 .. :try_end_9c} :catchall_a3

    move-object/from16 v33, v8

    move/from16 v34, v9

    move/from16 v35, v16

    goto :goto_c7

    .line 417
    .end local v2    # "immutable":Z
    :catchall_a3
    move-exception v0

    move-object/from16 v33, v8

    move/from16 v34, v9

    move-object v2, v10

    move-object v11, v15

    move/from16 v35, v16

    goto/16 :goto_4d0

    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v9    # "flagsMask":I
    .end local v16    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_ae
    move-exception v0

    move/from16 v9, p10

    move-object/from16 v33, p3

    move/from16 v35, p11

    move/from16 v34, v9

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_4d0

    .line 377
    .restart local v2    # "immutable":Z
    :cond_bb
    move/from16 v9, p10

    :try_start_bd
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_4b0

    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    move/from16 v35, p11

    move-object/from16 v33, v8

    move/from16 v34, v9

    .line 382
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .local v33, "resolvedType":Ljava/lang/String;
    .local v34, "flagsMask":I
    .local v35, "flagsValues":I
    :goto_c7
    :try_start_c7
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v8
    :try_end_cb
    .catchall {:try_start_c7 .. :try_end_cb} :catchall_4ac

    .line 383
    .local v8, "opts":Landroid/app/ActivityOptions;
    if-eqz v8, :cond_da

    .line 384
    :try_start_cd
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_d5

    goto :goto_da

    .line 417
    .end local v2    # "immutable":Z
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :catchall_d5
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    goto/16 :goto_4d0

    .line 388
    .restart local v2    # "immutable":Z
    .restart local v8    # "opts":Landroid/app/ActivityOptions;
    :cond_da
    :goto_da
    :try_start_da
    invoke-static {}, Lcom/android/server/am/PendingIntentRecordStub;->get()Lcom/android/server/am/PendingIntentRecordStub;

    move-result-object v9

    iget-object v11, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-interface {v9, v11, v10}, Lcom/android/server/am/PendingIntentRecordStub;->preSendPendingIntentInner(Lcom/android/server/am/PendingIntentRecord$Key;Landroid/content/Intent;)V

    .line 391
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_e7
    .catchall {:try_start_da .. :try_end_e7} :catchall_4ac

    move-object v5, v9

    .line 392
    if-nez v5, :cond_f3

    .line 393
    :try_start_ea
    new-instance v9, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v9, v8}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V
    :try_end_ef
    .catchall {:try_start_ea .. :try_end_ef} :catchall_d5

    move-object v5, v9

    move-object/from16 v36, v5

    goto :goto_f8

    .line 395
    :cond_f3
    :try_start_f3
    invoke-virtual {v5, v8}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_4ac

    move-object/from16 v36, v5

    .line 398
    .end local v5    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v36, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :goto_f8
    :try_start_f8
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;
    :try_end_fa
    .catchall {:try_start_f8 .. :try_end_fa} :catchall_4a6

    if-eqz v5, :cond_10c

    .line 399
    :try_start_fc
    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :try_end_102
    .catchall {:try_start_fc .. :try_end_102} :catchall_105

    move-object v1, v5

    move-object v11, v1

    goto :goto_10d

    .line 417
    .end local v2    # "immutable":Z
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :catchall_105
    move-exception v0

    move-object v2, v10

    move-object v11, v15

    move-object/from16 v5, v36

    goto/16 :goto_4d0

    .line 398
    .restart local v2    # "immutable":Z
    .restart local v8    # "opts":Landroid/app/ActivityOptions;
    :cond_10c
    move-object v11, v1

    .line 402
    .end local v1    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v11, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :goto_10d
    :try_start_10d
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_111
    .catchall {:try_start_10d .. :try_end_111} :catchall_49c

    const/4 v5, 0x2

    if-ne v1, v5, :cond_164

    :try_start_114
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_164

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_164

    .line 406
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Landroid/content/Intent;

    move-object v3, v1

    .line 407
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    move-object v4, v1

    .line 408
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v5, v5

    invoke-static {v1, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v1, :cond_14f

    .line 410
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {v1, v7, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    :cond_14f
    array-length v1, v3

    sub-int/2addr v1, v0

    aput-object v10, v3, v1

    .line 414
    array-length v1, v4

    sub-int/2addr v1, v0

    aput-object v33, v4, v1
    :try_end_157
    .catchall {:try_start_114 .. :try_end_157} :catchall_15c

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    goto :goto_168

    .line 417
    .end local v2    # "immutable":Z
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :catchall_15c
    move-exception v0

    move-object v2, v10

    move-object v1, v11

    move-object v11, v15

    move-object/from16 v5, v36

    goto/16 :goto_4d0

    :cond_164
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    .end local v3    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "allResolvedTypes":[Ljava/lang/String;
    .local v37, "allIntents":[Landroid/content/Intent;
    .local v38, "allResolvedTypes":[Ljava/lang/String;
    :goto_168
    :try_start_168
    monitor-exit v6
    :try_end_169
    .catchall {:try_start_168 .. :try_end_169} :catchall_48e

    .line 420
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 421
    .local v9, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v39

    .line 422
    .local v39, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v40

    .line 424
    .local v40, "origId":J
    const/16 v42, 0x0

    .line 426
    .local v42, "res":I
    const/4 v1, 0x5

    if-eqz v11, :cond_1f7

    .line 427
    :try_start_17a
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 428
    .local v2, "tag":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "setPendingIntentAllowlistDuration,reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget-object v3, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    if-nez v3, :cond_18e

    const-string v3, ""

    goto :goto_190

    :cond_18e
    iget-object v3, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    :goto_190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v3, ",pendingintent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {v2, v9}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 432
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1ae

    .line 434
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1cd

    .line 435
    :cond_1ae
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1bc

    .line 436
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_1cd

    .line 437
    :cond_1bc
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1cd

    .line 438
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_1cd
    :goto_1cd
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-wide v5, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    iget v8, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    iget v7, v11, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 441
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 440
    move-object/from16 v16, v3

    move/from16 v17, v39

    move/from16 v18, v9

    move/from16 v19, v4

    move-wide/from16 v20, v5

    move/from16 v22, v8

    move/from16 v23, v7

    invoke-virtual/range {v16 .. v24}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
    :try_end_1ee
    .catchall {:try_start_17a .. :try_end_1ee} :catchall_1ef

    .end local v2    # "tag":Ljava/lang/StringBuilder;
    goto :goto_230

    .line 557
    :catchall_1ef
    move-exception v0

    move/from16 v21, v9

    move-object/from16 v23, v11

    move-object v11, v15

    goto/16 :goto_48a

    .line 442
    :cond_1f7
    :try_start_1f7
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_1fb
    .catchall {:try_start_1f7 .. :try_end_1fb} :catchall_484

    if-ne v2, v1, :cond_230

    if-eqz v12, :cond_230

    .line 446
    :try_start_1ff
    new-instance v2, Landroid/app/BroadcastOptions;

    invoke-direct {v2, v12}, Landroid/app/BroadcastOptions;-><init>(Landroid/os/Bundle;)V

    .line 447
    .local v2, "brOptions":Landroid/app/BroadcastOptions;
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_231

    .line 448
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 449
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v20

    .line 450
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v22

    .line 451
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v23

    .line 452
    invoke-virtual {v2}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReason()Ljava/lang/String;

    move-result-object v24

    .line 448
    move-object/from16 v16, v3

    move/from16 v17, v39

    move/from16 v18, v9

    move/from16 v19, v4

    invoke-virtual/range {v16 .. v24}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V
    :try_end_22f
    .catchall {:try_start_1ff .. :try_end_22f} :catchall_1ef

    goto :goto_231

    .line 442
    .end local v2    # "brOptions":Landroid/app/BroadcastOptions;
    :cond_230
    :goto_230
    nop

    .line 456
    :cond_231
    :goto_231
    if-eqz p5, :cond_235

    move v2, v0

    goto :goto_236

    :cond_235
    const/4 v2, 0x0

    :goto_236
    move/from16 v43, v2

    .line 457
    .local v43, "sendFinish":Z
    :try_start_238
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I
    :try_end_23c
    .catchall {:try_start_238 .. :try_end_23c} :catchall_484

    .line 458
    .local v2, "userId":I
    const/4 v3, -0x2

    if-ne v2, v3, :cond_24b

    .line 459
    :try_start_23f
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v3}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v3
    :try_end_247
    .catchall {:try_start_23f .. :try_end_247} :catchall_1ef

    move v2, v3

    move/from16 v44, v2

    goto :goto_24d

    .line 458
    :cond_24b
    move/from16 v44, v2

    .line 463
    .end local v2    # "userId":I
    .local v44, "userId":I
    :goto_24d
    :try_start_24d
    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_24f
    .catchall {:try_start_24d .. :try_end_24f} :catchall_484

    if-eq v2, v9, :cond_263

    :try_start_251
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 464
    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v2

    if-eqz v2, :cond_263

    .line 465
    invoke-static/range {p12 .. p12}, Lcom/android/server/am/PendingIntentRecord;->isPendingIntentBalAllowedByCaller(Landroid/os/Bundle;)Z

    move-result v2
    :try_end_25f
    .catchall {:try_start_251 .. :try_end_25f} :catchall_1ef

    if-eqz v2, :cond_263

    move v2, v0

    goto :goto_264

    :cond_263
    const/4 v2, 0x0

    :goto_264
    move/from16 v45, v2

    .line 470
    .local v45, "allowTrampoline":Z
    :try_start_266
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_26a
    .catchall {:try_start_266 .. :try_end_26a} :catchall_484

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_4d4

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .end local v9    # "callingUid":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v21, "callingUid":I
    .local v22, "finalIntent":Landroid/content/Intent;
    .local v23, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto/16 :goto_43f

    .line 527
    .end local v21    # "callingUid":I
    .end local v22    # "finalIntent":Landroid/content/Intent;
    .end local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v9    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :pswitch_276
    :try_start_276
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 528
    invoke-virtual {v2, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 529
    .local v2, "allowedByToken":Z
    if-eqz v2, :cond_281

    move-object/from16 v31, v13

    goto :goto_283

    :cond_281
    move-object/from16 v31, v3

    .line 532
    .local v31, "bgStartsToken":Landroid/os/IBinder;
    :goto_283
    invoke-static {}, Lcom/android/server/am/PendingIntentRecordStub;->get()Lcom/android/server/am/PendingIntentRecordStub;

    move-result-object v16

    move-object/from16 v17, v10

    move-object/from16 v18, v33

    move/from16 v19, v9

    move/from16 v20, v39

    move/from16 v21, v44

    invoke-interface/range {v16 .. v21}, Lcom/android/server/am/PendingIntentRecordStub;->checkRunningCompatibility(Landroid/content/Intent;Ljava/lang/String;III)Z

    move-result v3
    :try_end_295
    .catch Ljava/lang/RuntimeException; {:try_start_276 .. :try_end_295} :catch_2ee
    .catch Landroid/os/TransactionTooLargeException; {:try_start_276 .. :try_end_295} :catch_2e0
    .catchall {:try_start_276 .. :try_end_295} :catchall_1ef

    if-nez v3, :cond_29e

    .line 534
    nop

    .line 557
    invoke-static/range {v40 .. v41}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 534
    const/16 v32, -0x60

    return v32

    .line 537
    :cond_29e
    const/16 v32, -0x60

    :try_start_2a0
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v5, v1, :cond_2af

    move/from16 v26, v0

    goto :goto_2b1

    :cond_2af
    const/16 v26, 0x0

    :goto_2b1
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v5, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-nez v2, :cond_2c1

    if-eqz v45, :cond_2be

    goto :goto_2c1

    :cond_2be
    const/16 v30, 0x0

    goto :goto_2c3

    :cond_2c1
    :goto_2c1
    move/from16 v30, v0

    :goto_2c3
    move-object/from16 v22, v3

    move/from16 v23, v4

    move-object/from16 v24, v10

    move-object/from16 v25, v33

    move-object/from16 v27, v1

    move-object/from16 v28, v5

    move/from16 v29, v44

    invoke-virtual/range {v22 .. v31}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZLandroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_2d4
    .catch Ljava/lang/RuntimeException; {:try_start_2a0 .. :try_end_2d4} :catch_2de
    .catch Landroid/os/TransactionTooLargeException; {:try_start_2a0 .. :try_end_2d4} :catch_2dc
    .catchall {:try_start_2a0 .. :try_end_2d4} :catchall_1ef

    .line 545
    .end local v2    # "allowedByToken":Z
    .end local v31    # "bgStartsToken":Landroid/os/IBinder;
    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    goto/16 :goto_43f

    .line 543
    :catch_2dc
    move-exception v0

    goto :goto_2e3

    .line 541
    :catch_2de
    move-exception v0

    goto :goto_2f1

    .line 543
    :catch_2e0
    move-exception v0

    const/16 v32, -0x60

    .line 544
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    :goto_2e3
    const/16 v1, -0x60

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move v9, v1

    .end local v42    # "res":I
    .local v1, "res":I
    goto/16 :goto_441

    .line 541
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v1    # "res":I
    .restart local v42    # "res":I
    :catch_2ee
    move-exception v0

    const/16 v32, -0x60

    .line 542
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2f1
    :try_start_2f1
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_43f

    .line 500
    :pswitch_300
    const/16 v32, -0x60

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/16 v17, -0x1

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, p1

    move-object/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_323
    .catchall {:try_start_2f1 .. :try_end_323} :catchall_1ef

    .line 502
    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    goto/16 :goto_43f

    .line 477
    :pswitch_32b
    const/16 v32, -0x60

    :try_start_32d
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;
    :try_end_331
    .catch Ljava/lang/RuntimeException; {:try_start_32d .. :try_end_331} :catch_3c0
    .catchall {:try_start_32d .. :try_end_331} :catchall_3b7

    if-eqz v1, :cond_377

    :try_start_333
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_377

    .line 478
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 483
    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16
    :try_end_34f
    .catch Ljava/lang/RuntimeException; {:try_start_333 .. :try_end_34f} :catch_3c0
    .catchall {:try_start_333 .. :try_end_34f} :catchall_370

    .line 478
    move/from16 v3, v39

    move v4, v9

    move-object/from16 v7, v37

    move-object/from16 v8, v38

    move/from16 v21, v9

    .end local v9    # "callingUid":I
    .restart local v21    # "callingUid":I
    move-object/from16 v9, p7

    move-object/from16 v22, v10

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "finalIntent":Landroid/content/Intent;
    move-object/from16 v10, v36

    move-object/from16 v23, v11

    .end local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    move/from16 v11, v44

    move v12, v0

    move-object/from16 v13, p0

    move/from16 v14, v16

    :try_start_367
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_36b
    .catch Ljava/lang/RuntimeException; {:try_start_367 .. :try_end_36b} :catch_3b5
    .catchall {:try_start_367 .. :try_end_36b} :catchall_36c

    .end local v42    # "res":I
    .local v0, "res":I
    goto :goto_3b2

    .line 557
    .end local v0    # "res":I
    .end local v43    # "sendFinish":Z
    .end local v44    # "userId":I
    .end local v45    # "allowTrampoline":Z
    .restart local v42    # "res":I
    :catchall_36c
    move-exception v0

    move-object v11, v15

    goto/16 :goto_433

    .end local v21    # "callingUid":I
    .end local v22    # "finalIntent":Landroid/content/Intent;
    .end local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v9    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :catchall_370
    move-exception v0

    move/from16 v21, v9

    move-object/from16 v23, v11

    move-object v11, v15

    goto :goto_3be

    .line 477
    .restart local v43    # "sendFinish":Z
    .restart local v44    # "userId":I
    .restart local v45    # "allowTrampoline":Z
    :cond_377
    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .line 486
    .end local v9    # "callingUid":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v21    # "callingUid":I
    .restart local v22    # "finalIntent":Landroid/content/Intent;
    .restart local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :try_start_37d
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v0, 0x0

    const-string v16, "PendingIntentRecord"

    const/16 v17, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 492
    move-object/from16 v14, p4

    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19

    .line 486
    move/from16 v3, v39

    move/from16 v4, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v33

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, v36

    move/from16 v14, v44

    move-object v15, v0

    move-object/from16 v18, p0

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_3b2
    .catch Ljava/lang/RuntimeException; {:try_start_37d .. :try_end_3b2} :catch_3b5
    .catchall {:try_start_37d .. :try_end_3b2} :catchall_430

    .line 497
    .end local v42    # "res":I
    .restart local v0    # "res":I
    :goto_3b2
    move v9, v0

    goto/16 :goto_441

    .line 495
    .end local v0    # "res":I
    .restart local v42    # "res":I
    :catch_3b5
    move-exception v0

    goto :goto_3c7

    .line 557
    .end local v21    # "callingUid":I
    .end local v22    # "finalIntent":Landroid/content/Intent;
    .end local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local v43    # "sendFinish":Z
    .end local v44    # "userId":I
    .end local v45    # "allowTrampoline":Z
    .restart local v9    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :catchall_3b7
    move-exception v0

    move/from16 v21, v9

    move-object/from16 v23, v11

    move-object/from16 v11, p0

    .end local v9    # "callingUid":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v21    # "callingUid":I
    .restart local v22    # "finalIntent":Landroid/content/Intent;
    .restart local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :goto_3be
    goto/16 :goto_48a

    .line 495
    .end local v21    # "callingUid":I
    .end local v22    # "finalIntent":Landroid/content/Intent;
    .end local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v9    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v43    # "sendFinish":Z
    .restart local v44    # "userId":I
    .restart local v45    # "allowTrampoline":Z
    :catch_3c0
    move-exception v0

    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .line 496
    .end local v9    # "callingUid":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v21    # "callingUid":I
    .restart local v22    # "finalIntent":Landroid/content/Intent;
    .restart local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :goto_3c7
    :try_start_3c7
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3ce
    .catchall {:try_start_3c7 .. :try_end_3ce} :catchall_430

    .line 498
    nop

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_43f

    .line 505
    .end local v21    # "callingUid":I
    .end local v22    # "finalIntent":Landroid/content/Intent;
    .end local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v9    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :pswitch_3d1
    move/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    .end local v9    # "callingUid":I
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v21    # "callingUid":I
    .restart local v22    # "finalIntent":Landroid/content/Intent;
    .restart local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    move-object/from16 v15, p0

    :try_start_3d9
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 506
    move-object/from16 v14, p4

    invoke-virtual {v1, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v24, v1

    .line 507
    .local v24, "allowedByToken":Z
    if-eqz v24, :cond_3e8

    move-object/from16 v19, v14

    goto :goto_3ea

    :cond_3e8
    move-object/from16 v19, v3

    .line 511
    .local v19, "bgStartsToken":Landroid/os/IBinder;
    :goto_3ea
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz p5, :cond_3ff

    move/from16 v16, v0

    goto :goto_401

    :cond_3ff
    const/16 v16, 0x0

    :goto_401
    const/16 v17, 0x0

    if-nez v24, :cond_40b

    if-eqz v45, :cond_408

    goto :goto_40b

    :cond_408
    const/16 v18, 0x0

    goto :goto_40d

    :cond_40b
    :goto_40b
    move/from16 v18, v0

    :goto_40d
    const/16 v20, 0x0

    move/from16 v5, v21

    move/from16 v6, v39

    move-object/from16 v7, v22

    move-object/from16 v8, v33

    move-object/from16 v9, p5

    move/from16 v10, p1

    move-object/from16 v13, p6

    move-object/from16 v14, p12

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v44

    invoke-virtual/range {v1 .. v20}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I

    move-result v0
    :try_end_429
    .catch Ljava/lang/RuntimeException; {:try_start_3d9 .. :try_end_429} :catch_436
    .catchall {:try_start_3d9 .. :try_end_429} :catchall_430

    .line 517
    .local v0, "sent":I
    if-nez v0, :cond_42d

    .line 518
    const/16 v43, 0x0

    .line 522
    .end local v0    # "sent":I
    .end local v19    # "bgStartsToken":Landroid/os/IBinder;
    .end local v24    # "allowedByToken":Z
    :cond_42d
    move/from16 v9, v42

    goto :goto_441

    .line 557
    .end local v43    # "sendFinish":Z
    .end local v44    # "userId":I
    .end local v45    # "allowTrampoline":Z
    :catchall_430
    move-exception v0

    move-object/from16 v11, p0

    :goto_433
    move-object/from16 v10, v22

    goto :goto_48a

    .line 520
    .restart local v43    # "sendFinish":Z
    .restart local v44    # "userId":I
    .restart local v45    # "allowTrampoline":Z
    :catch_436
    move-exception v0

    .line 521
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_437
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43e
    .catchall {:try_start_437 .. :try_end_43e} :catchall_430

    .line 523
    nop

    .line 549
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_43f
    move/from16 v9, v42

    .end local v42    # "res":I
    .local v9, "res":I
    :goto_441
    if-eqz v43, :cond_47b

    const/16 v1, -0x60

    if-eq v9, v1, :cond_47b

    .line 551
    :try_start_447
    new-instance v2, Landroid/content/Intent;
    :try_end_449
    .catch Landroid/os/RemoteException; {:try_start_447 .. :try_end_449} :catch_475
    .catchall {:try_start_447 .. :try_end_449} :catchall_46d

    move-object/from16 v10, v22

    .end local v22    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :try_start_44b
    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_44e
    .catch Landroid/os/RemoteException; {:try_start_44b .. :try_end_44e} :catch_469
    .catchall {:try_start_44b .. :try_end_44e} :catchall_463

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p0

    :try_start_455
    iget-object v0, v11, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_45e
    .catch Landroid/os/RemoteException; {:try_start_455 .. :try_end_45e} :catch_461
    .catchall {:try_start_455 .. :try_end_45e} :catchall_45f

    .line 554
    goto :goto_47f

    .line 557
    .end local v43    # "sendFinish":Z
    .end local v44    # "userId":I
    .end local v45    # "allowTrampoline":Z
    :catchall_45f
    move-exception v0

    goto :goto_466

    .line 553
    .restart local v43    # "sendFinish":Z
    .restart local v44    # "userId":I
    .restart local v45    # "allowTrampoline":Z
    :catch_461
    move-exception v0

    goto :goto_47f

    .line 557
    .end local v43    # "sendFinish":Z
    .end local v44    # "userId":I
    .end local v45    # "allowTrampoline":Z
    :catchall_463
    move-exception v0

    move-object/from16 v11, p0

    :goto_466
    move/from16 v42, v9

    goto :goto_48a

    .line 553
    .restart local v43    # "sendFinish":Z
    .restart local v44    # "userId":I
    .restart local v45    # "allowTrampoline":Z
    :catch_469
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_47f

    .line 557
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v43    # "sendFinish":Z
    .end local v44    # "userId":I
    .end local v45    # "allowTrampoline":Z
    .restart local v22    # "finalIntent":Landroid/content/Intent;
    :catchall_46d
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v22

    move/from16 v42, v9

    .end local v22    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    goto :goto_48a

    .line 553
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "finalIntent":Landroid/content/Intent;
    .restart local v43    # "sendFinish":Z
    .restart local v44    # "userId":I
    .restart local v45    # "allowTrampoline":Z
    :catch_475
    move-exception v0

    move-object/from16 v11, p0

    move-object/from16 v10, v22

    .end local v22    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    goto :goto_47f

    .line 549
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v22    # "finalIntent":Landroid/content/Intent;
    :cond_47b
    move-object/from16 v11, p0

    move-object/from16 v10, v22

    .line 557
    .end local v22    # "finalIntent":Landroid/content/Intent;
    .end local v43    # "sendFinish":Z
    .end local v44    # "userId":I
    .end local v45    # "allowTrampoline":Z
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :goto_47f
    invoke-static/range {v40 .. v41}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    nop

    .line 560
    return v9

    .line 557
    .end local v21    # "callingUid":I
    .end local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v9, "callingUid":I
    .restart local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v42    # "res":I
    :catchall_484
    move-exception v0

    move/from16 v21, v9

    move-object/from16 v23, v11

    move-object v11, v15

    .end local v9    # "callingUid":I
    .end local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v21    # "callingUid":I
    .restart local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :goto_48a
    invoke-static/range {v40 .. v41}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 558
    throw v0

    .line 417
    .end local v21    # "callingUid":I
    .end local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local v39    # "callingPid":I
    .end local v40    # "origId":J
    .end local v42    # "res":I
    .restart local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :catchall_48e
    move-exception v0

    move-object/from16 v23, v11

    move-object v11, v15

    move-object v2, v10

    move-object/from16 v1, v23

    move-object/from16 v5, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    .end local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto :goto_4d0

    .end local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .end local v37    # "allIntents":[Landroid/content/Intent;
    .end local v38    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v3    # "allIntents":[Landroid/content/Intent;
    .restart local v4    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :catchall_49c
    move-exception v0

    move-object/from16 v23, v11

    move-object v11, v15

    move-object v2, v10

    move-object/from16 v1, v23

    move-object/from16 v5, v36

    .end local v11    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .restart local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    goto :goto_4d0

    .end local v23    # "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .local v1, "duration":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    :catchall_4a6
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    move-object/from16 v5, v36

    goto :goto_4d0

    .end local v36    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_4ac
    move-exception v0

    move-object v11, v15

    move-object v2, v10

    goto :goto_4d0

    .end local v33    # "resolvedType":Ljava/lang/String;
    .end local v34    # "flagsMask":I
    .end local v35    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_4b0
    move-exception v0

    move-object v11, v15

    move-object/from16 v33, p3

    move/from16 v35, p11

    move/from16 v34, v9

    move-object v2, v10

    goto :goto_4d0

    :catchall_4ba
    move-exception v0

    move/from16 v9, p10

    move-object v11, v15

    move-object/from16 v33, p3

    move/from16 v35, p11

    move/from16 v34, v9

    move-object v2, v10

    goto :goto_4d0

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .local v2, "finalIntent":Landroid/content/Intent;
    :catchall_4c6
    move-exception v0

    move/from16 v9, p10

    move-object v11, v15

    move-object/from16 v33, p3

    move/from16 v35, p11

    move/from16 v34, v9

    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .restart local v33    # "resolvedType":Ljava/lang/String;
    .restart local v34    # "flagsMask":I
    .restart local v35    # "flagsValues":I
    :goto_4d0
    :try_start_4d0
    monitor-exit v6
    :try_end_4d1
    .catchall {:try_start_4d0 .. :try_end_4d1} :catchall_4d2

    throw v0

    :catchall_4d2
    move-exception v0

    goto :goto_4d0

    :pswitch_data_4d4
    .packed-switch 0x1
        :pswitch_3d1
        :pswitch_32b
        :pswitch_300
        :pswitch_276
        :pswitch_276
    .end packed-switch
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 21
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "allowlistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 309
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method setAllowBgActivityStarts(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 259
    if-nez p1, :cond_3

    return-void

    .line 260
    :cond_3
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_c

    .line 261
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_c
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_15

    .line 264
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 266
    :cond_15
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1e

    .line 267
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_1e
    return-void
.end method

.method setAllowlistDurationLocked(Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 16
    .param p1, "allowlistToken"    # Landroid/os/IBinder;
    .param p2, "duration"    # J
    .param p4, "type"    # I
    .param p5, "reasonCode"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .line 243
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_22

    .line 244
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 245
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 247
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    move-object v2, v8

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;-><init>(JIILjava/lang/String;)V

    invoke-virtual {v0, p1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 249
    :cond_22
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_33

    .line 250
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_33

    .line 252
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 255
    :cond_33
    :goto_33
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 637
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 638
    return-object v0

    .line 640
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 641
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v2, :cond_3a

    .line 646
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :cond_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 650
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_a8

    .line 652
    const-string v1, " (allowlist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_50
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_a3

    .line 654
    if-eqz v1, :cond_5f

    .line 655
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_5f
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 658
    .local v2, "entry":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 659
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 658
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 662
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    .end local v2    # "entry":Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 669
    .end local v1    # "i":I
    :cond_a3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    :cond_a8
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 672
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 286
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    .line 287
    return-void

    .line 289
    :cond_5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 290
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_13

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 293
    :cond_13
    return-void
.end method
