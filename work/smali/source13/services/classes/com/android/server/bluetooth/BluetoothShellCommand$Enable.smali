.class Lcom/android/server/bluetooth/BluetoothShellCommand$Enable;
.super Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;
.source "BluetoothShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Enable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothShellCommand;


# direct methods
.method private constructor <init>(Lcom/android/server/bluetooth/BluetoothShellCommand;)V
    .registers 3

    .line 50
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothShellCommand$Enable;->this$0:Lcom/android/server/bluetooth/BluetoothShellCommand;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;-><init>(Lcom/android/server/bluetooth/BluetoothShellCommand;Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bluetooth/BluetoothShellCommand;Lcom/android/server/bluetooth/BluetoothShellCommand$Enable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothShellCommand$Enable;-><init>(Lcom/android/server/bluetooth/BluetoothShellCommand;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/io/PrintWriter;)I
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    const-string v0, "Enabling Bluetooth"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothShellCommand$Enable;->this$0:Lcom/android/server/bluetooth/BluetoothShellCommand;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothShellCommand;->-$$Nest$fgetmManagerService(Lcom/android/server/bluetooth/BluetoothShellCommand;)Lcom/android/server/bluetooth/BluetoothManagerService;

    move-result-object v0

    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->enable(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    const/4 v0, -0x1

    :goto_18
    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 53
    const-string v0, "enable"

    return-object v0
.end method

.method isPrivileged()Z
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method
