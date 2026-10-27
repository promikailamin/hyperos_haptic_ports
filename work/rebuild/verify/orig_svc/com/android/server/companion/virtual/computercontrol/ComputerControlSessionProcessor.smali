.class public Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;
.super Ljava/lang/Object;
.source "ComputerControlSessionProcessor.java"


# static fields
.field static final MAXIMUM_CONCURRENT_SESSIONS:I = 0x5


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandlerThreadLock:Ljava/lang/Object;

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPendingIntentFactory:Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$PendingIntentFactory;

.field public final mSessions:Landroid/util/ArraySet;

.field public final mVirtualDeviceFactory:Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$VirtualDeviceFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$VirtualDeviceFactory;)V
    .registers 4

    .line 90
    new-instance v0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;-><init>(Landroid/content/Context;Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$VirtualDeviceFactory;Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$PendingIntentFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$VirtualDeviceFactory;Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$PendingIntentFactory;)V
    .registers 5

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mSessions:Landroid/util/ArraySet;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mHandlerThreadLock:Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mVirtualDeviceFactory:Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$VirtualDeviceFactory;

    .line 99
    iput-object p3, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mPendingIntentFactory:Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$PendingIntentFactory;

    .line 100
    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 101
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public isComputerControlSession(I)Z
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mSessions:Landroid/util/ArraySet;

    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 198
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 199
    iget-object v3, p0, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionImpl;

    .line 200
    invoke-virtual {v3}, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionImpl;->getDeviceId()I

    move-result v3

    if-ne v3, p1, :cond_20

    const/4 p0, 0x1

    .line 201
    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    goto :goto_25

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 204
    :cond_23
    monitor-exit v0

    return v1

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_1e

    throw p0
.end method
