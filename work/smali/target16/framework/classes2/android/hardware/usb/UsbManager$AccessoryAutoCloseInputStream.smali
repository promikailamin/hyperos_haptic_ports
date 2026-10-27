.class Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;
.super Ljava/io/FileInputStream;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessoryAutoCloseInputStream"
.end annotation


# instance fields
.field private final blacklist mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private final blacklist mIsAccessoryFfsEnabled:Z

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

    .line 963
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->this$0:Landroid/hardware/usb/UsbManager;

    .line 964
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 965
    iput-object p2, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 966
    iput-object p3, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 967
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mIsAccessoryFfsEnabled:Z

    .line 968
    return-void
.end method

.method constructor blacklist <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Landroid/os/ParcelFileDescriptor;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 956
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->this$0:Landroid/hardware/usb/UsbManager;

    .line 957
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 958
    iput-object p2, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 959
    iput-object p3, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 960
    iput-boolean p4, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mIsAccessoryFfsEnabled:Z

    .line 961
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

    .line 974
    invoke-super {p0}, Ljava/io/FileInputStream;->close()V

    .line 975
    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mIsAccessoryFfsEnabled:Z

    if-nez v0, :cond_f

    .line 976
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->this$0:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Landroid/hardware/usb/UsbManager$AccessoryAutoCloseInputStream;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->-$$Nest$mcloseHandleForAccessory(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbAccessory;Z)V

    .line 978
    :cond_f
    return-void
.end method
