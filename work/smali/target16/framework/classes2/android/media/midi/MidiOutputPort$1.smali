.class Landroid/media/midi/MidiOutputPort$1;
.super Ljava/lang/Thread;
.source "MidiOutputPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiOutputPort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/midi/MidiOutputPort;


# direct methods
.method constructor blacklist <init>(Landroid/media/midi/MidiOutputPort;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 54
    iput-object p1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 8

    .line 57
    const/16 v0, 0x400

    new-array v2, v0, [B

    .line 62
    :goto_4
    :try_start_4
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmInputStream(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 63
    if-gez v0, :cond_11

    .line 66
    goto :goto_67

    .line 70
    :cond_11
    invoke-static {v2, v0}, Landroid/media/midi/MidiPortImpl;->getPacketType([BI)I

    move-result v1

    .line 71
    packed-switch v1, :pswitch_data_72

    .line 85
    const-string v3, "MidiOutputPort"

    goto :goto_3b

    .line 82
    :pswitch_1b
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmDispatcher(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiDispatcher;->flush()V

    .line 83
    goto :goto_51

    .line 73
    :pswitch_25
    invoke-static {v2, v0}, Landroid/media/midi/MidiPortImpl;->getDataOffset([BI)I

    move-result v3

    .line 74
    invoke-static {v2, v0}, Landroid/media/midi/MidiPortImpl;->getDataSize([BI)I

    move-result v4

    .line 75
    invoke-static {v2, v0}, Landroid/media/midi/MidiPortImpl;->getPacketTimestamp([BI)J

    move-result-wide v5

    .line 78
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmDispatcher(Landroid/media/midi/MidiOutputPort;)Lcom/android/internal/midi/MidiDispatcher;

    move-result-object v1

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/midi/MidiDispatcher;->send([BIIJ)V

    .line 79
    goto :goto_51

    .line 85
    :goto_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown packet type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_51
    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmTotalBytes(Landroid/media/midi/MidiOutputPort;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_5a} :catch_66
    .catchall {:try_start_4 .. :try_end_5a} :catchall_5b

    .line 89
    goto :goto_4

    .line 99
    :catchall_5b
    move-exception v0

    iget-object v1, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v1}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmInputStream(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v1

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 100
    throw v0

    .line 90
    :catch_66
    move-exception v0

    .line 99
    :goto_67
    iget-object v0, p0, Landroid/media/midi/MidiOutputPort$1;->this$0:Landroid/media/midi/MidiOutputPort;

    invoke-static {v0}, Landroid/media/midi/MidiOutputPort;->-$$Nest$fgetmInputStream(Landroid/media/midi/MidiOutputPort;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 100
    nop

    .line 101
    return-void

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_25
        :pswitch_1b
    .end packed-switch
.end method
