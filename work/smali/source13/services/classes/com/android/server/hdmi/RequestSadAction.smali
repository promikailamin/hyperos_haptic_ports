.class final Lcom/android/server/hdmi/RequestSadAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestSadAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;
    }
.end annotation


# static fields
.field private static final MAX_SAD_PER_REQUEST:I = 0x4

.field private static final RETRY_COUNTER_MAX:I = 0x1

.field private static final STATE_WAITING_FOR_REPORT_SAD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RequestSadAction"


# instance fields
.field private final mCallback:Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

.field private final mCecCodecsToQuery:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueriedSadCount:I

.field private final mSupportedSads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mTargetAddress:I

.field private mTimeoutRetry:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/RequestSadAction$RequestSadCallback;)V
    .registers 8
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "targetAddress"    # I
    .param p3, "callback"    # Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    .line 45
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 46
    iput v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 56
    iput p2, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    .line 57
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

    iput-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object v1

    .line 59
    .local v1, "hdmiCecConfig":Lcom/android/server/hdmi/HdmiCecConfig;
    const-string/jumbo v2, "query_sad_lpcm"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3b

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_3b
    const-string/jumbo v2, "query_sad_dd"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4c

    .line 67
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_4c
    const-string/jumbo v2, "query_sad_mpeg1"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_5d

    .line 72
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_5d
    const-string/jumbo v2, "query_sad_mp3"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_6e

    .line 77
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_6e
    const-string/jumbo v2, "query_sad_mpeg2"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_7f

    .line 82
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_7f
    const-string/jumbo v2, "query_sad_aac"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_90

    .line 87
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_90
    const-string/jumbo v2, "query_sad_dts"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_a1

    .line 92
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_a1
    const-string/jumbo v2, "query_sad_atrac"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_b3

    .line 97
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_b3
    const-string/jumbo v2, "query_sad_onebitaudio"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_c5

    .line 102
    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_c5
    const-string/jumbo v2, "query_sad_ddp"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_d7

    .line 107
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_d7
    const-string/jumbo v2, "query_sad_dtshd"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_e9

    .line 112
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_e9
    const-string/jumbo v2, "query_sad_truehd"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_fb

    .line 117
    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_fb
    const-string/jumbo v2, "query_sad_dst"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_10d

    .line 122
    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_10d
    const-string/jumbo v2, "query_sad_wmapro"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_11f

    .line 127
    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_11f
    const-string/jumbo v2, "query_sad_max"

    invoke-virtual {v1, v2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_131

    .line 132
    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_131
    return-void
.end method

.method private isValidCodec(B)Z
    .registers 4
    .param p1, "codec"    # B

    .line 203
    and-int/lit16 v0, p1, 0xff

    if-lez v0, :cond_c

    and-int/lit16 v0, p1, 0xff

    const/16 v1, 0xf

    if-gt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$querySad$0(Ljava/lang/Integer;)I
    .registers 2
    .param p0, "i"    # Ljava/lang/Integer;

    .line 149
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private querySad()V
    .registers 5

    .line 143
    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 144
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish()V

    .line 145
    return-void

    .line 147
    :cond_e
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    iget v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 147
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/RequestSadAction$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/hdmi/RequestSadAction$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 150
    .local v0, "codecsToQuery":[I
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestShortAudioDescriptor(II[I)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/RequestSadAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    .line 152
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mState:I

    .line 153
    iget v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RequestSadAction;->addTimer(II)V

    .line 154
    return-void
.end method

.method private updateResult([B)V
    .registers 3
    .param p1, "sad"    # [B

    .line 208
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method private wrapUpAndFinish()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;->onRequestSadDone(Ljava/util/List;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->finish()V

    .line 230
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .registers 4
    .param p1, "state"    # I

    .line 213
    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mState:I

    if-eq v0, p1, :cond_5

    .line 214
    return-void

    .line 216
    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    .line 217
    iget v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    if-gt v1, v0, :cond_13

    .line 218
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    .line 219
    return-void

    .line 223
    :cond_13
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish()V

    .line 225
    :cond_16
    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 10
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 158
    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d2

    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    .line 159
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v0, v3, :cond_10

    goto/16 :goto_d2

    .line 162
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v3, 0xa3

    const/4 v4, 0x3

    if-ne v0, v3, :cond_9b

    .line 163
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_9a

    .line 164
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    array-length v0, v0

    rem-int/2addr v0, v4

    if-eqz v0, :cond_2f

    goto :goto_9a

    .line 168
    :cond_2f
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    array-length v3, v3

    const/4 v5, 0x2

    sub-int/2addr v3, v5

    if-ge v0, v3, :cond_8e

    .line 169
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/server/hdmi/RequestSadAction;->isValidCodec(B)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 170
    new-array v3, v4, [B

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    aget-byte v6, v6, v0

    aput-byte v6, v3, v1

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    aget-byte v6, v6, v7

    aput-byte v6, v3, v2

    .line 171
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    add-int/lit8 v7, v0, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v3, v5

    .line 172
    .local v3, "sad":[B
    invoke-direct {p0, v3}, Lcom/android/server/hdmi/RequestSadAction;->updateResult([B)V

    .line 173
    .end local v3    # "sad":[B
    goto :goto_8b

    .line 175
    :cond_67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropped invalid codec "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    aget-byte v5, v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "RequestSadAction"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_8b
    add-int/lit8 v0, v0, 0x3

    goto :goto_30

    .line 178
    .end local v0    # "i":I
    :cond_8e
    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 179
    iput v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 180
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    .line 181
    return v2

    .line 166
    :cond_9a
    :goto_9a
    return v2

    .line 183
    :cond_9b
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_d1

    .line 184
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0xa4

    if-ne v0, v3, :cond_d1

    .line 186
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_bb

    .line 188
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish()V

    .line 189
    return v2

    .line 191
    :cond_bb
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v4, :cond_d1

    .line 193
    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 194
    iput v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 195
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    .line 196
    return v2

    .line 199
    :cond_d1
    return v1

    .line 160
    :cond_d2
    :goto_d2
    return v1
.end method

.method start()Z
    .registers 2

    .line 138
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    .line 139
    const/4 v0, 0x1

    return v0
.end method
