.class Lcom/android/server/input/InputManagerService$Injector;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIoLooper:Landroid/os/Looper;

.field public final mLooper:Landroid/os/Looper;

.field public final mUEventManager:Lcom/android/server/input/UEventManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/android/server/input/UEventManager;)V
    .registers 5

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 503
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    .line 504
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    .line 505
    iput-object p3, p0, Lcom/android/server/input/InputManagerService$Injector;->mIoLooper:Landroid/os/Looper;

    .line 506
    iput-object p4, p0, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/UEventManager;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1

    .line 510
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getIoLooper()Landroid/os/Looper;
    .registers 1

    .line 518
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Injector;->mIoLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public getKeyboardBacklightController(Lcom/android/server/input/NativeInputManagerService;)Lcom/android/server/input/InputManagerService$KeyboardBacklightControllerInterface;
    .registers 4

    .line 535
    new-instance v0, Lcom/android/server/input/KeyboardBacklightController;

    iget-object v1, p0, Lcom/android/server/input/InputManagerService$Injector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p1, p0}, Lcom/android/server/input/KeyboardBacklightController;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Looper;)V

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 1

    .line 514
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public getNativeService(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;
    .registers 3

    .line 526
    new-instance v0, Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Injector;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/android/server/input/NativeInputManagerService$NativeImpl;-><init>(Lcom/android/server/input/InputManagerService;Landroid/os/MessageQueue;)V

    return-object v0
.end method

.method public getUEventManager()Lcom/android/server/input/UEventManager;
    .registers 1

    .line 522
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$Injector;->mUEventManager:Lcom/android/server/input/UEventManager;

    return-object p0
.end method

.method public registerLocalService(Lcom/android/server/input/InputManagerInternal;)V
    .registers 2

    .line 530
    const-class p0, Lcom/android/server/input/InputManagerInternal;

    invoke-static {p0, p1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
