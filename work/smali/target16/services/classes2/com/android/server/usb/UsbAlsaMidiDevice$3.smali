.class public Lcom/android/server/usb/UsbAlsaMidiDevice$3;
.super Ljava/lang/Thread;
.source "UsbAlsaMidiDevice.java"


# instance fields
.field public final synthetic val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

.field public final synthetic val$outputStreamF:Ljava/io/FileOutputStream;

.field public final synthetic val$portF:I


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V
    .registers 6

    .line 279
    iput-object p3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    iput-object p4, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iput p5, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$portF:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 285
    :catch_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v0}, Lcom/android/internal/midi/MidiEventScheduler;->waitNextEvent()Lcom/android/internal/midi/EventScheduler$SchedulableEvent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_8} :catch_0

    .line 290
    const-string v1, "UsbAlsaMidiDevice"

    if-nez v0, :cond_13

    .line 300
    const-string/jumbo p0, "output thread exit"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_13
    :try_start_13
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$outputStreamF:Ljava/io/FileOutputStream;

    iget-object v3, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->data:[B

    iget v4, v0, Lcom/android/internal/midi/MidiEventScheduler$MidiEvent;->count:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_1e

    goto :goto_35

    .line 296
    :catch_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write failed for port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$portF:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_35
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$3;->val$eventSchedulerF:Lcom/android/internal/midi/MidiEventScheduler;

    invoke-virtual {v1, v0}, Lcom/android/internal/midi/MidiEventScheduler;->addEventToPool(Lcom/android/internal/midi/EventScheduler$SchedulableEvent;)V

    goto :goto_0
.end method
