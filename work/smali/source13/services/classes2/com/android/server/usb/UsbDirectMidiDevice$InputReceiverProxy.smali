.class final Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;
.super Landroid/media/midi/MidiReceiver;
.source "UsbDirectMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDirectMidiDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputReceiverProxy"
.end annotation


# instance fields
.field private mReceiver:Landroid/media/midi/MidiReceiver;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 157
    .local v0, "receiver":Landroid/media/midi/MidiReceiver;
    if-eqz v0, :cond_7

    .line 158
    invoke-virtual {v0}, Landroid/media/midi/MidiReceiver;->flush()V

    .line 160
    :cond_7
    return-void
.end method

.method public onSend([BIIJ)V
    .registers 13
    .param p1, "msg"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 145
    .local v6, "receiver":Landroid/media/midi/MidiReceiver;
    if-eqz v6, :cond_c

    .line 146
    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 148
    :cond_c
    return-void
.end method

.method public setReceiver(Landroid/media/midi/MidiReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/media/midi/MidiReceiver;

    .line 151
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 152
    return-void
.end method
