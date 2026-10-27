.class public abstract Landroid/media/midi/MidiReceiver;
.super Ljava/lang/Object;
.source "MidiReceiver.java"


# instance fields
.field private final greylist-max-o mMaxMessageSize:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const v0, 0x7fffffff

    iput v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    .line 34
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    .line 42
    return-void
.end method


# virtual methods
.method public whitelist flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->onFlush()V

    .line 70
    return-void
.end method

.method public final whitelist getMaxMessageSize()I
    .registers 2

    .line 86
    iget v0, p0, Landroid/media/midi/MidiReceiver;->mMaxMessageSize:I

    return v0
.end method

.method public whitelist onFlush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    return-void
.end method

.method public abstract whitelist onSend([BIIJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist send([BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 106
    return-void
.end method

.method public whitelist send([BIIJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Landroid/media/midi/MidiReceiver;->getMaxMessageSize()I

    move-result v0

    move v3, p2

    .line 126
    :goto_5
    if-lez p3, :cond_15

    .line 127
    if-le p3, v0, :cond_b

    move v4, v0

    goto :goto_c

    :cond_b
    move v4, p3

    .line 128
    :goto_c
    move-object v1, p0

    move-object v2, p1

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->onSend([BIIJ)V

    .line 129
    add-int/2addr v3, v4

    .line 130
    sub-int/2addr p3, v4

    .line 131
    goto :goto_5

    .line 132
    :cond_15
    return-void
.end method
