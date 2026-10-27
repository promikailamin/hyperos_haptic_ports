.class Lcom/android/server/bluetooth/BluetoothShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "BluetoothShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bluetooth/BluetoothShellCommand$Disable;,
        Lcom/android/server/bluetooth/BluetoothShellCommand$Enable;,
        Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothShellCommand"


# instance fields
.field private final mBluetoothCommands:[Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;

.field private final mContext:Landroid/content/Context;

.field private final mManagerService:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmManagerService(Lcom/android/server/bluetooth/BluetoothShellCommand;)Lcom/android/server/bluetooth/BluetoothManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/bluetooth/BluetoothShellCommand;->mManagerService:Lcom/android/server/bluetooth/BluetoothManagerService;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;Landroid/content/Context;)V
    .registers 7
    .param p1, "managerService"    # Lcom/android/server/bluetooth/BluetoothManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;

    new-instance v1, Lcom/android/server/bluetooth/BluetoothShellCommand$Enable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/bluetooth/BluetoothShellCommand$Enable;-><init>(Lcom/android/server/bluetooth/BluetoothShellCommand;Lcom/android/server/bluetooth/BluetoothShellCommand$Enable-IA;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/android/server/bluetooth/BluetoothShellCommand$Disable;

    invoke-direct {v1, p0, v2}, Lcom/android/server/bluetooth/BluetoothShellCommand$Disable;-><init>(Lcom/android/server/bluetooth/BluetoothShellCommand;Lcom/android/server/bluetooth/BluetoothShellCommand$Disable-IA;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/server/bluetooth/BluetoothShellCommand;->mBluetoothCommands:[Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;

    .line 83
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothShellCommand;->mManagerService:Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 84
    iput-object p2, p0, Lcom/android/server/bluetooth/BluetoothShellCommand;->mContext:Landroid/content/Context;

    .line 85
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 10
    .param p1, "cmd"    # Ljava/lang/String;

    .line 89
    if-nez p1, :cond_8

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/bluetooth/BluetoothShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 93
    :cond_8
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothShellCommand;->mBluetoothCommands:[Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_a1

    aget-object v3, v0, v2

    .line 94
    .local v3, "bt_cmd":Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;
    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 95
    invoke-virtual {v3}, Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;->isPrivileged()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 97
    .local v4, "uid":I
    if-nez v4, :cond_27

    goto :goto_50

    .line 98
    :cond_27
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not have access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bluetooth command (or such command doesn\'t exist)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    .end local v4    # "uid":I
    :cond_50
    :goto_50
    :try_start_50
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;->exec(Ljava/io/PrintWriter;)I

    move-result v0
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_58} :catch_59

    return v0

    .line 104
    :catch_59
    move-exception v4

    .line 105
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": error\nException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "BluetoothShellCommand"

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 93
    .end local v3    # "bt_cmd":Lcom/android/server/bluetooth/BluetoothShellCommand$BluetoothCommand;
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_9d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    .line 111
    :cond_a1
    invoke-virtual {p0, p1}, Lcom/android/server/bluetooth/BluetoothShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 3

    .line 116
    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 117
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Bluetooth Commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    const-string v1, "  help or -h"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    const-string v1, "  enable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    const-string v1, "    Enable Bluetooth on this device."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    const-string v1, "  disable"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    const-string v1, "    Disable Bluetooth on this device."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    return-void
.end method
