.class public Lcom/android/server/audio/AudioService$4;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 1376
    iput-object p1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    if-eqz p1, :cond_3

    return-void

    .line 1388
    :cond_3
    iget-object p1, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDisplayManager(Lcom/android/server/audio/AudioService;)Landroid/hardware/display/DisplayManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_27

    .line 1390
    iget-object p0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorRotation(Lcom/android/server/audio/AudioService;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 1391
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->enable()V

    .line 1393
    :cond_20
    const-string/jumbo p0, "screen_state=on"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void

    .line 1395
    :cond_27
    iget-object p0, p0, Lcom/android/server/audio/AudioService$4;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMonitorRotation(Lcom/android/server/audio/AudioService;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 1397
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->disable()V

    .line 1399
    :cond_32
    const-string/jumbo p0, "screen_state=off"

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 0
    return-void
.end method
