.class public interface abstract Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;
.super Ljava/lang/Object;
.source "BatteryHistoryDirectory.java"


# virtual methods
.method public abstract compress(Ljava/io/OutputStream;[B)V
.end method

.method public readFully([BLjava/io/InputStream;)V
    .registers 5

    const/4 p0, 0x0

    .line 82
    :goto_1
    array-length v0, p1

    if-ge p0, v0, :cond_17

    .line 83
    array-length v0, p1

    sub-int/2addr v0, p0

    invoke-virtual {p2, p1, p0, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    add-int/2addr p0, v0

    goto :goto_1

    .line 85
    :cond_f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid battery history file format"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    return-void
.end method

.method public abstract uncompress([BLjava/io/InputStream;)V
.end method
