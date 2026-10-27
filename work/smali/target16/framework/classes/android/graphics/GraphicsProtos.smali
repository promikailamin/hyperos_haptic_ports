.class public final Landroid/graphics/GraphicsProtos;
.super Ljava/lang/Object;
.source "GraphicsProtos.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dumpPointProto(Landroid/graphics/Point;Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 44
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 45
    const-wide v0, 0x10500000001L

    iget v2, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 46
    const-wide v0, 0x10500000002L

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 47
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 48
    return-void
.end method
