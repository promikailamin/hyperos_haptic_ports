.class public Lcom/android/server/usb/UsbDirectMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbDirectMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 1

    .line 0
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 8

    .line 121
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    .line 123
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_f
    if-ge v2, v0, :cond_1c

    .line 127
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v4

    if-eqz v4, :cond_19

    add-int/lit8 v3, v3, 0x1

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_1c
    :goto_1c
    if-ge v1, p1, :cond_2c

    .line 133
    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    if-lez v0, :cond_29

    .line 134
    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    add-int/2addr v3, v0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 138
    :cond_2c
    iget-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p1}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmLock(Lcom/android/server/usb/UsbDirectMidiDevice;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 139
    :try_start_33
    const-string p2, "UsbDirectMidiDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numOpenPorts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mServerAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_80

    .line 141
    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result p2

    if-nez p2, :cond_80

    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 142
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mopenLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    goto :goto_8f

    :catchall_7e
    move-exception p0

    goto :goto_91

    :cond_80
    if-nez v3, :cond_8f

    .line 143
    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result p2

    if-eqz p2, :cond_8f

    .line 144
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mcloseLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)V

    .line 146
    :cond_8f
    :goto_8f
    monitor-exit p1

    return-void

    :goto_91
    monitor-exit p1
    :try_end_92
    .catchall {:try_start_33 .. :try_end_92} :catchall_7e

    throw p0
.end method
