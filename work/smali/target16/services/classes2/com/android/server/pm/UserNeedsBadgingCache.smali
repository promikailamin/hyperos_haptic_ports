.class public Lcom/android/server/pm/UserNeedsBadgingCache;
.super Ljava/lang/Object;
.source "UserNeedsBadgingCache.java"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mUserCache:Landroid/util/SparseBooleanArray;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mLock:Ljava/lang/Object;

    .line 32
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mUserCache:Landroid/util/SparseBooleanArray;

    .line 40
    iput-object p1, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method


# virtual methods
.method public delete(I)V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mUserCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 46
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public get(I)Z
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mUserCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_15

    .line 53
    iget-object p0, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mUserCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_40

    .line 55
    :cond_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_13

    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 60
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_3b

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_2d

    .line 65
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    .line 66
    :goto_2e
    iget-object v2, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_31
    iget-object p0, p0, Lcom/android/server/pm/UserNeedsBadgingCache;->mUserCache:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 68
    monitor-exit v2

    return v0

    :catchall_38
    move-exception p0

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    throw p0

    :catchall_3b
    move-exception p0

    .line 62
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    throw p0

    .line 55
    :goto_40
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_13

    throw p0
.end method
