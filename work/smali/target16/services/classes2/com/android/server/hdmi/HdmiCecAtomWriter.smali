.class public Lcom/android/server/hdmi/HdmiCecAtomWriter;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# static fields
.field protected static final FEATURE_ABORT_OPCODE_UNKNOWN:I = 0x100

.field protected static final PHYSICAL_ADDRESS_INVALID:I = 0xffff


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activeSourceChanged(III)V
    .registers 4

    const/16 p0, 0x135

    .line 220
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public final createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .registers 4

    .line 139
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter-IA;)V

    .line 141
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_2a

    .line 142
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    .line 143
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    array-length p0, p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_2a

    .line 144
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    aget-byte p0, p0, v1

    add-int/lit8 p0, p0, 0xa

    iput p0, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    :cond_2a
    return-object v0
.end method

.method public final createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    .registers 13

    const/4 v0, -0x1

    if-ne p3, v0, :cond_6

    const/4 p3, 0x0

    :goto_4
    move v7, p3

    goto :goto_9

    :cond_6
    add-int/lit8 p3, p3, 0xa

    goto :goto_4

    .line 85
    :goto_9
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v4

    .line 86
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v6

    move-object v1, p0

    move v3, p2

    move v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;IIIIII)V

    return-object v0
.end method

.method public final createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .registers 4

    .line 97
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_20

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1b

    const/16 p1, 0x84

    const/4 v1, 0x0

    if-eq v0, p1, :cond_15

    .line 108
    new-instance p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    invoke-direct {p1, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter-IA;)V

    return-object p1

    .line 106
    :cond_15
    new-instance p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    invoke-direct {p1, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter-IA;)V

    return-object p1

    .line 99
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object p0

    return-object p0

    .line 101
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object p0

    return-object p0
.end method

.method public final createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .registers 4

    .line 119
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter-IA;)V

    .line 121
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_24

    .line 122
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 p1, 0x0

    aget-byte p0, p0, p1

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_20

    const/16 p1, 0x29

    if-gt p0, p1, :cond_20

    const/4 p0, 0x2

    .line 124
    iput p0, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    return-object v0

    :cond_20
    add-int/lit16 p0, p0, 0x100

    .line 126
    iput p0, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    :cond_24
    return-object v0
.end method

.method public dsmStatusChanged(ZZI)V
    .registers 4

    const/16 p0, 0x2d4

    .line 261
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZI)V

    return-void
.end method

.method public final earcStateToEnum(I)I
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_10

    const/4 v0, 0x2

    if-eq p1, p0, :cond_f

    const/4 p0, 0x3

    if-eq p1, v0, :cond_e

    if-eq p1, p0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x4

    :cond_e
    return p0

    :cond_f
    return v0

    :cond_10
    return p0
.end method

.method public earcStatusChanged(ZZIII)V
    .registers 6

    .line 240
    invoke-virtual {p0, p3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStateToEnum(I)I

    move-result p3

    .line 241
    invoke-virtual {p0, p4}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->earcStateToEnum(I)I

    move-result p4

    const/16 p0, 0x2bd

    .line 243
    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZIII)V

    return-void
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;II)V
    .registers 5

    const/4 v0, -0x1

    .line 69
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    return-void
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V
    .registers 5

    .line 55
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    move-result-object p2

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object p1

    .line 58
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V

    return-void
.end method

.method public final messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V
    .registers 14

    .line 176
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mUid:I

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDirection:I

    iget v3, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mInitiatorLogicalAddress:I

    iget v4, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDestinationLogicalAddress:I

    iget v5, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mOpcode:I

    iget v6, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mSendMessageResult:I

    iget v7, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    iget v8, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    iget v9, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    iget v10, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mPhysicalAddress:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->writeHdmiCecMessageReportedAtom(IIIIIIIIII)V

    return-void
.end method

.method public powerStateChangeOnActiveSourceLostChanged(ZILjava/lang/String;II)V
    .registers 6

    const/16 p0, 0x3df

    .line 279
    invoke-static/range {p0 .. p5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZILjava/lang/String;II)V

    return-void
.end method

.method public writeHdmiCecMessageReportedAtom(IIIIIIIIII)V
    .registers 11

    const/16 p0, 0x136

    .line 197
    invoke-static/range {p0 .. p10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIIII)V

    return-void
.end method
