.class Lcom/android/server/usb/UsbDirectMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbDirectMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDirectMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDirectMidiDevice;

    .line 101
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 1

    .line 134
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 11
    .param p1, "server"    # Landroid/media/midi/MidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .line 104
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 105
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v1

    .line 106
    .local v1, "numInputPorts":I
    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result v2

    .line 107
    .local v2, "numOutputPorts":I
    const/4 v3, 0x0

    .line 109
    .local v3, "numOpenPorts":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_e
    if-ge v4, v1, :cond_1b

    .line 110
    invoke-virtual {p2, v4}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 109
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 115
    .end local v4    # "i":I
    :cond_1b
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1c
    if-ge v4, v2, :cond_2c

    .line 116
    invoke-virtual {p2, v4}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v5

    if-lez v5, :cond_29

    .line 117
    invoke-virtual {p2, v4}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v5

    add-int/2addr v3, v5

    .line 115
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 121
    .end local v4    # "i":I
    :cond_2c
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmLock(Lcom/android/server/usb/UsbDirectMidiDevice;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 122
    :try_start_33
    const-string v5, "UsbDirectMidiDevice"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numOpenPorts: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isOpen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v7}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mServerAvailable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v7}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-lez v3, :cond_84

    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v5

    if-nez v5, :cond_84

    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v5

    if-eqz v5, :cond_84

    .line 125
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mopenLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    goto :goto_93

    .line 126
    :cond_84
    if-nez v3, :cond_93

    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 127
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$1;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mcloseLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)V

    .line 129
    :cond_93
    :goto_93
    monitor-exit v4

    .line 130
    return-void

    .line 129
    :catchall_95
    move-exception v5

    monitor-exit v4
    :try_end_97
    .catchall {:try_start_33 .. :try_end_97} :catchall_95

    throw v5
.end method
