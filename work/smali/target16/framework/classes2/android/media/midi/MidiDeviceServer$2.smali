.class Landroid/media/midi/MidiDeviceServer$2;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Lcom/android/internal/midi/MidiDispatcher$MidiReceiverFailureHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiDeviceServer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 426
    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onReceiverFailure(Landroid/media/midi/MidiReceiver;Ljava/io/IOException;)V
    .registers 5

    .line 428
    const-string v0, "MidiDeviceServer"

    const-string v1, "MidiInputPort failed to send data"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    nop

    .line 430
    iget-object p2, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {p2}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object p2

    monitor-enter p2

    .line 431
    :try_start_f
    iget-object v0, p0, Landroid/media/midi/MidiDeviceServer$2;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-static {v0}, Landroid/media/midi/MidiDeviceServer;->-$$Nest$fgetmInputPortClients(Landroid/media/midi/MidiDeviceServer;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/midi/MidiDeviceServer$PortClient;

    .line 432
    monitor-exit p2
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_22

    .line 433
    if-eqz p1, :cond_21

    .line 434
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    .line 436
    :cond_21
    return-void

    .line 432
    :catchall_22
    move-exception p1

    :try_start_23
    monitor-exit p2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method
