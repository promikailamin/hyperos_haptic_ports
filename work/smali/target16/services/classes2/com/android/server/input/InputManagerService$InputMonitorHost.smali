.class public final Lcom/android/server/input/InputManagerService$InputMonitorHost;
.super Landroid/view/IInputMonitorHost$Stub;
.source "InputManagerService.java"


# instance fields
.field public final mInputChannelToken:Landroid/os/IBinder;

.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V
    .registers 3

    .line 3556
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputMonitorHost$Stub;-><init>()V

    .line 3557
    iput-object p2, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannelToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 3567
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannelToken:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mremoveSpyWindowGestureMonitor(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V

    return-void
.end method

.method public pilferPointers()V
    .registers 2

    .line 3562
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$InputMonitorHost;->mInputChannelToken:Landroid/os/IBinder;

    invoke-static {v0, p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$mpilferPointersInternal(Lcom/android/server/input/InputManagerService;Landroid/os/IBinder;)V

    return-void
.end method
