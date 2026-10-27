.class public final Landroid/hardware/serial/SerialPort;
.super Ljava/lang/Object;
.source "SerialPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;,
        Landroid/hardware/serial/SerialPort$OpenFlags;
    }
.end annotation


# static fields
.field public static final blacklist INVALID_ID:I = -0x1

.field public static final blacklist OPEN_FLAG_DATA_SYNC:I = 0x1000

.field public static final blacklist OPEN_FLAG_NONBLOCK:I = 0x800

.field public static final blacklist OPEN_FLAG_READ_ONLY:I = 0x0

.field public static final blacklist OPEN_FLAG_READ_WRITE:I = 0x2

.field public static final blacklist OPEN_FLAG_SYNC:I = 0x100000

.field public static final blacklist OPEN_FLAG_WRITE_ONLY:I = 0x1


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mInfo:Landroid/hardware/serial/SerialPortInfo;

.field private final blacklist mService:Landroid/hardware/serial/ISerialManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/hardware/serial/SerialPortInfo;Landroid/hardware/serial/ISerialManager;)V
    .registers 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Landroid/hardware/serial/SerialPort;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Landroid/hardware/serial/SerialPort;->mInfo:Landroid/hardware/serial/SerialPortInfo;

    .line 100
    iput-object p3, p0, Landroid/hardware/serial/SerialPort;->mService:Landroid/hardware/serial/ISerialManager;

    .line 101
    return-void
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 107
    iget-object v0, p0, Landroid/hardware/serial/SerialPort;->mInfo:Landroid/hardware/serial/SerialPortInfo;

    invoke-virtual {v0}, Landroid/hardware/serial/SerialPortInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getProductId()I
    .registers 2

    .line 123
    iget-object v0, p0, Landroid/hardware/serial/SerialPort;->mInfo:Landroid/hardware/serial/SerialPortInfo;

    invoke-virtual {v0}, Landroid/hardware/serial/SerialPortInfo;->getProductId()I

    move-result v0

    return v0
.end method

.method public blacklist getVendorId()I
    .registers 2

    .line 115
    iget-object v0, p0, Landroid/hardware/serial/SerialPort;->mInfo:Landroid/hardware/serial/SerialPortInfo;

    invoke-virtual {v0}, Landroid/hardware/serial/SerialPortInfo;->getVendorId()I

    move-result v0

    return v0
.end method

.method public blacklist requestOpen(IZLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/hardware/serial/SerialPortResponse;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 146
    const-string v0, "Executor must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 147
    const-string v0, "Receiver must not be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 149
    :try_start_a
    iget-object v1, p0, Landroid/hardware/serial/SerialPort;->mService:Landroid/hardware/serial/ISerialManager;

    iget-object v0, p0, Landroid/hardware/serial/SerialPort;->mInfo:Landroid/hardware/serial/SerialPortInfo;

    invoke-virtual {v0}, Landroid/hardware/serial/SerialPortInfo;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/serial/SerialPort;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p3, p4, v0}, Landroid/hardware/serial/SerialPort$SerialPortResponseCallback;-><init>(Landroid/hardware/serial/SerialPort;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/hardware/serial/SerialPort-IA;)V

    move v3, p1

    move v4, p2

    invoke-interface/range {v1 .. v6}, Landroid/hardware/serial/ISerialManager;->requestOpen(Ljava/lang/String;IZLjava/lang/String;Landroid/hardware/serial/ISerialPortResponseCallback;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_23} :catch_25

    .line 153
    nop

    .line 154
    return-void

    .line 151
    :catch_25
    move-exception v0

    move-object p1, v0

    .line 152
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
