.class public final Lcom/android/server/am/nano/Capabilities;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "Capabilities.java"


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/am/nano/Capabilities;


# instance fields
.field public blacklist frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

.field public blacklist values:[Lcom/android/server/am/nano/Capability;

.field public blacklist vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

.field public blacklist vmInfo:Lcom/android/server/am/nano/VMInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/android/server/am/nano/Capabilities;->clear()Lcom/android/server/am/nano/Capabilities;

    .line 37
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/am/nano/Capabilities;
    .registers 2

    .line 12
    sget-object v0, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    if-nez v0, :cond_15

    .line 13
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_7
    sget-object v1, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    if-nez v1, :cond_10

    .line 16
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/am/nano/Capabilities;

    sput-object v1, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    .line 18
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 20
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/am/nano/Capabilities;->_emptyArray:[Lcom/android/server/am/nano/Capabilities;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Lcom/android/server/am/nano/Capabilities;

    invoke-direct {v0}, Lcom/android/server/am/nano/Capabilities;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/am/nano/Capabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/am/nano/Capabilities;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 206
    new-instance v0, Lcom/android/server/am/nano/Capabilities;

    invoke-direct {v0}, Lcom/android/server/am/nano/Capabilities;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/nano/Capabilities;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/am/nano/Capabilities;
    .registers 2

    .line 40
    invoke-static {}, Lcom/android/server/am/nano/Capability;->emptyArray()[Lcom/android/server/am/nano/Capability;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    .line 41
    invoke-static {}, Lcom/android/server/am/nano/VMCapability;->emptyArray()[Lcom/android/server/am/nano/VMCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    .line 42
    invoke-static {}, Lcom/android/server/am/nano/FrameworkCapability;->emptyArray()[Lcom/android/server/am/nano/FrameworkCapability;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/nano/Capabilities;->cachedSize:I

    .line 45
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 83
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v1, v1

    if-lez v1, :cond_24

    .line 85
    move v1, v2

    :goto_f
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v3, v3

    if-ge v1, v3, :cond_24

    .line 86
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    aget-object v3, v3, v1

    .line 87
    if-eqz v3, :cond_21

    .line 88
    nop

    .line 89
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 85
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 93
    :cond_24
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    if-eqz v1, :cond_43

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v1, v1

    if-lez v1, :cond_43

    .line 94
    move v1, v2

    :goto_2e
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v3, v3

    if-ge v1, v3, :cond_43

    .line 95
    iget-object v3, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    aget-object v3, v3, v1

    .line 96
    if-eqz v3, :cond_40

    .line 97
    nop

    .line 98
    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 94
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 102
    :cond_43
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v1, v1

    if-lez v1, :cond_62

    .line 103
    nop

    :goto_4d
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v1, v1

    if-ge v2, v1, :cond_62

    .line 104
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    aget-object v1, v1, v2

    .line 105
    if-eqz v1, :cond_5f

    .line 106
    nop

    .line 107
    const/4 v3, 0x3

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 111
    :cond_62
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    if-eqz v1, :cond_6e

    .line 112
    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    .line 113
    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_6e
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/am/nano/Capabilities;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/am/nano/Capabilities;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    nop

    :goto_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 124
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_e4

    .line 128
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 129
    return-object p0

    .line 194
    :sswitch_10
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    if-nez v0, :cond_1b

    .line 195
    new-instance v0, Lcom/android/server/am/nano/VMInfo;

    invoke-direct {v0}, Lcom/android/server/am/nano/VMInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    .line 197
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_e1

    .line 174
    :sswitch_22
    nop

    .line 175
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 176
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    if-nez v2, :cond_2f

    move v2, v1

    goto :goto_32

    :cond_2f
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v2, v2

    .line 177
    :goto_32
    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/android/server/am/nano/FrameworkCapability;

    .line 179
    if-eqz v2, :cond_3c

    .line 180
    iget-object v4, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_52

    .line 183
    new-instance v1, Lcom/android/server/am/nano/FrameworkCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/FrameworkCapability;-><init>()V

    aput-object v1, v3, v2

    .line 184
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 185
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 188
    :cond_52
    new-instance v0, Lcom/android/server/am/nano/FrameworkCapability;

    invoke-direct {v0}, Lcom/android/server/am/nano/FrameworkCapability;-><init>()V

    aput-object v0, v3, v2

    .line 189
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 190
    iput-object v3, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    .line 191
    goto/16 :goto_e1

    .line 154
    :sswitch_62
    nop

    .line 155
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 156
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    if-nez v2, :cond_6f

    move v2, v1

    goto :goto_72

    :cond_6f
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v2, v2

    .line 157
    :goto_72
    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/android/server/am/nano/VMCapability;

    .line 159
    if-eqz v2, :cond_7c

    .line 160
    iget-object v4, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    :cond_7c
    :goto_7c
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_92

    .line 163
    new-instance v1, Lcom/android/server/am/nano/VMCapability;

    invoke-direct {v1}, Lcom/android/server/am/nano/VMCapability;-><init>()V

    aput-object v1, v3, v2

    .line 164
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 165
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 168
    :cond_92
    new-instance v0, Lcom/android/server/am/nano/VMCapability;

    invoke-direct {v0}, Lcom/android/server/am/nano/VMCapability;-><init>()V

    aput-object v0, v3, v2

    .line 169
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 170
    iput-object v3, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    .line 171
    goto :goto_e1

    .line 134
    :sswitch_a1
    nop

    .line 135
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 136
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    if-nez v2, :cond_ae

    move v2, v1

    goto :goto_b1

    :cond_ae
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v2, v2

    .line 137
    :goto_b1
    add-int/2addr v0, v2

    new-array v3, v0, [Lcom/android/server/am/nano/Capability;

    .line 139
    if-eqz v2, :cond_bb

    .line 140
    iget-object v4, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    :cond_bb
    :goto_bb
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_d1

    .line 143
    new-instance v1, Lcom/android/server/am/nano/Capability;

    invoke-direct {v1}, Lcom/android/server/am/nano/Capability;-><init>()V

    aput-object v1, v3, v2

    .line 144
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 145
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_bb

    .line 148
    :cond_d1
    new-instance v0, Lcom/android/server/am/nano/Capability;

    invoke-direct {v0}, Lcom/android/server/am/nano/Capability;-><init>()V

    aput-object v0, v3, v2

    .line 149
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 150
    iput-object v3, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    .line 151
    goto :goto_e1

    .line 126
    :sswitch_e0
    return-object p0

    .line 201
    :cond_e1
    :goto_e1
    goto/16 :goto_1

    nop

    :sswitch_data_e4
    .sparse-switch
        0x0 -> :sswitch_e0
        0xa -> :sswitch_a1
        0x12 -> :sswitch_62
        0x1a -> :sswitch_22
        0x22 -> :sswitch_10
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v0, v0

    if-lez v0, :cond_1d

    .line 52
    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    .line 53
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->values:[Lcom/android/server/am/nano/Capability;

    aget-object v2, v2, v0

    .line 54
    if-eqz v2, :cond_1a

    .line 55
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 52
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 59
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v0, v0

    if-lez v0, :cond_39

    .line 60
    move v0, v1

    :goto_27
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    array-length v2, v2

    if-ge v0, v2, :cond_39

    .line 61
    iget-object v2, p0, Lcom/android/server/am/nano/Capabilities;->vmCapabilities:[Lcom/android/server/am/nano/VMCapability;

    aget-object v2, v2, v0

    .line 62
    if-eqz v2, :cond_36

    .line 63
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 60
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 67
    :cond_39
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v0, v0

    if-lez v0, :cond_55

    .line 68
    nop

    :goto_43
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    array-length v0, v0

    if-ge v1, v0, :cond_55

    .line 69
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->frameworkCapabilities:[Lcom/android/server/am/nano/FrameworkCapability;

    aget-object v0, v0, v1

    .line 70
    if-eqz v0, :cond_52

    .line 71
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 68
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 75
    :cond_55
    iget-object v0, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    if-eqz v0, :cond_5f

    .line 76
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/server/am/nano/Capabilities;->vmInfo:Lcom/android/server/am/nano/VMInfo;

    invoke-virtual {p1, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 78
    :cond_5f
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 79
    return-void
.end method
