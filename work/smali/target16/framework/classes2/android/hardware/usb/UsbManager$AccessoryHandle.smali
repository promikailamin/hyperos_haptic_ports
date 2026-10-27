.class Landroid/hardware/usb/UsbManager$AccessoryHandle;
.super Ljava/lang/Object;
.source "UsbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryHandle"
.end annotation


# instance fields
.field private final blacklist mInputStreamOpened:Z

.field private final blacklist mOutputStreamOpened:Z

.field private final blacklist mPfd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor blacklist <init>(Landroid/os/ParcelFileDescriptor;ZZ)V
    .registers 4

    .line 1058
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1059
    iput-object p1, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 1060
    iput-boolean p2, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mInputStreamOpened:Z

    .line 1061
    iput-boolean p3, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mOutputStreamOpened:Z

    .line 1062
    return-void
.end method


# virtual methods
.method public blacklist getPfd()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 1065
    iget-object v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mPfd:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public blacklist isInputStreamOpened()Z
    .registers 2

    .line 1069
    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mInputStreamOpened:Z

    return v0
.end method

.method public blacklist isOpen()Z
    .registers 2

    .line 1077
    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mInputStreamOpened:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mOutputStreamOpened:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public blacklist isOutputStreamOpened()Z
    .registers 2

    .line 1073
    iget-boolean v0, p0, Landroid/hardware/usb/UsbManager$AccessoryHandle;->mOutputStreamOpened:Z

    return v0
.end method
