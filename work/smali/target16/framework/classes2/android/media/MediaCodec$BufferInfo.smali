.class public final Landroid/media/MediaCodec$BufferInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferInfo"
.end annotation


# instance fields
.field public whitelist flags:I

.field public whitelist offset:I

.field public whitelist presentationTimeUs:J

.field public whitelist size:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o dup()Landroid/media/MediaCodec$BufferInfo;
    .registers 7

    .line 1724
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 1725
    iget v1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 1726
    return-object v0
.end method

.method public whitelist set(IIJI)V
    .registers 6

    .line 1679
    iput p1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1680
    iput p2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1681
    iput-wide p3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1682
    iput p5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1683
    return-void
.end method
