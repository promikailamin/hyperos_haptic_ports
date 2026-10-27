.class Lcom/android/server/bluetooth/BluetoothShellCommand$Disable;
.super Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;
.source "BluetoothShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Disable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothShellCommand;


# direct methods
.method private constructor <init>(Lcom/android/server/bluetooth/BluetoothShellCommand;)V
    .registers 3

    .line 66
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothShellCommand$Disable;->this$0:Lcom/android/server/bluetooth/BluetoothShellCommand;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;-><init>(Lcom/android/server/bluetooth/BluetoothShellCommand;Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bluetooth/BluetoothShellCommand;Lcom/android/server/bluetooth/BluetoothShellCommand$Disable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothShellCommand$Disable;-><init>(Lcom/android/server/bluetooth/BluetoothShellCommand;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/io/PrintWriter;)I
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "Disabling Bluetooth"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothShellCommand$Disable;->this$0:Lcom/android/server/bluetooth/BluetoothShellCommand;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothShellCommand;->-$$Nest$fgetmManagerService(Lcom/android/server/bluetooth/BluetoothShellCommand;)Lcom/android/server/bluetooth/BluetoothManagerService;

    move-result-object v0

    invoke-static {}, Landroid/content/AttributionSource;->myAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/bluetooth/BluetoothManagerService;->disable(Landroid/content/AttributionSource;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    const/4 v0, -0x1

    :goto_19
    return v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 69
    const-string v0, "disable"

    return-object v0
.end method

.method isPrivileged()Z
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method
