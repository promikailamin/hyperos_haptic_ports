.class public Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "VirtualDeviceManagerService.java"


# instance fields
.field public final mUsersInLockdown:Ljava/util/Set;

.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/content/Context;)V
    .registers 3

    .line 161
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    .line 162
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    .line 159
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized onStrongAuthRequiredChanged(I)V
    .registers 3

    monitor-enter p0

    .line 167
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_26

    .line 168
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_40

    .line 169
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onLockdownChanged(Z)V

    goto :goto_40

    :catchall_24
    move-exception p1

    goto :goto_42

    .line 171
    :cond_26
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_40

    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->mUsersInLockdown:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 172
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onLockdownChanged(Z)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_24

    .line 174
    :cond_40
    :goto_40
    monitor-exit p0

    return-void

    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_24

    throw p1
.end method
