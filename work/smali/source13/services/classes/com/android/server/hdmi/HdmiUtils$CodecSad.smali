.class public Lcom/android/server/hdmi/HdmiUtils$CodecSad;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecSad"
.end annotation


# instance fields
.field public final audioCodec:I

.field public final sad:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "audioCodec"    # I
    .param p2, "sad"    # Ljava/lang/String;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput p1, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 776
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 777
    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 3
    .param p1, "audioCodec"    # I
    .param p2, "sad"    # [B

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iput p1, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 771
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 772
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 781
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 782
    move-object v0, p1

    check-cast v0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 783
    .local v0, "that":Lcom/android/server/hdmi/HdmiUtils$CodecSad;
    iget v2, v0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    iget v3, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    if-ne v2, v3, :cond_1a

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 784
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    nop

    .line 783
    :goto_1b
    return v1

    .line 786
    .end local v0    # "that":Lcom/android/server/hdmi/HdmiUtils$CodecSad;
    :cond_1c
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 791
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 792
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 793
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 791
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
