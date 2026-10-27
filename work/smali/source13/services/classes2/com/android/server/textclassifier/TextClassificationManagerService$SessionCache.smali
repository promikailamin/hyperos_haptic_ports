.class final Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SessionCache"
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x64


# instance fields
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeathRecipients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Landroid/os/IBinder$DeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "lock"    # Ljava/lang/Object;

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    .line 683
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    .line 689
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    .line 690
    return-void
.end method


# virtual methods
.method get(Landroid/view/textclassifier/TextClassificationSessionId;)Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;
    .registers 4
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 709
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_6
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    monitor-exit v0

    return-object v1

    .line 712
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1
.end method

.method synthetic lambda$put$0$com-android-server-textclassifier-TextClassificationManagerService$SessionCache(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 2
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 698
    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->remove(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method put(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassificationContext;)V
    .registers 7
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;
    .param p2, "textClassificationContext"    # Landroid/view/textclassifier/TextClassificationContext;

    .line 694
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 695
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;

    invoke-direct {v2, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService$StrippedTextClassificationContext;-><init>(Landroid/view/textclassifier/TextClassificationContext;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_2a

    .line 698
    :try_start_d
    new-instance v1, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 699
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 700
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_20
    .catchall {:try_start_d .. :try_end_1f} :catchall_2a

    .line 703
    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    goto :goto_28

    .line 701
    :catch_20
    move-exception v1

    .line 702
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_21
    const-string v2, "TextClassificationManagerService"

    const-string v3, "SessionCache: Failed to link to death"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_28
    monitor-exit v0

    .line 705
    return-void

    .line 704
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method remove(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 6
    .param p1, "sessionId"    # Landroid/view/textclassifier/TextClassificationSessionId;

    .line 716
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_6
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    .line 719
    .local v1, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    if-eqz v1, :cond_18

    .line 720
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationSessionId;->getToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 722
    :cond_18
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mDeathRecipients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    nop

    .end local v1    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    monitor-exit v0

    .line 725
    return-void

    .line 724
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw v1
.end method

.method size()I
    .registers 3

    .line 728
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$SessionCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 730
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
