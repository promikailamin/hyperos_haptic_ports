.class public Landroid/media/MediaCodec$ParameterDescriptor;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterDescriptor"
.end annotation


# instance fields
.field private blacklist mName:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 5758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 5779
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5780
    return v0

    .line 5782
    :cond_4
    instance-of v1, p1, Landroid/media/MediaCodec$ParameterDescriptor;

    if-nez v1, :cond_9

    .line 5783
    return v0

    .line 5785
    :cond_9
    check-cast p1, Landroid/media/MediaCodec$ParameterDescriptor;

    .line 5786
    iget-object v1, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    iget-object v2, p1, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget v1, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    iget p1, p1, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    if-ne v1, p1, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 5765
    iget-object v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 5774
    iget v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 5791
    iget-object v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    .line 5793
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 5791
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5793
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    .line 5791
    return v0
.end method
