.class Lcom/android/server/wm/KeyguardDisableHandler;
.super Ljava/lang/Object;
.source "KeyguardDisableHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardDisableHandler$Injector;
    }
.end annotation


# static fields
.field private static final FACTORY_BUILD_SIGN:Ljava/lang/String; = "1"

.field private static final IS_FACTORY_BUILD:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

.field private final mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

.field private mCurrentUser:I

.field private mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

.field private final mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    const-string/jumbo v0, "ro.boot.factorybuild"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/KeyguardDisableHandler;->IS_FACTORY_BUILD:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V
    .registers 6
    .param p1, "injector"    # Lcom/android/server/wm/KeyguardDisableHandler$Injector;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 125
    new-instance v0, Lcom/android/server/wm/KeyguardDisableHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/KeyguardDisableHandler$1;-><init>(Lcom/android/server/wm/KeyguardDisableHandler;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCallback:Lcom/android/server/utils/UserTokenWatcher$Callback;

    .line 56
    iput-object p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    .line 57
    new-instance v1, Lcom/android/server/utils/UserTokenWatcher;

    const-string v2, "WindowManager"

    invoke-direct {v1, v0, p2, v2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 58
    new-instance v1, Lcom/android/server/utils/UserTokenWatcher;

    invoke-direct {v1, v0, p2, v2}, Lcom/android/server/utils/UserTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher$Callback;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 59
    return-void
.end method

.method static create(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;Landroid/os/Handler;)Lcom/android/server/wm/KeyguardDisableHandler;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "policy"    # Lcom/android/server/policy/WindowManagerPolicy;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 139
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 140
    .local v0, "userManager":Lcom/android/server/pm/UserManagerInternal;
    new-instance v1, Lcom/android/server/wm/KeyguardDisableHandler;

    new-instance v2, Lcom/android/server/wm/KeyguardDisableHandler$2;

    invoke-direct {v2, p1, v0}, Lcom/android/server/wm/KeyguardDisableHandler$2;-><init>(Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/pm/UserManagerInternal;)V

    invoke-direct {v1, v2, p2}, Lcom/android/server/wm/KeyguardDisableHandler;-><init>(Lcom/android/server/wm/KeyguardDisableHandler$Injector;Landroid/os/Handler;)V

    return-object v1
.end method

.method private shouldKeyguardBeEnabled(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->dpmRequiresPassword(I)Z

    move-result v0

    .line 112
    .local v0, "dpmRequiresPassword":Z
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    iget v2, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    invoke-interface {v1, v2}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->isKeyguardSecure(I)Z

    move-result v1

    .line 114
    .local v1, "keyguardSecure":Z
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_18

    if-nez v1, :cond_18

    move v4, v3

    goto :goto_19

    :cond_18
    move v4, v2

    .line 117
    .local v4, "allowedFromApps":Z
    :goto_19
    xor-int/lit8 v5, v0, 0x1

    .line 119
    .local v5, "allowedFromSystem":Z
    if-eqz v4, :cond_25

    iget-object v6, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    invoke-virtual {v6, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v6

    if-nez v6, :cond_2f

    :cond_25
    if-eqz v5, :cond_31

    iget-object v6, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    .line 120
    invoke-virtual {v6, p1}, Lcom/android/server/utils/UserTokenWatcher;->isAcquired(I)Z

    move-result v6

    if-eqz v6, :cond_31

    :cond_2f
    move v6, v3

    goto :goto_32

    :cond_31
    move v6, v2

    .line 121
    .local v6, "shouldBeDisabled":Z
    :goto_32
    if-nez v6, :cond_35

    move v2, v3

    :cond_35
    return v2
.end method

.method private updateKeyguardEnabledLocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 75
    iget v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    if-eq v0, p1, :cond_7

    const/4 v1, -0x1

    if-ne p1, v1, :cond_10

    .line 76
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardDisableHandler;->shouldKeyguardBeEnabled(I)Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->enableKeyguard(Z)V

    .line 78
    :cond_10
    return-void
.end method

.method private watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I

    .line 91
    sget-object v0, Lcom/android/server/wm/KeyguardDisableHandler;->IS_FACTORY_BUILD:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "WindowManager"

    if-nez v1, :cond_1b

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1b

    .line 105
    :cond_13
    const-string v0, "Factory build"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object v0

    .line 92
    :cond_1b
    :goto_1b
    const-string v0, "Not factory build"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {p2}, Landroid/os/Process;->isApplicationUid(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mAppTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object v0

    .line 95
    :cond_29
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_34

    instance-of v0, p1, Lcom/android/server/wm/LockTaskController$LockTaskToken;

    if-eqz v0, :cond_34

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mSystemTokenWatcher:Lcom/android/server/utils/UserTokenWatcher;

    return-object v0

    .line 102
    :cond_34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only apps can use the KeyguardLock API"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;II)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 81
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object v0

    .line 82
    .local v0, "watcherForCaller":Lcom/android/server/utils/UserTokenWatcher;
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {v1, p4}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/utils/UserTokenWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 83
    return-void
.end method

.method reenableKeyguard(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardDisableHandler;->watcherForCallingUid(Landroid/os/IBinder;I)Lcom/android/server/utils/UserTokenWatcher;

    move-result-object v0

    .line 87
    .local v0, "watcherForCaller":Lcom/android/server/utils/UserTokenWatcher;
    iget-object v1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mInjector:Lcom/android/server/wm/KeyguardDisableHandler$Injector;

    invoke-interface {v1, p3}, Lcom/android/server/wm/KeyguardDisableHandler$Injector;->getProfileParentId(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/utils/UserTokenWatcher;->release(Landroid/os/IBinder;I)V

    .line 88
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 3
    .param p1, "user"    # I

    .line 62
    monitor-enter p0

    .line 63
    :try_start_1
    iput p1, p0, Lcom/android/server/wm/KeyguardDisableHandler;->mCurrentUser:I

    .line 64
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 65
    monitor-exit p0

    .line 66
    return-void

    .line 65
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method updateKeyguardEnabled(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 69
    monitor-enter p0

    .line 70
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabledLocked(I)V

    .line 71
    monitor-exit p0

    .line 72
    return-void

    .line 71
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw v0
.end method
