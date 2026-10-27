.class public Lcom/android/server/wm/BackgroundLaunchProcessController;
.super Ljava/lang/Object;
.source "BackgroundLaunchProcessController.java"


# static fields
.field public static final CHECK_FOR_FGS_START:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;


# instance fields
.field public final mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

.field public mBackgroundStartPrivileges:Landroid/util/ArrayMap;

.field public mBalOptInBoundClientUids:Landroid/util/IntArray;

.field public final mUidHasActiveVisibleNotPinnedWindowPredicate:Ljava/util/function/IntPredicate;

.field public final mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 118
    new-instance v0, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    const/4 v3, 0x1

    const-wide/16 v4, 0x2710

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;-><init>(ZZZJ)V

    sput-object v0, Lcom/android/server/wm/BackgroundLaunchProcessController;->CHECK_FOR_FGS_START:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;Lcom/android/server/wm/BackgroundActivityStartCallback;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    .line 100
    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleNotPinnedWindowPredicate:Ljava/util/function/IntPredicate;

    .line 101
    iput-object p3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    return-void
.end method


# virtual methods
.method public addBoundClientUid(ILjava/lang/String;J)V
    .registers 8

    const-wide/32 v0, 0xf8fa52e

    .line 277
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 274
    invoke-static {v0, v1, p2, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_17

    const-wide/16 v0, 0x200

    and-long p2, p3, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_30

    .line 279
    :cond_17
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-nez p2, :cond_22

    .line 280
    new-instance p2, Landroid/util/IntArray;

    invoke-direct {p2}, Landroid/util/IntArray;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    .line 282
    :cond_22
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p2, p1}, Landroid/util/IntArray;->indexOf(I)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_30

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p0, p1}, Landroid/util/IntArray;->add(I)V

    :cond_30
    return-void
.end method

.method public addOrUpdateAllowBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .registers 5

    .line 298
    const-string v0, "entity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 299
    const-string v0, "backgroundStartPrivileges"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 300
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const-string v1, "backgroundStartPrivileges does not allow anything"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 302
    monitor-enter p0

    .line 303
    :try_start_14
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-nez v0, :cond_22

    .line 304
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    goto :goto_22

    :catchall_20
    move-exception p1

    goto :goto_29

    .line 306
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    monitor-exit p0

    return-void

    :goto_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_20

    throw p1
.end method

