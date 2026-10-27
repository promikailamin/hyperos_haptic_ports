.class final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;
.super Ljava/lang/Object;
.source "VirtualDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingTrampolineMap"
.end annotation


# static fields
.field private static final TRAMPOLINE_WAIT_MS:I = 0x1388


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 451
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    .line 452
    return-void
.end method


# virtual methods
.method synthetic lambda$put$0$com-android-server-companion-virtual-VirtualDeviceManagerService$PendingTrampolineMap(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 3
    .param p1, "pendingTrampoline"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 460
    iget-object v0, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    .line 461
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "creatorPackage":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 463
    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->remove(Ljava/lang/String;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 465
    :cond_b
    return-void
.end method

.method put(Ljava/lang/String;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pendingTrampoline"    # Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 456
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 457
    .local v0, "existing":Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 458
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, p2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 468
    return-object v0
.end method

.method remove(Ljava/lang/String;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 472
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    .line 473
    .local v0, "pendingTrampoline":Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 474
    return-object v0
.end method
