.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# instance fields
.field public cancelReason:I

.field public canceled:Z

.field public final controller:Lcom/android/server/am/PendingIntentController;

.field public final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field public lastTag:Ljava/lang/String;

.field public lastTagPrefix:Ljava/lang/String;

.field public mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

.field public mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

.field public mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

.field public mAllowlistDuration:Landroid/util/ArrayMap;

.field public mCancelCallbacks:Landroid/os/RemoteCallbackList;

.field public final ref:Ljava/lang/ref/WeakReference;

.field public sent:Z

.field public stringName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public static synthetic $r8$lambda$n7a96RwVvewtpifhQ2aQt1qSbXo(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 5

    .line 287
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 118
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 119
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    .line 127
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 128
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 129
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 288
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 289
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 290
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 291
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static cancelReasonToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_33

    const/4 v0, 0x1

    if-eq p0, v0, :cond_30

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2a

    const/16 v0, 0x8

    if-eq p0, v0, :cond_27

    const/16 v0, 0x10

    if-eq p0, v0, :cond_24

    const/16 v0, 0x20

    if-eq p0, v0, :cond_21

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1e

    .line 799
    const-string p0, "UNKNOWN"

    return-object p0

    .line 798
    :cond_1e
    const-string p0, "ONE_SHOT_SENT"

    return-object p0

    .line 797
    :cond_21
    const-string p0, "SUPERSEDED"

    return-object p0

    .line 796
    :cond_24
    const-string p0, "HOSTING_ACTIVITY_DESTROYED"

    return-object p0

    .line 795
    :cond_27
    const-string p0, "OWNER_CANCELED"

    return-object p0

    .line 794
    :cond_2a
    const-string p0, "OWNER_FORCE_STOPPED"

    return-object p0

    .line 793
    :cond_2d
    const-string p0, "OWNER_UNINSTALLED"

    return-object p0

    .line 792
    :cond_30
    const-string p0, "USER_STOPPED"

    return-object p0

    .line 791
    :cond_33
    const-string p0, "NULL"

    return-object p0
.end method

.method public static getBackgroundStartPrivilegesAllowedByCaller(Landroid/app/ActivityOptions;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .registers 3

    if-nez p0, :cond_7

    .line 395
    invoke-static {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 397
    :cond_7
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesAllowedByCaller(Landroid/os/Bundle;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundStartPrivilegesAllowedByCaller(Landroid/os/Bundle;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .registers 5

    if-nez p0, :cond_7

    .line 404
    invoke-static {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 406
    :cond_7
    const-string v0, "android.pendingIntent.backgroundActivityAllowed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_19

    const/4 p1, 0x2

    if-eq p0, p1, :cond_16

    .line 417
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 409
    :cond_16
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 411
    :cond_19
    invoke-static {p1, p2}, Lcom/android/server/am/PendingIntentRecord;->getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultBackgroundStartPrivileges(ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;
    .registers 4

    if-eqz p0, :cond_21

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_7

    goto :goto_21

    :cond_7
    const-wide/32 v0, 0xe94e127

    if-eqz p1, :cond_15

    .line 440
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 438
    invoke-static {v0, v1, p1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    goto :goto_19

    .line 440
    :cond_15
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    :goto_19
    if-eqz p0, :cond_1e

    .line 443
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 445
    :cond_1e
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    return-object p0

    .line 436
    :cond_21
    :goto_21
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->ALLOW_FGS:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method


# virtual methods
.method public clearAllowBgActivityStarts(Landroid/os/IBinder;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_25

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 333
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz p0, :cond_25

    .line 334
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    if-eqz p0, :cond_25

    .line 335
    iget p1, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    if-nez p1, :cond_25

    const/4 p1, 0x1

    .line 337
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    :cond_25
    :goto_25
    return-void
.end method

.method public final completeFinalize()V
    .registers 4

    .line 779
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 781
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_26

    .line 782
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v1, p0}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_28

    .line 785
    :cond_26
    :goto_26
    monitor-exit v0

    return-void

    :goto_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_24

    throw p0
.end method

.method public final createSafeActivityOptionsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 738
    :cond_4
    invoke-static {p1}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 739
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    .line 740
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p0

    .line 741
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    .line 361
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8

    .line 804
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 805
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 806
    const-string v0, " featureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 807
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 808
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-nez v1, :cond_4e

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_69

    .line 810
    :cond_4e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 811
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    :cond_69
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v1, :cond_73

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_8f

    .line 814
    :cond_73
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 815
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    :cond_8f
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_ab

    .line 818
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    :cond_ab
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_b3

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_d9

    .line 822
    :cond_b3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 823
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 824
    const-string v0, " cancelReason="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    invoke-static {v0}, Lcom/android/server/am/PendingIntentRecord;->cancelReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    :cond_d9
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_13c

    .line 827
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    const-string v0, "allowlistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v0, v1

    .line 829
    :goto_e6
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_139

    if-eqz v0, :cond_f5

    .line 831
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    :cond_f5
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 834
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 837
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 838
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 839
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 840
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 842
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e6

    .line 844
    :cond_139
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 846
    :cond_13c
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_16d

    .line 847
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    :goto_149
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-ge v1, v0, :cond_16d

    .line 849
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_149

    :cond_16d
    return-void
.end method

.method public finalize()V
    .registers 3

    .line 769
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_17

    .line 770
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/PendingIntentRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_17

    :catchall_15
    move-exception v0

    goto :goto_1b

    .line 774
    :cond_17
    :goto_17
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1b
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 775
    throw v0
.end method

.method public getAllowlistDurationLocked(Landroid/os/IBinder;)Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;
    .registers 2

    .line 312
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    return-object p0
.end method

.method public getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;
    .registers 2

    .line 746
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 747
    invoke-static {p1}, Landroid/app/BackgroundStartPrivileges;->allowBackgroundActivityStarts(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 748
    :cond_d
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public final getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;
    .registers 5

    .line 754
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 755
    invoke-static {p2}, Landroid/app/BackgroundStartPrivileges;->allowBackgroundActivityStarts(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 759
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object p0, p0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 760
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    .line 761
    invoke-static {p3, p4, p0}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesAllowedByCaller(Landroid/os/Bundle;ILjava/lang/String;)Landroid/app/BackgroundStartPrivileges;

    move-result-object p0

    return-object p0

    .line 763
    :cond_1b
    sget-object p0, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 454
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 344
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 346
    :cond_b
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 22

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v13, p7

    .line 367
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    return-void
.end method

.method public sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 44

    move-object/from16 v12, p0

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p13

    .line 470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 471
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v13, 0x1

    if-eqz v0, :cond_16

    .line 473
    invoke-virtual {v0, v13}, Landroid/content/Intent;->setDefusable(Z)V

    :cond_16
    if-eqz v2, :cond_1b

    .line 474
    invoke-virtual {v2, v13}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 481
    :cond_1b
    iget-object v3, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 482
    :try_start_20
    iget-boolean v6, v12, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    const/4 v14, 0x4

    const/16 v15, -0x60

    const/4 v7, 0x2

    if-eqz v6, :cond_48

    .line 483
    iget v0, v12, Lcom/android/server/am/PendingIntentRecord;->cancelReason:I

    if-ne v0, v14, :cond_46

    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 484
    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    if-ne v0, v7, :cond_46

    .line 486
    const-string v0, "app.value_force_stop_cancelled_pi_sent_from_top_per_caller"

    invoke-static {v0, v5}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    .line 489
    const-string v0, "app.value_force_stop_cancelled_pi_sent_from_top_per_owner"

    iget v1, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    goto :goto_46

    :catchall_43
    move-exception v0

    goto/16 :goto_3d4

    .line 493
    :cond_46
    :goto_46
    monitor-exit v3

    return v15

    .line 496
    :cond_48
    iput-boolean v13, v12, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 497
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v6, v8

    const/16 v8, 0x40

    if-eqz v6, :cond_5a

    .line 498
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v6, v12, v13, v8}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;ZI)V

    .line 501
    :cond_5a
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v6, :cond_6a

    new-instance v6, Landroid/content/Intent;

    iget-object v9, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_6f

    :cond_6a
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 503
    :goto_6f
    iget-object v9, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v10, v9, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    const/high16 v11, 0x4000000

    and-int/2addr v11, v10

    if-eqz v11, :cond_7d

    .line 517
    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    :goto_7a
    move-object/from16 v19, v9

    goto :goto_a2

    :cond_7d
    if-eqz v0, :cond_8e

    .line 506
    invoke-virtual {v6, v0, v10}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v9

    and-int/2addr v9, v7

    if-nez v9, :cond_8b

    .line 508
    iget-object v9, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    goto :goto_90

    :cond_8b
    move-object/from16 v9, p4

    goto :goto_90

    .line 511
    :cond_8e
    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    :goto_90
    move/from16 v10, p11

    and-int/lit16 v10, v10, -0xc4

    and-int v11, p12, v10

    .line 515
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v16

    not-int v10, v10

    and-int v10, v16, v10

    or-int/2addr v10, v11

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_7a

    .line 522
    :goto_a2
    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v9, :cond_f7

    .line 524
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v11

    if-eqz v11, :cond_f0

    .line 526
    const-string v11, "ActivityManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Resetting option setPendingIntentCreatorBackgroundActivityStartMode("

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getPendingIntentCreatorBackgroundActivityStartMode()I

    move-result v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ") to SYSTEM_DEFINED from the options provided by the pending intent sender ("

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v14, v14, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ") because this option is meant for the pending intent creator"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 526
    invoke-static {v11, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v14, 0x131cf49a

    .line 535
    invoke-static {v14, v15, v5}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v11

    if-nez v11, :cond_e7

    .line 541
    invoke-virtual {v9, v10}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    goto :goto_f0

    .line 537
    :cond_e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "pendingIntentCreatorBackgroundActivityStartMode must not be set when sending a PendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_f0
    :goto_f0
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v11

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 548
    :cond_f7
    iget-object v11, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v11, v11, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;

    if-nez v11, :cond_104

    .line 550
    new-instance v11, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v11, v9, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;II)V

    :goto_102
    move-object v14, v11

    goto :goto_108

    .line 552
    :cond_104
    invoke-virtual {v11, v9, v4, v5}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;II)V

    goto :goto_102

    .line 555
    :goto_108
    iget-object v9, v12, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v9, :cond_113

    .line 556
    invoke-virtual {v9, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    goto :goto_114

    :cond_113
    const/4 v9, 0x0

    .line 559
    :goto_114
    iget-object v15, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v11, v15, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v11, v7, :cond_144

    iget-object v11, v15, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v11, :cond_144

    array-length v15, v11

    if-le v15, v13, :cond_144

    .line 563
    array-length v15, v11

    new-array v7, v15, [Landroid/content/Intent;

    .line 564
    array-length v8, v11

    move/from16 v20, v13

    new-array v13, v8, [Ljava/lang/String;

    move/from16 v21, v4

    .line 565
    array-length v4, v11

    invoke-static {v11, v10, v7, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 566
    iget-object v4, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v4, :cond_139

    .line 567
    array-length v11, v4

    invoke-static {v4, v10, v13, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_139
    add-int/lit8 v15, v15, -0x1

    .line 570
    aput-object v6, v7, v15

    add-int/lit8 v8, v8, -0x1

    .line 571
    aput-object v19, v13, v8

    move-object v15, v13

    move-object v13, v7

    goto :goto_14a

    :cond_144
    move/from16 v21, v4

    move/from16 v20, v13

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 574
    :goto_14a
    monitor-exit v3
    :try_end_14b
    .catchall {:try_start_20 .. :try_end_14b} :catchall_43

    .line 580
    iget-object v3, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    move/from16 v4, v20

    if-ne v3, v4, :cond_15a

    .line 581
    iget-object v3, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, v2, v5}, Landroid/app/ActivityManagerInternal;->enforceBroadcastOptionsPermissions(Landroid/os/Bundle;I)V

    .line 584
    :cond_15a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    const/4 v3, 0x5

    if-eqz v9, :cond_1db

    .line 589
    :try_start_161
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 590
    const-string/jumbo v7, "setPendingIntentAllowlistDuration,reason:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    iget-object v7, v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    if-nez v7, :cond_178

    const-string v7, ""

    goto :goto_178

    :catchall_175
    move-exception v0

    goto/16 :goto_3d0

    :cond_178
    :goto_178
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string v7, ",pendingintent:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    invoke-static {v4, v5}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 594
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_196

    .line 596
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b5

    .line 597
    :cond_196
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_1a4

    .line 598
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_1b5

    .line 599
    :cond_1a4
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_1b5

    .line 600
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    :cond_1b5
    :goto_1b5
    iget-object v7, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move-object v8, v6

    iget v6, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move v11, v3

    move-object v3, v7

    move-object/from16 v18, v8

    iget-wide v7, v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    iget v10, v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    iget v9, v9, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    .line 603
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 p4, v10

    move v10, v9

    move/from16 v9, p4

    move-object/from16 p4, v13

    const/16 v28, 0x0

    move v13, v11

    move-object v11, v4

    move/from16 v4, v21

    .line 602
    invoke-virtual/range {v3 .. v11}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V

    goto :goto_219

    :cond_1db
    move-object/from16 v18, v6

    move/from16 v28, v10

    move-object/from16 p4, v13

    move/from16 v4, v21

    move v13, v3

    .line 604
    iget-object v3, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v3, v13, :cond_219

    if-eqz v2, :cond_219

    .line 608
    new-instance v3, Landroid/app/BroadcastOptions;

    invoke-direct {v3, v2}, Landroid/app/BroadcastOptions;-><init>(Landroid/os/Bundle;)V

    .line 609
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_219

    .line 610
    iget-object v6, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    move-object v7, v3

    move-object v3, v6

    iget v6, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move-object v9, v7

    .line 611
    invoke-virtual {v9}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v7

    move-object v10, v9

    .line 612
    invoke-virtual {v10}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistType()I

    move-result v9

    move-object v11, v10

    .line 613
    invoke-virtual {v11}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReasonCode()I

    move-result v10

    .line 614
    invoke-virtual {v11}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistReason()Ljava/lang/String;

    move-result-object v11

    .line 610
    invoke-virtual/range {v3 .. v11}, Landroid/app/ActivityManagerInternal;->tempAllowlistForPendingIntent(IIIJIILjava/lang/String;)V

    :cond_219
    :goto_219
    if-eqz p6, :cond_21e

    const/16 v29, 0x1

    goto :goto_220

    :cond_21e
    move/from16 v29, v28

    :goto_220
    if-eqz p6, :cond_250

    if-nez p1, :cond_250

    .line 621
    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requested resultTo without an IApplicationThread!"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    :cond_250
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_25f

    .line 627
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v0

    :cond_25f
    move/from16 v23, v0

    .line 633
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_265
    .catchall {:try_start_161 .. :try_end_265} :catchall_175

    const/4 v6, 0x1

    if-eq v3, v6, :cond_354

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2cf

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2b2

    const/4 v4, 0x4

    if-eq v3, v4, :cond_279

    if-eq v3, v13, :cond_279

    :goto_273
    move-object/from16 v8, v18

    const/16 v1, -0x60

    goto/16 :goto_39f

    .line 691
    :cond_279
    :try_start_279
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 692
    invoke-virtual {v12, v0, v1, v2, v5}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;

    move-result-object v24

    .line 695
    iget-object v0, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v3, v13, :cond_28e

    const/16 v20, 0x1

    goto :goto_290

    :cond_28e
    move/from16 v20, v28

    :goto_290
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    move-object/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v22, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v24}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILandroid/app/BackgroundStartPrivileges;)Landroid/content/ComponentName;
    :try_end_29f
    .catch Ljava/lang/RuntimeException; {:try_start_279 .. :try_end_29f} :catch_2a0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_279 .. :try_end_29f} :catch_2a2
    .catchall {:try_start_279 .. :try_end_29f} :catchall_175

    goto :goto_273

    :catch_2a0
    move-exception v0

    goto :goto_2aa

    :catch_2a2
    move-object/from16 v8, v18

    const/16 v0, -0x60

    const/16 v1, -0x60

    goto/16 :goto_3b1

    .line 700
    :goto_2aa
    :try_start_2aa
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_273

    .line 663
    :cond_2b2
    iget-object v1, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v3, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    const/4 v4, -0x1

    move/from16 p12, p2

    move/from16 p11, v0

    move-object/from16 p7, v1

    move-object/from16 p9, v2

    move-object/from16 p10, v3

    move/from16 p8, v4

    move-object/from16 p13, v18

    invoke-virtual/range {p7 .. p13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_2ce
    .catchall {:try_start_2aa .. :try_end_2ce} :catchall_175

    goto :goto_273

    :cond_2cf
    move-object/from16 v9, v19

    move/from16 v19, v23

    .line 640
    :try_start_2d3
    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v2, :cond_30c

    array-length v2, v2

    const/4 v6, 0x1

    if-le v2, v6, :cond_30c

    .line 641
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    move/from16 v21, v4

    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    move v6, v5

    iget-object v5, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    .line 646
    invoke-virtual {v12, v1}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v13

    const/4 v11, 0x0

    move-object/from16 v8, p8

    move-object v0, v2

    move v1, v3

    move v3, v6

    move-object v9, v14

    move-object v7, v15

    move/from16 v10, v19

    move/from16 v2, v21

    move-object/from16 v6, p4

    .line 641
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0

    move-object v3, v12

    const/16 v25, -0x60

    :goto_305
    move v15, v0

    goto :goto_33c

    :catch_307
    move-exception v0

    move-object v3, v12

    const/16 v25, -0x60

    goto :goto_348

    .line 649
    :cond_30c
    iget-object v2, v12, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v3, v12, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v6, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const-string v17, "PendingIntentRecord"

    .line 655
    invoke-virtual {v12, v1}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/os/IBinder;)Landroid/app/BackgroundStartPrivileges;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v20
    :try_end_320
    .catch Ljava/lang/RuntimeException; {:try_start_2d3 .. :try_end_320} :catch_307
    .catchall {:try_start_2d3 .. :try_end_320} :catchall_175

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v8, v18

    const/16 v18, 0x0

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v15, v19

    const/16 v25, -0x60

    move-object/from16 v19, v12

    move/from16 v12, p10

    .line 649
    :try_start_333
    invoke-virtual/range {v2 .. v20}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_337
    .catch Ljava/lang/RuntimeException; {:try_start_333 .. :try_end_337} :catch_343
    .catchall {:try_start_333 .. :try_end_337} :catchall_175

    move-object/from16 v18, v8

    move-object/from16 v3, v19

    goto :goto_305

    :goto_33c
    move v0, v15

    move-object/from16 v8, v18

    move/from16 v1, v25

    goto/16 :goto_3b1

    :catch_343
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v3, v19

    .line 659
    :goto_348
    :try_start_348
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34f
    .catchall {:try_start_348 .. :try_end_34f} :catchall_175

    move-object/from16 v8, v18

    move/from16 v1, v25

    goto :goto_39f

    :cond_354
    move-object v3, v12

    move-object/from16 v9, v19

    move/from16 v19, v23

    const/16 v25, -0x60

    .line 668
    :try_start_35b
    iget-object v0, v3, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 669
    invoke-virtual {v3, v0, v1, v2, v5}, Lcom/android/server/am/PendingIntentRecord;->getBackgroundStartPrivilegesForActivitySender(Landroid/util/ArraySet;Landroid/os/IBinder;Landroid/os/Bundle;I)Landroid/app/BackgroundStartPrivileges;

    move-result-object v20

    .line 672
    invoke-virtual {v3, v2}, Lcom/android/server/am/PendingIntentRecord;->createSafeActivityOptionsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 675
    iget-object v0, v3, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, v3, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    move v8, v6

    move v6, v5

    iget v5, v3, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_373
    .catch Ljava/lang/RuntimeException; {:try_start_35b .. :try_end_373} :catch_3a4
    .catchall {:try_start_35b .. :try_end_373} :catchall_175

    if-eqz p6, :cond_37a

    move/from16 v17, v8

    :goto_377
    move-object/from16 v8, v18

    goto :goto_37d

    :cond_37a
    move/from16 v17, v28

    goto :goto_377

    :goto_37d
    const/16 v18, 0x0

    const/16 v21, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p1

    move/from16 v12, p2

    move-object/from16 v11, p6

    move-object/from16 v15, p7

    move-object/from16 v16, v2

    move-object v3, v7

    move-object v2, v0

    move v7, v4

    move-object v4, v1

    move/from16 v1, v25

    :try_start_392
    invoke-virtual/range {v2 .. v21}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/app/IApplicationThread;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;[I)I

    move-result v0
    :try_end_396
    .catch Ljava/lang/RuntimeException; {:try_start_392 .. :try_end_396} :catch_3a2
    .catchall {:try_start_392 .. :try_end_396} :catchall_175

    if-nez v0, :cond_39b

    move/from16 v10, v28

    goto :goto_39d

    :cond_39b
    move/from16 v10, v29

    :goto_39d
    move/from16 v29, v10

    :goto_39f
    move/from16 v0, v28

    goto :goto_3b1

    :catch_3a2
    move-exception v0

    goto :goto_3a9

    :catch_3a4
    move-exception v0

    move-object/from16 v8, v18

    move/from16 v1, v25

    .line 685
    :goto_3a9
    :try_start_3a9
    const-string v2, "ActivityManager"

    const-string v3, "Unable to send startActivity intent"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b0
    .catchall {:try_start_3a9 .. :try_end_3b0} :catchall_175

    goto :goto_39f

    :goto_3b1
    if-eqz v29, :cond_3cc

    if-eq v0, v1, :cond_3cc

    .line 709
    :try_start_3b5
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v12, p0

    iget-object v1, v12, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v9, p6

    move/from16 v16, v1

    invoke-interface/range {v9 .. v16}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_3cc
    .catch Landroid/os/RemoteException; {:try_start_3b5 .. :try_end_3cc} :catch_3cc
    .catchall {:try_start_3b5 .. :try_end_3cc} :catchall_175

    .line 715
    :catch_3cc
    :cond_3cc
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_3d0
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    throw v0

    .line 574
    :goto_3d4
    :try_start_3d4
    monitor-exit v3
    :try_end_3d5
    .catchall {:try_start_3d4 .. :try_end_3d5} :catchall_43

    throw v0
.end method

.method public sendWithResult(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 23

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v13, p8

    .line 381
    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public setAllowBgActivityStarts(Landroid/os/IBinder;I)V
    .registers 4

    if-nez p1, :cond_3

    goto :goto_1e

    :cond_3
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_c

    .line 318
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_c
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_15

    .line 321
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_15
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1e

    .line 324
    iget-object p0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setAllowlistDurationLocked(Landroid/os/IBinder;JIILjava/lang/String;)V
    .registers 15

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_21

    .line 297
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 298
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 300
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;-><init>(JIILjava/lang/String;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 302
    :cond_21
    iget-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz p2, :cond_32

    .line 303
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-gtz p1, :cond_32

    .line 305
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 308
    :cond_32
    :goto_32
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 856
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 859
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 860
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 862
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 863
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v2, :cond_3a

    const/16 v2, 0x2f

    .line 865
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 866
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 868
    :cond_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 869
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_a8

    .line 871
    const-string v1, " (allowlist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 872
    :goto_50
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_a3

    if-eqz v1, :cond_5f

    .line 874
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    :cond_5f
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;

    .line 877
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowlistDuration:Landroid/util/ArrayMap;

    .line 878
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 877
    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    iget-wide v3, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->duration:J

    invoke-static {v3, v4, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 881
    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reasonCode:I

    invoke-static {v4}, Landroid/os/PowerWhitelistManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 886
    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$TempAllowListDuration;->reason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 888
    :cond_a3
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a8
    const/16 v1, 0x7d

    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3

    .line 350
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    goto :goto_13

    .line 353
    :cond_5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 354
    iget-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p1

    if-gtz p1, :cond_13

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    :cond_13
    :goto_13
    return-void
.end method