.method public areBackgroundActivityStartsAllowed(IILjava/lang/String;ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;ZZZJJJ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 15

    .line 132
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetcheckOtherExemptions(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_15

    if-eqz p8, :cond_15

    .line 133
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/4 p1, 0x6

    const-string p2, "process instrumenting with background activity starts privileges"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 138
    :cond_15
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetcheckOtherExemptions(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 139
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetisCheckingForFgsStart(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p1

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBackgroundStartAllowedByToken(ILjava/lang/String;Z)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result p2

    if-eqz p2, :cond_2a

    return-object p1

    .line 147
    :cond_2a
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetcheckVisibility(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_55

    if-eqz p4, :cond_55

    .line 148
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetisCheckingForFgsStart(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 149
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleWindowPredicate:Ljava/util/function/IntPredicate;

    goto :goto_3d

    .line 150
    :cond_3b
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mUidHasActiveVisibleNotPinnedWindowPredicate:Ljava/util/function/IntPredicate;

    .line 148
    :goto_3d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController;->isBoundByForegroundUid(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_55

    .line 151
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 p1, 0xd

    const-string p2, "process bound by foreground uid"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setVisibleOrForeground()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 155
    :cond_55
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetcheckOtherExemptions(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_6d

    if-eqz p6, :cond_6d

    if-eqz p4, :cond_6d

    .line 157
    new-instance p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const/16 p1, 0x9

    const-string p2, "process has activity in foreground task"

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->setVisibleOrForeground()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0

    .line 163
    :cond_6d
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetgracePeriod(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)J

    move-result-wide p0

    const-wide/16 p2, 0x0

    cmp-long p0, p0, p2

    if-lez p0, :cond_bd

    const/4 p0, 0x2

    if-ne p4, p0, :cond_bd

    cmp-long p0, p11, p9

    if-gtz p0, :cond_82

    cmp-long p0, p13, p9

    if-lez p0, :cond_bd

    .line 168
    :cond_82
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    .line 169
    invoke-static {p11, p12, p13, p14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    sub-long/2addr p0, p2

    .line 171
    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetgracePeriod(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)J

    move-result-wide p2

    cmp-long p2, p0, p2

    if-gez p2, :cond_bd

    .line 172
    new-instance p2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "within "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;->-$$Nest$fgetgracePeriod(Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "ms grace period ("

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms)"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    invoke-direct {p2, p1, p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    return-object p2

    .line 178
    :cond_bd
    sget-object p0, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    return-object p0
.end method

.method public canCloseSystemDialogsByToken(I)Z
    .registers 4

    .line 328
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 331
    :cond_6
    monitor-enter p0

    .line 332
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_20

    .line 333
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_20

    .line 336
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    .line 337
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->getOriginatingTokensThatAllowBal()Ljava/util/List;

    move-result-object v1

    .line 336
    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/BackgroundActivityStartCallback;->canCloseSystemDialogs(Ljava/util/Collection;I)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_1e
    move-exception p1

    goto :goto_22

    .line 334
    :cond_20
    :goto_20
    monitor-exit p0

    return v1

    .line 338
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_1e

    throw p1
.end method

.method public clearBalOptInBoundClientUids()V
    .registers 2

    .line 264
    monitor-enter p0

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-nez v0, :cond_f

    .line 266
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    goto :goto_12

    :catchall_d
    move-exception v0

    goto :goto_14

    .line 268
    :cond_f
    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 270
    :goto_12
    monitor-exit p0

    return-void

    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_d

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 342
    monitor-enter p0

    .line 343
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_41

    .line 344
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_41

    .line 345
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    const-string v0, "Background activity start tokens (token: originating token):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1b
    if-ltz v0, :cond_41

    .line 348
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 349
    const-string v1, "  - "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 351
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :catchall_3f
    move-exception p1

    goto :goto_62

    .line 355
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_60

    .line 356
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    const-string p2, "BoundClientUids:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget-object p2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {p2}, Landroid/util/IntArray;->toArray()[I

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    :cond_60
    monitor-exit p0

    return-void

    :goto_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_3f

    throw p1
.end method

.method public final getOriginatingTokensThatAllowBal()Ljava/util/List;
    .registers 5

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    :goto_b
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_26

    .line 241
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    .line 242
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackgroundStartPrivileges;

    .line 243
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 244
    invoke-virtual {v1}, Landroid/app/BackgroundStartPrivileges;->getOriginatingToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    move v1, v2

    goto :goto_b

    :cond_26
    return-object v0
.end method

.method public final isBackgroundStartAllowedByToken(ILjava/lang/String;Z)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .registers 6

    .line 188
    monitor-enter p0

    .line 189
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_d4

    .line 190
    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_d4

    :cond_d
    const/16 v0, 0xc

    if-eqz p3, :cond_3b

    .line 196
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_17
    add-int/lit8 p2, p1, -0x1

    if-lez p1, :cond_37

    .line 197
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/BackgroundStartPrivileges;

    invoke-virtual {p1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundFgsStarts()Z

    move-result p1

    if-eqz p1, :cond_35

    .line 198
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p2, "process allowed by token"

    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    monitor-exit p0

    return-object p1

    :catchall_32
    move-exception p1

    goto/16 :goto_d8

    :cond_35
    move p1, p2

    goto :goto_17

    .line 201
    :cond_37
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 203
    :cond_3b
    iget-object p3, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    if-nez p3, :cond_6a

    .line 205
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_45
    add-int/lit8 p2, p1, -0x1

    if-lez p1, :cond_66

    .line 206
    iget-object p1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/BackgroundStartPrivileges;

    .line 207
    invoke-virtual {p1}, Landroid/app/BackgroundStartPrivileges;->allowsBackgroundActivityStarts()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 208
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    const-string p2, "process allowed by token"

    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :cond_64
    move p1, p2

    goto :goto_45

    .line 212
    :cond_66
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 214
    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->getOriginatingTokensThatAllowBal()Ljava/util/List;

    move-result-object p3

    .line 215
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 217
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 222
    :cond_78
    iget-object v1, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    invoke-interface {v1, p3, p1, p2}, Lcom/android/server/wm/BackgroundActivityStartCallback;->isActivityStartAllowed(Ljava/util/Collection;ILjava/lang/String;)Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->allowed()Z

    move-result p2

    if-nez p2, :cond_88

    .line 225
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 227
    :cond_88
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_aa

    .line 228
    new-instance p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process allowed by callback (token ignored) tokens: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 230
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 232
    :cond_aa
    new-instance p2, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process allowed by callback (token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p1}, Lcom/android/server/wm/BackgroundActivityStartCallback$BackgroundActivityStartCallbackResult;->token()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") tokens: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0xe

    invoke-direct {p2, p3, p1}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;-><init>(ILjava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allowNewTask()Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p1

    monitor-exit p0

    return-object p1

    .line 192
    :cond_d4
    :goto_d4
    sget-object p1, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->BLOCK:Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    monitor-exit p0

    return-object p1

    .line 235
    :goto_d8
    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_1 .. :try_end_d9} :catchall_32

    throw p1
.end method

.method public final isBoundByForegroundUid(Ljava/util/function/IntPredicate;)Z
    .registers 5

    .line 251
    monitor-enter p0

    .line 252
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    if-eqz v0, :cond_20

    .line 253
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_20

    .line 254
    iget-object v2, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBalOptInBoundClientUids:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v2

    invoke-interface {p1, v2}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 255
    monitor-exit p0

    return v1

    :catchall_1b
    move-exception p1

    goto :goto_23

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 259
    :cond_20
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_1b

    throw p1
.end method

.method public removeAllowBackgroundStartPrivileges(Landroid/os/Binder;)V
    .registers 3

    .line 315
    const-string v0, "entity"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 316
    monitor-enter p0

    .line 317
    :try_start_6
    iget-object v0, p0, Lcom/android/server/wm/BackgroundLaunchProcessController;->mBackgroundStartPrivileges:Landroid/util/ArrayMap;

    if-eqz v0, :cond_10

    .line 318
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :catchall_e
    move-exception p1

    goto :goto_12

    .line 320
    :cond_10
    :goto_10
    monitor-exit p0

    return-void

    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_e

    throw p1
.end method
