.class public final Landroid/hardware/radio/V1_0/CdmaInformationRecord;
.super Ljava/lang/Object;
.source "CdmaInformationRecord.java"


# instance fields
.field public blacklist audioCtrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist clir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist display:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist lineCtrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist name:I

.field public blacklist number:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist redir:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist signal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

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
            "Landroid/hardware/radio/V1_0/CdmaInformationRecord;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 97
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 100
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 101
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 102
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 101
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 107
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;-><init>()V

    .line 108
    mul-int/lit8 v5, v1, 0x78

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 109
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 113
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
            "Landroid/hardware/radio/V1_0/CdmaInformationRecord;",
            ">;)V"
        }
    .end annotation

    .line 220
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 222
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 223
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 225
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 226
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 227
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    mul-int/lit8 v5, v4, 0x78

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 229
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 232
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 233
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 16
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 17
    return v0

    .line 19
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 20
    return v1

    .line 22
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    if-eq v2, v3, :cond_11

    .line 23
    return v1

    .line 25
    :cond_11
    check-cast p1, Landroid/hardware/radio/V1_0/CdmaInformationRecord;

    .line 26
    iget v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    iget v3, p1, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    if-eq v2, v3, :cond_1a

    .line 27
    return v1

    .line 29
    :cond_1a
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 30
    return v1

    .line 32
    :cond_25
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 33
    return v1

    .line 35
    :cond_30
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 36
    return v1

    .line 38
    :cond_3b
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 39
    return v1

    .line 41
    :cond_46
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 42
    return v1

    .line 44
    :cond_51
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 45
    return v1

    .line 47
    :cond_5c
    iget-object v2, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_67

    .line 48
    return v1

    .line 50
    :cond_67
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 10

    .line 55
    iget v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    .line 57
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    .line 58
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    .line 59
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    .line 60
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    .line 61
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    .line 62
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v0, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    .line 63
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 23

    .line 118
    move-object/from16 v0, p0

    move-object/from16 v9, p2

    const-wide/16 v10, 0x0

    add-long v1, p3, v10

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    .line 120
    const-wide/16 v12, 0x8

    add-long v1, p3, v12

    add-long v3, v1, v12

    invoke-virtual {v9, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 121
    mul-int/lit8 v3, v14, 0x10

    int-to-long v3, v3

    .line 122
    move-wide v6, v1

    move-wide v2, v3

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 121
    const/4 v8, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 125
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 126
    const/4 v15, 0x0

    move v3, v15

    :goto_30
    if-ge v3, v14, :cond_45

    .line 127
    new-instance v4, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;-><init>()V

    .line 128
    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 129
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 133
    :cond_45
    const-wide/16 v2, 0x18

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 134
    mul-int/lit8 v4, v14, 0x18

    int-to-long v4, v4

    .line 135
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 134
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 138
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 139
    move v3, v15

    :goto_64
    if-ge v3, v14, :cond_79

    .line 140
    new-instance v4, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;-><init>()V

    .line 141
    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 142
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 146
    :cond_79
    const-wide/16 v2, 0x28

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 147
    mul-int/lit8 v4, v14, 0x4

    int-to-long v4, v4

    .line 148
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 147
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 151
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 152
    move v3, v15

    :goto_98
    if-ge v3, v14, :cond_ad

    .line 153
    new-instance v4, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;-><init>()V

    .line 154
    mul-int/lit8 v5, v3, 0x4

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 155
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_98

    .line 159
    :cond_ad
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 160
    mul-int/lit8 v4, v14, 0x20

    int-to-long v4, v4

    .line 161
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 160
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 164
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 165
    move v3, v15

    :goto_cc
    if-ge v3, v14, :cond_e1

    .line 166
    new-instance v4, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;-><init>()V

    .line 167
    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 168
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_cc

    .line 172
    :cond_e1
    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 173
    mul-int/lit8 v4, v14, 0x4

    int-to-long v4, v4

    .line 174
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 173
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 177
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 178
    move v3, v15

    :goto_100
    if-ge v3, v14, :cond_115

    .line 179
    new-instance v4, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;-><init>()V

    .line 180
    mul-int/lit8 v5, v3, 0x4

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 181
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_100

    .line 185
    :cond_115
    const-wide/16 v2, 0x58

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 186
    mul-int/lit8 v4, v14, 0x1

    int-to-long v4, v4

    .line 187
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 186
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 190
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 191
    move v3, v15

    :goto_134
    if-ge v3, v14, :cond_149

    .line 192
    new-instance v4, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    invoke-direct {v4}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;-><init>()V

    .line 193
    mul-int/lit8 v5, v3, 0x1

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 194
    iget-object v5, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_134

    .line 198
    :cond_149
    const-wide/16 v2, 0x68

    add-long v2, p3, v2

    add-long/2addr v12, v2

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 199
    mul-int/lit8 v4, v12, 0x2

    int-to-long v4, v4

    .line 200
    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long/2addr v2, v10

    .line 199
    const/4 v8, 0x1

    move-wide/from16 v16, v6

    move-wide v6, v2

    move-wide v2, v4

    move-wide/from16 v4, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 203
    iget-object v3, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 204
    nop

    :goto_16b
    if-ge v15, v12, :cond_180

    .line 205
    new-instance v3, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    invoke-direct {v3}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;-><init>()V

    .line 206
    mul-int/lit8 v4, v15, 0x2

    int-to-long v4, v4

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 207
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v15, v15, 0x1

    goto :goto_16b

    .line 210
    :cond_180
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 91
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 92
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ".name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-static {v1}, Landroid/hardware/radio/V1_0/CdmaInfoRecName;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .display = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .signal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, ", .redir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    const-string v1, ", .lineCtrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", .clir = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", .audioCtrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget v6, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->name:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 239
    iget-object v4, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 240
    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long v9, v7, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 241
    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 242
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x10

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 243
    move v12, v13

    :goto_2c
    if-ge v12, v4, :cond_43

    .line 244
    iget-object v14, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->display:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;

    mul-int/lit8 v15, v12, 0x10

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v11, v2, v3}, Landroid/hardware/radio/V1_0/CdmaDisplayInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 243
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v16

    goto :goto_2c

    .line 246
    :cond_43
    move-wide/from16 v16, v2

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 249
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 250
    const-wide/16 v3, 0x18

    add-long v3, p2, v3

    add-long v7, v3, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 251
    add-long v7, v3, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 252
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x18

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 253
    move v8, v13

    :goto_66
    if-ge v8, v2, :cond_79

    .line 254
    iget-object v11, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->number:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;

    mul-int/lit8 v12, v8, 0x18

    int-to-long v14, v12

    invoke-virtual {v11, v7, v14, v15}, Landroid/hardware/radio/V1_0/CdmaNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 253
    add-int/lit8 v8, v8, 0x1

    goto :goto_66

    .line 256
    :cond_79
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 259
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 260
    const-wide/16 v3, 0x28

    add-long v3, p2, v3

    add-long v7, v3, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 261
    add-long v7, v3, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 262
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x4

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 263
    move v8, v13

    :goto_9a
    if-ge v8, v2, :cond_ad

    .line 264
    iget-object v11, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->signal:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;

    mul-int/lit8 v12, v8, 0x4

    int-to-long v14, v12

    invoke-virtual {v11, v7, v14, v15}, Landroid/hardware/radio/V1_0/CdmaSignalInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 263
    add-int/lit8 v8, v8, 0x1

    goto :goto_9a

    .line 266
    :cond_ad
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 269
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 270
    const-wide/16 v3, 0x38

    add-long v3, p2, v3

    add-long v7, v3, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 271
    add-long v7, v3, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 272
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x20

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 273
    move v8, v13

    :goto_ce
    if-ge v8, v2, :cond_e1

    .line 274
    iget-object v11, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->redir:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;

    mul-int/lit8 v12, v8, 0x20

    int-to-long v14, v12

    invoke-virtual {v11, v7, v14, v15}, Landroid/hardware/radio/V1_0/CdmaRedirectingNumberInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 273
    add-int/lit8 v8, v8, 0x1

    goto :goto_ce

    .line 276
    :cond_e1
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 279
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 280
    const-wide/16 v3, 0x48

    add-long v3, p2, v3

    add-long v7, v3, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 281
    add-long v7, v3, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 282
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x4

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 283
    move v8, v13

    :goto_102
    if-ge v8, v2, :cond_115

    .line 284
    iget-object v11, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->lineCtrl:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;

    mul-int/lit8 v12, v8, 0x4

    int-to-long v14, v12

    invoke-virtual {v11, v7, v14, v15}, Landroid/hardware/radio/V1_0/CdmaLineControlInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 283
    add-int/lit8 v8, v8, 0x1

    goto :goto_102

    .line 286
    :cond_115
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 289
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 290
    const-wide/16 v3, 0x58

    add-long v3, p2, v3

    add-long v7, v3, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 291
    add-long v7, v3, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 292
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x1

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 293
    move v8, v13

    :goto_136
    if-ge v8, v2, :cond_149

    .line 294
    iget-object v11, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->clir:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;

    mul-int/lit8 v12, v8, 0x1

    int-to-long v14, v12

    invoke-virtual {v11, v7, v14, v15}, Landroid/hardware/radio/V1_0/CdmaT53ClirInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 293
    add-int/lit8 v8, v8, 0x1

    goto :goto_136

    .line 296
    :cond_149
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 299
    iget-object v2, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 300
    const-wide/16 v3, 0x68

    add-long v3, p2, v3

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 301
    add-long/2addr v9, v3

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 302
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x2

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 303
    nop

    :goto_168
    if-ge v13, v2, :cond_17b

    .line 304
    iget-object v6, v0, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->audioCtrl:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;

    mul-int/lit8 v7, v13, 0x2

    int-to-long v7, v7

    invoke-virtual {v6, v5, v7, v8}, Landroid/hardware/radio/V1_0/CdmaT53AudioControlInfoRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 303
    add-int/lit8 v13, v13, 0x1

    goto :goto_168

    .line 306
    :cond_17b
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 308
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 213
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 214
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_0/CdmaInformationRecord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 215
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 216
    return-void
.end method
