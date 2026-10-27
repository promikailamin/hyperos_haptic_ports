.class public Lcom/android/server/usb/UsbDirectMidiDevice$3;
.super Ljava/lang/Thread;
.source "UsbDirectMidiDevice.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

.field public final synthetic val$cableCountFinal:I

.field public final synthetic val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

.field public final synthetic val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

.field public final synthetic val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILcom/android/internal/midi/MidiEventMultiScheduler;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbDeviceConnection;)V
    .registers 7

    .line 550
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    iput-object p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 554
    const-string/jumbo v1, "output thread: "

    const-string v2, "UsbDirectMidiDevice"

    :try_start_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 556
    new-instance v3, Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {v3}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>()V

    .line 558
    iget v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    invoke-virtual {v3, v4}, Lcom/android/server/usb/UsbMidiPacketConverter;->createEncoders(I)V

    const/4 v4, 0x0

    move v5, v4

    :cond_16
    if-nez v5, :cond_107

    .line 561
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    invoke-virtual {v6}, Lcom/android/internal/midi/MidiEventMultiScheduler;->waitNextEvent()Z

    move-result v6

    if-nez v6, :cond_30

    .line 563
    const-string/jumbo p0, "output thread closed"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_107

    :catch_28
    move-exception v0

    move-object p0, v0

    goto/16 :goto_100

    :catch_2c
    move-exception v0

    move-object p0, v0

    goto/16 :goto_104

    .line 566
    :cond_30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    move v8, v4

    .line 567
    :goto_35
    iget v9, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$cableCountFinal:I

    if-ge v8, v9, :cond_72

    .line 569
    iget-object v9, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$multiSchedulerFinal:Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 570
    invoke-virtual {v9, v8}, Lcom/android/internal/midi/MidiEventMultiScheduler;->getEventScheduler(I)Lcom/android/internal/midi/MidiEventScheduler;

    move-result-object v9

    .line 572
    invoke-virtual {v9, v6, v7}, Lcom/android/internal/midi/MidiEventScheduler;->getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v10

    check-cast v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    :goto_45
    if-eqz v10, :cond_6f

    .line 578
    iget-object v11, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v11}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v11

    if-eqz v11, :cond_5e

    .line 581
    iget-object v11, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iget-object v12, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v13, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-static {v11, v12, v13}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v11

    .line 583
    array-length v12, v11

    invoke-virtual {v0, v11, v4, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_65

    .line 586
    :cond_5e
    iget-object v11, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v12, v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    invoke-virtual {v3, v11, v12, v8}, Lcom/android/server/usb/UsbMidiPacketConverter;->encodeMidiPackets([BII)V

    .line 589
    :goto_65
    invoke-virtual {v9, v10}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    .line 590
    invoke-virtual {v9, v6, v7}, Lcom/android/internal/midi/MidiEventScheduler;->getNextEvent(J)Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v10

    check-cast v10, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;

    goto :goto_45

    :cond_6f
    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    .line 594
    :cond_72
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_83

    .line 595
    const-string/jumbo p0, "output thread interrupted"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_107

    .line 600
    :cond_83
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v6}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 601
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 602
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    :goto_92
    move-object v9, v6

    goto :goto_99

    .line 605
    :cond_94
    invoke-virtual {v3}, Lcom/android/server/usb/UsbMidiPacketConverter;->pullEncodedMidiPackets()[B

    move-result-object v6

    goto :goto_92

    :goto_99
    move v10, v4

    .line 616
    :goto_9a
    array-length v6, v9

    if-ge v10, v6, :cond_16

    if-nez v5, :cond_16

    .line 621
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v6

    array-length v7, v9

    sub-int/2addr v7, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v6, -0x1

    move v13, v4

    :goto_ad
    if-gez v6, :cond_f8

    const/16 v6, 0x14

    if-gt v13, v6, :cond_f8

    .line 628
    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    const/16 v12, 0x32

    invoke-virtual/range {v7 .. v12}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BIII)I

    move-result v7

    add-int/lit8 v13, v13, 0x1

    .line 636
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v8

    if-eqz v8, :cond_d0

    .line 637
    const-string/jumbo v5, "output thread interrupted after send"

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_f8

    :cond_d0
    if-gez v7, :cond_f6

    .line 642
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "retrying packet. retryCount = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " result = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v13, v6, :cond_f6

    .line 645
    const-string v6, "Skipping packet because timeout"

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f6
    move v6, v7

    goto :goto_ad

    .line 618
    :cond_f8
    :goto_f8
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$3;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v6
    :try_end_fe
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_fe} :catch_2c
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_fe} :catch_28

    add-int/2addr v10, v6

    goto :goto_9a

    .line 654
    :goto_100
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_107

    .line 652
    :goto_104
    invoke-static {v2, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 656
    :cond_107
    :goto_107
    const-string/jumbo p0, "output thread exit"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
