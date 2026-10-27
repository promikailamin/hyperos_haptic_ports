.class final Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;
.super Ljava/lang/Object;
.source "PackageManagerNative.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageChangeObserverDeathRecipient"
.end annotation


# instance fields
.field private final mObserver:Landroid/content/pm/IPackageChangeObserver;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerNative;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerNative;Landroid/content/pm/IPackageChangeObserver;)V
    .registers 3
    .param p2, "observer"    # Landroid/content/pm/IPackageChangeObserver;

    .line 229
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->mObserver:Landroid/content/pm/IPackageChangeObserver;

    .line 231
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 235
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerNative;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerNative;->-$$Nest$fgetmPm(Lcom/android/server/pm/PackageManagerNative;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 236
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerNative;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerNative;->-$$Nest$fgetmPm(Lcom/android/server/pm/PackageManagerNative;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->mObserver:Landroid/content/pm/IPackageChangeObserver;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size of mPackageChangeObservers after removing dead observer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerNative$PackageChangeObserverDeathRecipient;->this$0:Lcom/android/server/pm/PackageManagerNative;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerNative;->-$$Nest$fgetmPm(Lcom/android/server/pm/PackageManagerNative;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackageChangeObservers:Ljava/util/ArrayList;

    .line 238
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_9 .. :try_end_3e} :catchall_3c

    throw v1
.end method
