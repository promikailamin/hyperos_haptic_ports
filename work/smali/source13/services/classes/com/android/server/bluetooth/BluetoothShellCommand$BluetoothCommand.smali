.class abstract Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;
.super Ljava/lang/Object;
.source "BluetoothShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BluetoothCommand"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothShellCommand;


# direct methods
.method private constructor <init>(Lcom/android/server/bluetooth/BluetoothShellCommand;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;->this$0:Lcom/android/server/bluetooth/BluetoothShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bluetooth/BluetoothShellCommand;Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;-><init>(Lcom/android/server/bluetooth/BluetoothShellCommand;)V

    return-void
.end method


# virtual methods
.method abstract exec(Ljava/io/PrintWriter;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method abstract getName()Ljava/lang/String;
.end method

.method isPrivileged()Z
    .registers 2

    .line 45
    const/4 v0, 0x1

    return v0
.end method
