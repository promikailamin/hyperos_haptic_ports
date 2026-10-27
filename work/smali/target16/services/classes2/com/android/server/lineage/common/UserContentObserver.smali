.class public abstract Lcom/android/server/lineage/common/UserContentObserver;
.super Landroid/database/ContentObserver;
.source "UserContentObserver.java"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mUpdateRunnable:Ljava/lang/Runnable;

.field public mUserSwitchObserver:Landroid/app/IUserSwitchObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/lineage/common/UserContentObserver;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/common/UserContentObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUpdateRunnable(Lcom/android/server/lineage/common/UserContentObserver;)Ljava/lang/Runnable;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/common/UserContentObserver;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    .line 61
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 35
    new-instance v0, Lcom/android/server/lineage/common/UserContentObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/lineage/common/UserContentObserver$1;-><init>(Lcom/android/server/lineage/common/UserContentObserver;)V

    iput-object v0, p0, Lcom/android/server/lineage/common/UserContentObserver;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    .line 62
    iput-object p1, p0, Lcom/android/server/lineage/common/UserContentObserver;->mHandler:Landroid/os/Handler;

    .line 63
    new-instance p1, Lcom/android/server/lineage/common/UserContentObserver$2;

    invoke-direct {p1, p0}, Lcom/android/server/lineage/common/UserContentObserver$2;-><init>(Lcom/android/server/lineage/common/UserContentObserver;)V

    iput-object p1, p0, Lcom/android/server/lineage/common/UserContentObserver;->mUpdateRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public observe()V
    .registers 3

    .line 73
    const-string v0, "UserContentObserver"

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/lineage/common/UserContentObserver;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    invoke-interface {v1, p0, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 75
    const-string v1, "Unable to register user switch observer!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/android/server/lineage/common/UserContentObserver;->update()V

    return-void
.end method

.method public abstract update()V
.end method
