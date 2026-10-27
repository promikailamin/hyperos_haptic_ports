.class public Lcom/android/server/hdmi/HdmiCecAtomWriter;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;,
        Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    }
.end annotation


# static fields
.field private static final ERROR_CODE_UNKNOWN:I = -0x1

.field protected static final FEATURE_ABORT_OPCODE_UNKNOWN:I = 0x100


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 125
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs-IA;)V

    .line 127
    .local v0, "specialArgs":Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_2a

    .line 128
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    .line 129
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2a

    .line 130
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    .line 134
    :cond_2a
    return-object v0
.end method

.method private createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    .registers 14
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "direction"    # I
    .param p3, "errorCode"    # I
    .param p4, "callingUid"    # I

    .line 73
    const/4 v0, -0x1

    if-ne p3, v0, :cond_6

    .line 74
    const/4 v0, 0x0

    move v8, v0

    goto :goto_9

    .line 75
    :cond_6
    add-int/lit8 v0, p3, 0xa

    move v8, v0

    :goto_9
    nop

    .line 76
    .local v8, "sendMessageResult":I
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v5

    .line 77
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v7

    move-object v1, v0

    move-object v2, p0

    move v3, p4

    move v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;IIIIII)V

    .line 76
    return-object v0
.end method

.method private createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .registers 4
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 88
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    sparse-switch v0, :sswitch_data_18

    .line 94
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs-IA;)V

    return-object v0

    .line 90
    :sswitch_e
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object v0

    return-object v0

    .line 92
    :sswitch_13
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object v0

    return-object v0

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_13
        0x44 -> :sswitch_e
    .end sparse-switch
.end method

.method private createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 105
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs-IA;)V

    .line 107
    .local v0, "specialArgs":Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_24

    .line 108
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    .line 109
    .local v1, "keycode":I
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_20

    const/16 v2, 0x29

    if-gt v1, v2, :cond_20

    .line 110
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    goto :goto_24

    .line 112
    :cond_20
    add-int/lit16 v2, v1, 0x100

    iput v2, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    .line 116
    .end local v1    # "keycode":I
    :cond_24
    :goto_24
    return-object v0
.end method

.method private messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V
    .registers 13
    .param p1, "genericArgs"    # Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    .param p2, "specialArgs"    # Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    .line 145
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mUid:I

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDirection:I

    iget v3, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mInitiatorLogicalAddress:I

    iget v4, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDestinationLogicalAddress:I

    iget v5, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mOpcode:I

    iget v6, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mSendMessageResult:I

    iget v7, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    iget v8, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    iget v9, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->writeHdmiCecMessageReportedAtom(IIIIIIIII)V

    .line 155
    return-void
.end method


# virtual methods
.method public activeSourceChanged(III)V
    .registers 5
    .param p1, "logicalAddress"    # I
    .param p2, "physicalAddress"    # I
    .param p3, "relationshipToActiveSource"    # I

    .line 187
    const/16 v0, 0x135

    invoke-static {v0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 193
    return-void
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;II)V
    .registers 5
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "direction"    # I
    .param p3, "callingUid"    # I

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    .line 61
    return-void
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V
    .registers 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "direction"    # I
    .param p3, "callingUid"    # I
    .param p4, "errorCode"    # I

    .line 46
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    move-result-object v0

    .line 48
    .local v0, "genericArgs":Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object v1

    .line 49
    .local v1, "specialArgs":Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    invoke-direct {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V

    .line 50
    return-void
.end method

.method protected writeHdmiCecMessageReportedAtom(IIIIIIIII)V
    .registers 20
    .param p1, "uid"    # I
    .param p2, "direction"    # I
    .param p3, "initiatorLogicalAddress"    # I
    .param p4, "destinationLogicalAddress"    # I
    .param p5, "opcode"    # I
    .param p6, "sendMessageResult"    # I
    .param p7, "userControlPressedCommand"    # I
    .param p8, "featureAbortOpcode"    # I
    .param p9, "featureAbortReason"    # I

    .line 165
    const/16 v0, 0x136

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIII)V

    .line 176
    return-void
.end method
