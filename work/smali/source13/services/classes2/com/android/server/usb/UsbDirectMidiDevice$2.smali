.class Lcom/android/server/usb/UsbDirectMidiDevice$2;
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

.field final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;

.field final synthetic val$portFinal:I


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDirectMidiDevice;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 362
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    iput-object p5, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    iput p6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portFinal:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 365
    const-string v0, "UsbDirectMidiDevice"

    new-instance v1, Landroid/hardware/usb/UsbRequest;

    invoke-direct {v1}, Landroid/hardware/usb/UsbRequest;-><init>()V

    .line 367
    .local v1, "request":Landroid/hardware/usb/UsbRequest;
    :try_start_7
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/usb/UsbRequest;->initialize(Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)Z

    .line 368
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$endpointFinal:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v2

    new-array v2, v2, [B

    .line 370
    .local v2, "inputBuffer":[B
    :goto_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 371
    const-string v3, "input thread interrupted"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    goto/16 :goto_94

    .line 375
    :cond_26
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 376
    .local v7, "timestamp":J
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v9, v3

    .line 377
    .local v9, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v9}, Landroid/hardware/usb/UsbRequest;->queue(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 378
    const-string v3, "Cannot queue request"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    goto :goto_94

    .line 381
    :cond_3b
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$connectionFinal:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDeviceConnection;->requestWait()Landroid/hardware/usb/UsbRequest;

    move-result-object v3

    move-object v10, v3

    .line 382
    .local v10, "response":Landroid/hardware/usb/UsbRequest;
    if-eq v10, v1, :cond_4a

    .line 383
    const-string v3, "Unexpected response"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    goto :goto_94

    .line 386
    :cond_4a
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    move v11, v3

    .line 388
    .local v11, "bytesRead":I
    if-lez v11, :cond_95

    .line 394
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v3}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 397
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v3, v2, v11}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B

    move-result-object v3

    move-object v12, v3

    .local v3, "convertedArray":[B
    goto :goto_7b

    .line 400
    .end local v3    # "convertedArray":[B
    :cond_61
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v3}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;

    move-result-object v3

    if-nez v3, :cond_70

    .line 401
    const-string/jumbo v3, "mUsbMidiPacketConverter is null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    goto :goto_94

    .line 404
    :cond_70
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->this$0:Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-static {v3}, Lcom/android/server/usb/UsbDirectMidiDevice;->-$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;

    move-result-object v3

    .line 405
    invoke-virtual {v3, v2, v11}, Lcom/android/server/usb/UsbMidiPacketConverter;->usbMidiToRawMidi([BI)[B

    move-result-object v3

    move-object v12, v3

    .line 414
    .local v12, "convertedArray":[B
    :goto_7b
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    if-eqz v3, :cond_8d

    iget v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice$2;->val$portFinal:I

    aget-object v3, v3, v4

    if-nez v3, :cond_86

    goto :goto_8d

    .line 419
    :cond_86
    const/4 v5, 0x0

    array-length v6, v12

    move-object v4, v12

    invoke-virtual/range {v3 .. v8}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    goto :goto_95

    .line 416
    :cond_8d
    :goto_8d
    const-string/jumbo v3, "outputReceivers is null"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_93} :catch_a0
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_93} :catch_98
    .catchall {:try_start_7 .. :try_end_93} :catchall_96

    .line 417
    nop

    .line 428
    .end local v2    # "inputBuffer":[B
    .end local v7    # "timestamp":J
    .end local v9    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v10    # "response":Landroid/hardware/usb/UsbRequest;
    .end local v11    # "bytesRead":I
    .end local v12    # "convertedArray":[B
    :goto_94
    goto :goto_a8

    .line 422
    .restart local v2    # "inputBuffer":[B
    :cond_95
    :goto_95
    goto :goto_16

    .line 428
    .end local v2    # "inputBuffer":[B
    :catchall_96
    move-exception v0

    goto :goto_b2

    .line 425
    :catch_98
    move-exception v2

    .line 426
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_99
    const-string v3, "input thread: "

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    nop

    .end local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_a8

    .line 423
    :catch_a0
    move-exception v2

    .line 424
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "reader thread exiting"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catchall {:try_start_99 .. :try_end_a7} :catchall_96

    .line 428
    nop

    .end local v2    # "e":Ljava/io/IOException;
    :goto_a8
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 429
    nop

    .line 430
    const-string v2, "input thread exit"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 428
    :goto_b2
    invoke-virtual {v1}, Landroid/hardware/usb/UsbRequest;->close()V

    .line 429
    throw v0
.end method
