.class Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;
.super Ljava/io/FileOutputStream;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessoryAutoCloseOutputStream"
.end annotation


# instance fields
.field private final blacklist mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final blacklist mIsAccessoryFfsEnabled:Z

.field private final blacklist mMaxPacketSize:I

.field private final blacklist mPfd:Landroid/os/ParcelFileDescriptor;

.field final synthetic blacklist this$0:Landroid/hardware/usb/UsbManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1004
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->this$0:Landroid/hardware/usb/UsbManager;

    .line 1005
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1006
    const/4 p1, -0x1

    iput p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mMaxPacketSize:I

    .line 1007
    iput-object p2, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1008
    iput-object p3, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 1009
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mIsAccessoryFfsEnabled:Z

    .line 1010
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 996
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->this$0:Landroid/hardware/usb/UsbManager;

    .line 997
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 998
    iput p4, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mMaxPacketSize:I

    .line 999
    iput-object p2, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 1000
    iput-object p3, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 1001
    iput-boolean p5, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mIsAccessoryFfsEnabled:Z

    .line 1002
    return-void
.end method

.method private blacklist sendZlp()V
    .registers 6

    .line 1037
    const-string v0, "ZLP failed to send."

    const-string v1, "UsbManager"

    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 1041
    :try_start_7
    iget-object v4, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4, v3, v2, v2}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_10
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_10} :catch_16
    .catch Ljava/io/InterruptedIOException; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_1a

    .line 1044
    :catch_11
    move-exception v2

    .line 1045
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b

    .line 1042
    :catch_16
    move-exception v2

    .line 1043
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1046
    :goto_1a
    nop

    .line 1047
    :goto_1b
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1029
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 1030
    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mIsAccessoryFfsEnabled:Z

    if-nez v0, :cond_f

    .line 1031
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->this$0:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->-$$Nest$mcloseHandleForAccessory(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Z)V

    .line 1033
    :cond_f
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    invoke-super {p0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1016
    iget-boolean p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mIsAccessoryFfsEnabled:Z

    if-nez p1, :cond_8

    .line 1017
    return-void

    .line 1020
    :cond_8
    if-lez p3, :cond_12

    iget p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->mMaxPacketSize:I

    rem-int/2addr p3, p1

    if-nez p3, :cond_12

    .line 1021
    invoke-direct {p0}, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseOutputStream;->sendZlp()V

    .line 1023
    :cond_12
    return-void
.end method
