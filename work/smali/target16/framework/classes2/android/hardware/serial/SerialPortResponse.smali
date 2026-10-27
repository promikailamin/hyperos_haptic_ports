.class public final Landroid/hardware/serial/SerialPortResponse;
.super Ljava/lang/Object;
.source "SerialPortResponse.java"


# instance fields
.field private final blacklist mFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mPort:Landroid/hardware/serial/SerialPort;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/serial/SerialPort;Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/hardware/serial/SerialPortResponse;->mPort:Landroid/hardware/serial/SerialPort;

    .line 36
    iput-object p2, p0, Landroid/hardware/serial/SerialPortResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist getFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/hardware/serial/SerialPortResponse;->mFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist getPort()Landroid/hardware/serial/SerialPort;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/hardware/serial/SerialPortResponse;->mPort:Landroid/hardware/serial/SerialPort;

    return-object v0
.end method
