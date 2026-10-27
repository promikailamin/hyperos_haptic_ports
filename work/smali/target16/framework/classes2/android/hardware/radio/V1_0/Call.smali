.class public final Landroid/hardware/radio/V1_0/Call;
.super Ljava/lang/Object;
.source "Call.java"


# instance fields
.field public blacklist als:B

.field public blacklist index:I

.field public blacklist isMT:Z

.field public blacklist isMpty:Z

.field public blacklist isVoice:Z

.field public blacklist isVoicePrivacy:Z

.field public blacklist name:Ljava/lang/String;

.field public blacklist namePresentation:I

.field public blacklist number:Ljava/lang/String;

.field public blacklist numberPresentation:I

.field public blacklist state:I

.field public blacklist toa:I

.field public blacklist uusInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/UusInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    .line 6
    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    .line 7
    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    .line 8
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    .line 9
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    .line 10
    iput-byte v0, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    .line 11
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    .line 12
    iput-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    .line 13
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    .line 14
    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 15
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    .line 16
    iput v0, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 135
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 136
    mul-int/lit8 v3, v2, 0x58

    int-to-long v5, v3

    .line 137
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 136
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 140
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 142
    new-instance v3, Landroid/hardware/radio/V1_0/Call;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/Call;-><init>()V

    .line 143
    mul-int/lit8 v5, v1, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_0/Call;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 144
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 148
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 200
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 202
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 203
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 204
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 205
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x58

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 206
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 207
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/Call;

    mul-int/lit8 v5, v4, 0x58

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_0/Call;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 206
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 209
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 212
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 213
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 21
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 22
    return v0

    .line 24
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 25
    return v1

    .line 27
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/Call;

    if-eq v2, v3, :cond_11

    .line 28
    return v1

    .line 30
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_0/Call;

    .line 31
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->state:I

    if-eq v2, v3, :cond_1a

    .line 32
    return v1

    .line 34
    :cond_1a
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->index:I

    if-eq v2, v3, :cond_21

    .line 35
    return v1

    .line 37
    :cond_21
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->toa:I

    if-eq v2, v3, :cond_28

    .line 38
    return v1

    .line 40
    :cond_28
    iget-boolean v2, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    if-eq v2, v3, :cond_2f

    .line 41
    return v1

    .line 43
    :cond_2f
    iget-boolean v2, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    if-eq v2, v3, :cond_36

    .line 44
    return v1

    .line 46
    :cond_36
    iget-byte v2, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    iget-byte v3, p1, Landroid/hardware/radio/V1_0/Call;->als:B

    if-eq v2, v3, :cond_3d

    .line 47
    return v1

    .line 49
    :cond_3d
    iget-boolean v2, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    if-eq v2, v3, :cond_44

    .line 50
    return v1

    .line 52
    :cond_44
    iget-boolean v2, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    iget-boolean v3, p1, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    if-eq v2, v3, :cond_4b

    .line 53
    return v1

    .line 55
    :cond_4b
    iget-object v2, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 56
    return v1

    .line 58
    :cond_56
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    if-eq v2, v3, :cond_5d

    .line 59
    return v1

    .line 61
    :cond_5d
    iget-object v2, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 62
    return v1

    .line 64
    :cond_68
    iget v2, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    iget v3, p1, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    if-eq v2, v3, :cond_6f

    .line 65
    return v1

    .line 67
    :cond_6f
    iget-object v2, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7a

    .line 68
    return v1

    .line 70
    :cond_7a
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 15

    .line 75
    iget v0, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    .line 79
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-byte v0, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    .line 81
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    .line 82
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v0, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    .line 83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v0, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    .line 84
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v0, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    .line 86
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v0, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-object v0, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    .line 88
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 30

    .line 153
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/Call;->state:I

    .line 154
    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/radio/V1_0/Call;->index:I

    .line 155
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_0/Call;->toa:I

    .line 156
    const-wide/16 v6, 0xc

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    .line 157
    const-wide/16 v6, 0xd

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    .line 158
    const-wide/16 v6, 0xe

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v6

    iput-byte v6, v0, Landroid/hardware/radio/V1_0/Call;->als:B

    .line 159
    const-wide/16 v6, 0xf

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    .line 160
    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    .line 161
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    .line 163
    iget-object v8, v0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    .line 164
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 165
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v2

    .line 163
    const/16 v16, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 168
    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    .line 169
    const-wide/16 v6, 0x30

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    .line 171
    iget-object v8, v0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    .line 172
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v8, v8

    .line 173
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v22, v6, v2

    .line 171
    const/16 v24, 0x0

    move-object/from16 v17, p1

    move-wide/from16 v18, v8

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 176
    const-wide/16 v6, 0x40

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    .line 178
    const-wide/16 v6, 0x48

    add-long v6, p3, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 179
    mul-int/lit8 v5, v4, 0x18

    int-to-long v8, v5

    .line 180
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v20

    add-long v22, v6, v2

    .line 179
    const/16 v24, 0x1

    move-wide/from16 v18, v8

    invoke-virtual/range {v17 .. v24}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 183
    iget-object v2, v0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 184
    const/4 v2, 0x0

    :goto_cc
    if-ge v2, v4, :cond_e3

    .line 185
    new-instance v3, Landroid/hardware/radio/V1_0/UusInfo;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/UusInfo;-><init>()V

    .line 186
    mul-int/lit8 v5, v2, 0x18

    int-to-long v5, v5

    move-object/from16 v9, p1

    invoke-virtual {v3, v9, v1, v5, v6}, Landroid/hardware/radio/V1_0/UusInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 187
    iget-object v5, v0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_cc

    .line 190
    :cond_e3
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 126
    const-wide/16 v0, 0x58

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 127
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/Call;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 128
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ".state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-byte v1, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-boolean v1, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallPresentation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget v1, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CallPresentation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", .uusInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 13

    .line 217
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget v4, p0, Landroid/hardware/radio/V1_0/Call;->state:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 218
    const-wide/16 v2, 0x4

    add-long/2addr v2, p2

    iget v4, p0, Landroid/hardware/radio/V1_0/Call;->index:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 219
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget v6, p0, Landroid/hardware/radio/V1_0/Call;->toa:I

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 220
    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    iget-boolean v8, p0, Landroid/hardware/radio/V1_0/Call;->isMpty:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 221
    const-wide/16 v6, 0xd

    add-long/2addr v6, p2

    iget-boolean v8, p0, Landroid/hardware/radio/V1_0/Call;->isMT:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 222
    const-wide/16 v6, 0xe

    add-long/2addr v6, p2

    iget-byte v8, p0, Landroid/hardware/radio/V1_0/Call;->als:B

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 223
    const-wide/16 v6, 0xf

    add-long/2addr v6, p2

    iget-boolean v8, p0, Landroid/hardware/radio/V1_0/Call;->isVoice:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 224
    const-wide/16 v6, 0x10

    add-long/2addr v6, p2

    iget-boolean v8, p0, Landroid/hardware/radio/V1_0/Call;->isVoicePrivacy:Z

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 225
    const-wide/16 v6, 0x18

    add-long/2addr v6, p2

    iget-object v8, p0, Landroid/hardware/radio/V1_0/Call;->number:Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 226
    const-wide/16 v6, 0x28

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/radio/V1_0/Call;->numberPresentation:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 227
    const-wide/16 v6, 0x30

    add-long/2addr v6, p2

    iget-object v8, p0, Landroid/hardware/radio/V1_0/Call;->name:Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 228
    const-wide/16 v6, 0x40

    add-long/2addr v6, p2

    iget v8, p0, Landroid/hardware/radio/V1_0/Call;->namePresentation:I

    invoke-virtual {p1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 230
    iget-object v6, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 231
    const-wide/16 v7, 0x48

    add-long/2addr p2, v7

    add-long/2addr v2, p2

    invoke-virtual {p1, v2, v3, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 232
    add-long/2addr v4, p2

    const/4 v2, 0x0

    invoke-virtual {p1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 233
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v6, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 234
    nop

    :goto_7d
    if-ge v2, v6, :cond_90

    .line 235
    iget-object v4, p0, Landroid/hardware/radio/V1_0/Call;->uusInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/UusInfo;

    mul-int/lit8 v5, v2, 0x18

    int-to-long v7, v5

    invoke-virtual {v4, v3, v7, v8}, Landroid/hardware/radio/V1_0/UusInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    .line 237
    :cond_90
    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 239
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 193
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 194
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/Call;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 195
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 196
    return-void
.end method
