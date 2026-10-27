.class Lcom/android/server/usb/UsbDirectMidiDevice$3;
.super Ljava/lang/Thread;
.source "UsbDirectMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbDirectMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field final synthetic val$eventSchedulerFinal:Lcom/android/internal/midi/MidiEventScheduler;

.field final synthetic val$portFinal:I


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDirectMidiDevice;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 453
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$eventSchedulerFinal:Lcom/android/internal/midi/MidiEventScheduler;

    iput p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$portFinal:I

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 458
    const-string v0, "UsbDirectMidiDevice"

    :goto_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 459
    const-string/jumbo v1, "output thread interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_11} :catch_6d

    .line 460
    goto :goto_6c

    .line 464
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$eventSchedulerFinal:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v1

    check-cast v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_1a
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_1a} :catch_65
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_1a} :catch_6d

    .line 468
    .local v1, "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    nop

    .line 469
    if-nez v1, :cond_23

    .line 470
    :try_start_1d
    const-string v2, "event is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    goto :goto_6c

    .line 480
    :cond_23
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 483
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-object v3, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v4, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-static {v2, v3, v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v2

    .local v2, "convertedArray":[B
    goto :goto_55

    .line 486
    .end local v2    # "convertedArray":[B
    :cond_36
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;

    move-result-object v2

    if-nez v2, :cond_45

    .line 487
    const-string/jumbo v2, "mUsbMidiPacketConverter is null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    goto :goto_6c

    .line 490
    :cond_45
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v2}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;

    move-result-object v2

    iget-object v3, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v4, v1, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    iget v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$portFinal:I

    .line 491
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/usb/UsbMidiPacketConverter;->rawMidiToUsbMidi([BII)[B

    move-result-object v2

    .line 500
    .restart local v2    # "convertedArray":[B
    :goto_55
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    array-length v5, v2

    const/16 v6, 0xa

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    .line 503
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$eventSchedulerFinal:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v3, v1}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 504
    .end local v1    # "event":Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    .end local v2    # "convertedArray":[B
    goto :goto_2

    .line 465
    :catch_65
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "event scheduler interrupted"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_6b} :catch_6d

    .line 467
    nop

    .line 507
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_6c
    goto :goto_74

    .line 505
    :catch_6d
    move-exception v1

    .line 506
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "output thread: "

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_74
    const-string/jumbo v1, "output thread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-void
.end method
