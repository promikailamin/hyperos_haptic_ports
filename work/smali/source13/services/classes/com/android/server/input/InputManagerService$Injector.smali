.class Lcom/android/server/input/InputManagerService$Injector;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    .line 408
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    .line 409
    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .registers 2

    .line 412
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getLooper()Landroid/os/Looper;
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method getNativeService(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;
    .registers 5
    .param p1, "service"    # Lcom/android/server/input/InputManagerService;

    .line 420
    new-instance v0, Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/input/NativeInputManagerService$NativeImpl;-><init>(Lcom/android/server/input/InputManagerService;Landroid/content/Context;Landroid/os/MessageQueue;)V

    return-object v0
.end method

.method registerLocalService(Landroid/hardware/input/InputManagerInternal;)V
    .registers 3
    .param p1, "localService"    # Landroid/hardware/input/InputManagerInternal;

    .line 424
    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 425
    return-void
.end method
