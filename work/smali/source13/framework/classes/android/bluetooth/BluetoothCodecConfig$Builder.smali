.class public final Landroid/bluetooth/BluetoothCodecConfig$Builder;
.super Ljava/lang/Object;
.source "BluetoothCodecConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothCodecConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitsPerSample:I

.field private blacklist mChannelMode:I

.field private blacklist mCodecPriority:I

.field private blacklist mCodecSpecific1:J

.field private blacklist mCodecSpecific2:J

.field private blacklist mCodecSpecific3:J

.field private blacklist mCodecSpecific4:J

.field private blacklist mCodecType:I

.field private blacklist mSampleRate:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    const v0, 0xf4240

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:I

    .line 857
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    .line 858
    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    .line 859
    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    .line 860
    iput v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    .line 861
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    .line 862
    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    .line 863
    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    .line 864
    iput-wide v0, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothCodecConfig;
    .registers 16

    .line 970
    new-instance v14, Landroid/bluetooth/BluetoothCodecConfig;

    iget v1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:I

    iget v2, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    iget v3, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    iget v4, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    iget v5, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    iget-wide v6, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    iget-wide v8, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    iget-wide v10, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    iget-wide v12, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Landroid/bluetooth/BluetoothCodecConfig;-><init>(IIIIIJJJJ)V

    return-object v14
.end method

.method public whitelist setBitsPerSample(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "bitsPerSample"    # I

    .line 906
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mBitsPerSample:I

    .line 907
    return-object p0
.end method

.method public whitelist setChannelMode(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "channelMode"    # I

    .line 917
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mChannelMode:I

    .line 918
    return-object p0
.end method

.method public whitelist setCodecPriority(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "codecPriority"    # I

    .line 884
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecPriority:I

    .line 885
    return-object p0
.end method

.method public whitelist setCodecSpecific1(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3
    .param p1, "codecSpecific1"    # J

    .line 928
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific1:J

    .line 929
    return-object p0
.end method

.method public whitelist setCodecSpecific2(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3
    .param p1, "codecSpecific2"    # J

    .line 939
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific2:J

    .line 940
    return-object p0
.end method

.method public whitelist setCodecSpecific3(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3
    .param p1, "codecSpecific3"    # J

    .line 950
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific3:J

    .line 951
    return-object p0
.end method

.method public whitelist setCodecSpecific4(J)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 3
    .param p1, "codecSpecific4"    # J

    .line 961
    iput-wide p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecSpecific4:J

    .line 962
    return-object p0
.end method

.method public whitelist setCodecType(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "codecType"    # I

    .line 873
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mCodecType:I

    .line 874
    return-object p0
.end method

.method public whitelist setSampleRate(I)Landroid/bluetooth/BluetoothCodecConfig$Builder;
    .registers 2
    .param p1, "sampleRate"    # I

    .line 895
    iput p1, p0, Landroid/bluetooth/BluetoothCodecConfig$Builder;->mSampleRate:I

    .line 896
    return-object p0
.end method
