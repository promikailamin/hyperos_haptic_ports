.class public Lcom/android/server/usb/UsbAlsaMidiDevice$2;
.super Ljava/lang/Thread;
.source "UsbAlsaMidiDevice.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

.field public final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V
    .registers 4

    .line 224
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    const/16 v0, 0x200

    .line 227
    new-array v2, v0, [B

    .line 231
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 232
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmLock(Lcom/android/server/usb/UsbAlsaMidiDevice;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_8f
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_86

    .line 233
    :try_start_f
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z

    move-result v0

    if-nez v0, :cond_1d

    monitor-exit v7

    goto/16 :goto_97

    :catchall_1a
    move-exception v0

    move-object p0, v0

    goto :goto_84

    :cond_1d
    const/4 v0, 0x0

    move v8, v0

    .line 236
    :goto_1f
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmPollFDs(Lcom/android/server/usb/UsbAlsaMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    array-length v1, v1

    if-ge v8, v1, :cond_78

    .line 237
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmPollFDs(Lcom/android/server/usb/UsbAlsaMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    aget-object v1, v1, v8

    .line 238
    iget-short v3, v1, Landroid/system/StructPollfd;->revents:S

    sget v4, Landroid/system/OsConstants;->POLLERR:I

    sget v9, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr v4, v9

    and-int/2addr v4, v3

    if-eqz v4, :cond_3b

    goto :goto_78

    .line 241
    :cond_3b
    sget v4, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_75

    .line 243
    iput-short v0, v1, Landroid/system/StructPollfd;->revents:S

    .line 244
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmInputStreams(Lcom/android/server/usb/UsbAlsaMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    array-length v1, v1

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    if-ne v8, v1, :cond_4e

    goto :goto_78

    .line 249
    :cond_4e
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmInputStreams(Lcom/android/server/usb/UsbAlsaMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 250
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v1, v1, v8

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 253
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmPowerBoostSetter(Lcom/android/server/usb/UsbAlsaMidiDevice;)Lcom/android/server/usb/PowerBoostSetter;

    move-result-object v1

    if-eqz v1, :cond_75

    if-le v4, v9, :cond_75

    .line 254
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmPowerBoostSetter(Lcom/android/server/usb/UsbAlsaMidiDevice;)Lcom/android/server/usb/PowerBoostSetter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/usb/PowerBoostSetter;->boostPower()V

    :cond_75
    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    .line 258
    :cond_78
    :goto_78
    monitor-exit v7
    :try_end_79
    .catchall {:try_start_f .. :try_end_79} :catchall_1a

    .line 261
    :try_start_79
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$2;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmPollFDs(Lcom/android/server/usb/UsbAlsaMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_83} :catch_8f
    .catch Landroid/system/ErrnoException; {:try_start_79 .. :try_end_83} :catch_86

    goto :goto_4

    .line 258
    :goto_84
    :try_start_84
    monitor-exit v7
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_1a

    :try_start_85
    throw p0
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_86} :catch_8f
    .catch Landroid/system/ErrnoException; {:try_start_85 .. :try_end_86} :catch_86

    .line 266
    :catch_86
    const-string p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "reader thread exiting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    .line 264
    :catch_8f
    const-string p0, "UsbAlsaMidiDevice"

    const-string/jumbo v0, "reader thread exiting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_97
    const-string p0, "UsbAlsaMidiDevice"

    const-string v0, "input thread exit"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
