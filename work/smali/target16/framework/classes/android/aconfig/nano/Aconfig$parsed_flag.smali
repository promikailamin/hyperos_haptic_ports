.class public final Landroid/aconfig/nano/Aconfig$parsed_flag;
.super Landroid/internal/framework/protobuf/nano/MessageNano;
.source "Aconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/aconfig/nano/Aconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "parsed_flag"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;


# instance fields
.field public blacklist bug:[Ljava/lang/String;

.field public blacklist container:Ljava/lang/String;

.field public blacklist description:Ljava/lang/String;

.field public blacklist isExported:Z

.field public blacklist isFixedReadOnly:Z

.field public blacklist metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

.field public blacklist name:Ljava/lang/String;

.field public blacklist namespace:Ljava/lang/String;

.field public blacklist package_:Ljava/lang/String;

.field public blacklist permission:I

.field public blacklist state:I

.field public blacklist trace:[Landroid/aconfig/nano/Aconfig$tracepoint;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 916
    invoke-direct {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;-><init>()V

    .line 917
    invoke-virtual {p0}, Landroid/aconfig/nano/Aconfig$parsed_flag;->clear()Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 918
    return-void
.end method

.method public static blacklist emptyArray()[Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 2

    .line 869
    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-nez v0, :cond_15

    .line 870
    sget-object v0, Landroid/internal/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 872
    :try_start_7
    sget-object v1, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    if-nez v1, :cond_10

    .line 873
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/aconfig/nano/Aconfig$parsed_flag;

    sput-object v1, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    .line 875
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 877
    :cond_15
    :goto_15
    sget-object v0, Landroid/aconfig/nano/Aconfig$parsed_flag;->_emptyArray:[Landroid/aconfig/nano/Aconfig$parsed_flag;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1177
    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    invoke-virtual {v0, p0}, Landroid/aconfig/nano/Aconfig$parsed_flag;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/internal/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1171
    new-instance v0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$parsed_flag;-><init>()V

    invoke-static {v0, p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->mergeFrom(Landroid/internal/framework/protobuf/nano/MessageNano;[B)Landroid/internal/framework/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Landroid/aconfig/nano/Aconfig$parsed_flag;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 3

    .line 921
    const-string v0, ""

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    .line 922
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    .line 923
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    .line 924
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    .line 925
    sget-object v1, Landroid/internal/framework/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    .line 926
    const/4 v1, 0x1

    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    .line 927
    iput v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    .line 928
    invoke-static {}, Landroid/aconfig/nano/Aconfig$tracepoint;->emptyArray()[Landroid/aconfig/nano/Aconfig$tracepoint;

    move-result-object v1

    iput-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 929
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    .line 930
    iput-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    .line 931
    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 933
    const/4 v0, -0x1

    iput v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->cachedSize:I

    .line 934
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 9

    .line 991
    invoke-super {p0}, Landroid/internal/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 992
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_16

    .line 993
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    .line 994
    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 996
    :cond_16
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 997
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    .line 998
    const/4 v4, 0x2

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1000
    :cond_26
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 1001
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    .line 1002
    const/4 v4, 0x3

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1004
    :cond_36
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    .line 1005
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    .line 1006
    const/4 v4, 0x4

    invoke-static {v4, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    :cond_46
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v1, :cond_6e

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_6e

    .line 1009
    nop

    .line 1010
    nop

    .line 1011
    move v1, v4

    move v5, v1

    move v6, v5

    :goto_55
    iget-object v7, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_6b

    .line 1012
    iget-object v7, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    aget-object v7, v7, v1

    .line 1013
    if-eqz v7, :cond_68

    .line 1014
    add-int/lit8 v6, v6, 0x1

    .line 1015
    nop

    .line 1016
    invoke-static {v7}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v5, v7

    .line 1011
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 1019
    :cond_6b
    add-int/2addr v0, v5

    .line 1020
    mul-int/2addr v6, v3

    add-int/2addr v0, v6

    .line 1022
    :cond_6e
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    if-eq v1, v3, :cond_7a

    .line 1023
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    .line 1024
    const/4 v5, 0x6

    invoke-static {v5, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1026
    :cond_7a
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    if-eq v1, v3, :cond_86

    .line 1027
    iget v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    .line 1028
    const/4 v3, 0x7

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1030
    :cond_86
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-eqz v1, :cond_a6

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v1, v1

    if-lez v1, :cond_a6

    .line 1031
    nop

    :goto_90
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v1, v1

    if-ge v4, v1, :cond_a6

    .line 1032
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    aget-object v1, v1, v4

    .line 1033
    if-eqz v1, :cond_a3

    .line 1034
    nop

    .line 1035
    const/16 v3, 0x8

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1031
    :cond_a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_90

    .line 1039
    :cond_a6
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    if-eqz v1, :cond_b3

    .line 1040
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    .line 1041
    const/16 v3, 0x9

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1043
    :cond_b3
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    if-eqz v1, :cond_c0

    .line 1044
    iget-boolean v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    .line 1045
    const/16 v3, 0xa

    invoke-static {v3, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1047
    :cond_c0
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d1

    .line 1048
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    .line 1049
    const/16 v2, 0xb

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1051
    :cond_d1
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-eqz v1, :cond_de

    .line 1052
    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 1053
    const/16 v2, 0xc

    invoke-static {v2, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILandroid/internal/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1055
    :cond_de
    return v0
.end method

.method public blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1063
    nop

    :goto_1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1064
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_e2

    .line 1068
    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_e0

    .line 1069
    return-object p0

    .line 1159
    :sswitch_10
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-nez v0, :cond_1b

    .line 1160
    new-instance v0, Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$flag_metadata;-><init>()V

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    .line 1162
    :cond_1b
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-virtual {p1, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_e0

    .line 1155
    :sswitch_22
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    .line 1156
    goto/16 :goto_e0

    .line 1151
    :sswitch_2a
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    .line 1152
    goto/16 :goto_e0

    .line 1147
    :sswitch_32
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    .line 1148
    goto/16 :goto_e0

    .line 1127
    :sswitch_3a
    nop

    .line 1128
    const/16 v0, 0x42

    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1129
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-nez v2, :cond_47

    move v2, v1

    goto :goto_4a

    :cond_47
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v2, v2

    .line 1130
    :goto_4a
    add-int/2addr v0, v2

    new-array v3, v0, [Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 1132
    if-eqz v2, :cond_54

    .line 1133
    iget-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1135
    :cond_54
    :goto_54
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_6a

    .line 1136
    new-instance v1, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v1}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    aput-object v1, v3, v2

    .line 1137
    aget-object v1, v3, v2

    invoke-virtual {p1, v1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1138
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1135
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 1141
    :cond_6a
    new-instance v0, Landroid/aconfig/nano/Aconfig$tracepoint;

    invoke-direct {v0}, Landroid/aconfig/nano/Aconfig$tracepoint;-><init>()V

    aput-object v0, v3, v2

    .line 1142
    aget-object v0, v3, v2

    invoke-virtual {p1, v0}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Landroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 1143
    iput-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    .line 1144
    goto/16 :goto_e0

    .line 1117
    :sswitch_7a
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1118
    packed-switch v0, :pswitch_data_118

    goto :goto_84

    .line 1121
    :pswitch_82
    iput v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    .line 1124
    :goto_84
    goto :goto_e0

    .line 1107
    :sswitch_85
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    .line 1108
    packed-switch v0, :pswitch_data_120

    goto :goto_8f

    .line 1111
    :pswitch_8d
    iput v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    .line 1114
    :goto_8f
    goto :goto_e0

    .line 1090
    :sswitch_90
    nop

    .line 1091
    const/16 v0, 0x2a

    invoke-static {p1, v0}, Landroid/internal/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1092
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    if-nez v2, :cond_9d

    move v2, v1

    goto :goto_a0

    :cond_9d
    iget-object v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v2, v2

    .line 1093
    :goto_a0
    add-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    .line 1094
    if-eqz v2, :cond_aa

    .line 1095
    iget-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1097
    :cond_aa
    :goto_aa
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_ba

    .line 1098
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 1099
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1097
    add-int/lit8 v2, v2, 0x1

    goto :goto_aa

    .line 1102
    :cond_ba
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 1103
    iput-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    .line 1104
    goto :goto_e0

    .line 1086
    :sswitch_c3
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    .line 1087
    goto :goto_e0

    .line 1082
    :sswitch_ca
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    .line 1083
    goto :goto_e0

    .line 1078
    :sswitch_d1
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    .line 1079
    goto :goto_e0

    .line 1074
    :sswitch_d8
    invoke-virtual {p1}, Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    .line 1075
    goto :goto_e0

    .line 1066
    :sswitch_df
    return-object p0

    .line 1166
    :cond_e0
    :goto_e0
    goto/16 :goto_1

    :sswitch_data_e2
    .sparse-switch
        0x0 -> :sswitch_df
        0xa -> :sswitch_d8
        0x12 -> :sswitch_d1
        0x1a -> :sswitch_ca
        0x22 -> :sswitch_c3
        0x2a -> :sswitch_90
        0x30 -> :sswitch_85
        0x38 -> :sswitch_7a
        0x42 -> :sswitch_3a
        0x48 -> :sswitch_32
        0x50 -> :sswitch_2a
        0x5a -> :sswitch_22
        0x62 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_82
        :pswitch_82
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_8d
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/internal/framework/protobuf/nano/MessageNano;
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

    .line 863
    invoke-virtual {p0, p1}, Landroid/aconfig/nano/Aconfig$parsed_flag;->mergeFrom(Landroid/internal/framework/protobuf/nano/CodedInputByteBufferNano;)Landroid/aconfig/nano/Aconfig$parsed_flag;

    move-result-object p1

    return-object p1
.end method

.method public blacklist writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 940
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 941
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->package_:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 943
    :cond_10
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 944
    const/4 v0, 0x2

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 946
    :cond_1e
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 947
    const/4 v0, 0x3

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->namespace:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 949
    :cond_2c
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 950
    const/4 v0, 0x4

    iget-object v3, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->description:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 952
    :cond_3a
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_57

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_57

    .line 953
    move v0, v3

    :goto_45
    iget-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_57

    .line 954
    iget-object v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->bug:[Ljava/lang/String;

    aget-object v4, v4, v0

    .line 955
    if-eqz v4, :cond_54

    .line 956
    const/4 v5, 0x5

    invoke-virtual {p1, v5, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 953
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 960
    :cond_57
    iget v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    if-eq v0, v2, :cond_61

    .line 961
    const/4 v0, 0x6

    iget v4, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->state:I

    invoke-virtual {p1, v0, v4}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 963
    :cond_61
    iget v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    if-eq v0, v2, :cond_6b

    .line 964
    const/4 v0, 0x7

    iget v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->permission:I

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 966
    :cond_6b
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    if-eqz v0, :cond_88

    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v0, v0

    if-lez v0, :cond_88

    .line 967
    nop

    :goto_75
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    array-length v0, v0

    if-ge v3, v0, :cond_88

    .line 968
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->trace:[Landroid/aconfig/nano/Aconfig$tracepoint;

    aget-object v0, v0, v3

    .line 969
    if-eqz v0, :cond_85

    .line 970
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 967
    :cond_85
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 974
    :cond_88
    iget-boolean v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    if-eqz v0, :cond_93

    .line 975
    const/16 v0, 0x9

    iget-boolean v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isFixedReadOnly:Z

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 977
    :cond_93
    iget-boolean v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    if-eqz v0, :cond_9e

    .line 978
    const/16 v0, 0xa

    iget-boolean v2, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->isExported:Z

    invoke-virtual {p1, v0, v2}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 980
    :cond_9e
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 981
    const/16 v0, 0xb

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->container:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 983
    :cond_ad
    iget-object v0, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    if-eqz v0, :cond_b8

    .line 984
    const/16 v0, 0xc

    iget-object v1, p0, Landroid/aconfig/nano/Aconfig$parsed_flag;->metadata:Landroid/aconfig/nano/Aconfig$flag_metadata;

    invoke-virtual {p1, v0, v1}, Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILandroid/internal/framework/protobuf/nano/MessageNano;)V

    .line 986
    :cond_b8
    invoke-super {p0, p1}, Landroid/internal/framework/protobuf/nano/MessageNano;->writeTo(Landroid/internal/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 987
    return-void
.end method
