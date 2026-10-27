.class final Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;
.super Lmiui/hardware/input/IDeviceShareStateChangedListener$Stub;
.source "MiuiInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/input/MiuiInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceShareStateChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/hardware/input/MiuiInputManager;


# direct methods
.method private constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager;)V
    .registers 2

    .line 726
    iput-object p1, p0, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;->this$0:Lmiui/hardware/input/MiuiInputManager;

    invoke-direct {p0}, Lmiui/hardware/input/IDeviceShareStateChangedListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lmiui/hardware/input/MiuiInputManager;Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;-><init>(Lmiui/hardware/input/MiuiInputManager;)V

    return-void
.end method


# virtual methods
.method public blacklist onSocketBroken()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lmiui/hardware/input/MiuiInputManager$DeviceShareStateChangedListenerImpl;->this$0:Lmiui/hardware/input/MiuiInputManager;

    invoke-static {v0}, Lmiui/hardware/input/MiuiInputManager;->-$$Nest$mdeliverSocketBroken(Lmiui/hardware/input/MiuiInputManager;)V

    .line 731
    return-void
.end method
