.class public Lmiui/mqsas/sdk/ApplicationInfoStorage;
.super Ljava/lang/Object;
.source "ApplicationInfoStorage.java"


# static fields
.field public static blacklist sInstance:Lmiui/mqsas/sdk/ApplicationInfoStorage;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mIsSystemApp:Z


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lmiui/mqsas/sdk/ApplicationInfoStorage;
    .registers 2

    const-class v0, Lmiui/mqsas/sdk/ApplicationInfoStorage;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Lmiui/mqsas/sdk/ApplicationInfoStorage;->sInstance:Lmiui/mqsas/sdk/ApplicationInfoStorage;

    if-nez v1, :cond_e

    .line 26
    new-instance v1, Lmiui/mqsas/sdk/ApplicationInfoStorage;

    invoke-direct {v1}, Lmiui/mqsas/sdk/ApplicationInfoStorage;-><init>()V

    sput-object v1, Lmiui/mqsas/sdk/ApplicationInfoStorage;->sInstance:Lmiui/mqsas/sdk/ApplicationInfoStorage;

    .line 28
    :cond_e
    sget-object v1, Lmiui/mqsas/sdk/ApplicationInfoStorage;->sInstance:Lmiui/mqsas/sdk/ApplicationInfoStorage;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 24
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public blacklist getIsSystem()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lmiui/mqsas/sdk/ApplicationInfoStorage;->mIsSystemApp:Z

    return v0
.end method

.method public blacklist init(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    iput-object p1, p0, Lmiui/mqsas/sdk/ApplicationInfoStorage;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 19
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-lez v1, :cond_e

    .line 20
    iput-boolean v2, p0, Lmiui/mqsas/sdk/ApplicationInfoStorage;->mIsSystemApp:Z

    .line 22
    :cond_e
    return-void
.end method
