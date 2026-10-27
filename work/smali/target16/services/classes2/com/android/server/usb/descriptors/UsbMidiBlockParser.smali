.class public Lcom/android/server/usb/descriptors/UsbMidiBlockParser;
.super Ljava/lang/Object;
.source "UsbMidiBlockParser.java"


# instance fields
.field public mGroupTerminalBlocks:Ljava/util/ArrayList;

.field public mHeaderDescriptorSubtype:I

.field public mHeaderDescriptorType:I

.field public mHeaderLength:I

.field public mTotalLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public calculateMidiType(Landroid/hardware/usb/UsbDeviceConnection;II)I
    .registers 21

    move-object/from16 v0, p0

    .line 147
    const-string v1, "UsbMidiBlockParser"

    const/4 v2, 0x5

    new-array v8, v2, [B

    move/from16 v2, p3

    add-int/lit16 v12, v2, 0x2600

    const/4 v9, 0x5

    const/16 v10, 0x7d0

    const/4 v2, 0x1

    const/16 v4, 0x81

    const/4 v5, 0x6

    move-object/from16 v3, p1

    move/from16 v7, p2

    move v6, v12

    .line 151
    :try_start_17
    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v4

    if-lez v4, :cond_e5

    .line 161
    aget-byte v3, v8, v2

    const/16 v4, 0x26

    if-eq v3, v4, :cond_3d

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect descriptor type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v8, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_3a
    move-exception v0

    goto/16 :goto_fa

    :cond_3d
    const/4 v3, 0x2

    .line 165
    aget-byte v4, v8, v3

    if-eq v4, v2, :cond_59

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect descriptor subtype: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, v8, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_59
    const/4 v3, 0x3

    .line 169
    aget-byte v3, v8, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    aget-byte v4, v8, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int v15, v3, v4

    if-gtz v15, :cond_7e

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parsed a non-positive block terminal size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 175
    :cond_7e
    new-array v14, v15, [B

    const/4 v11, 0x6

    const/16 v16, 0x7d0

    const/16 v10, 0x81

    move-object/from16 v9, p1

    move/from16 v13, p2

    .line 176
    invoke-virtual/range {v9 .. v16}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v3

    if-lez v3, :cond_cf

    .line 186
    new-instance v3, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v3, v14}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 187
    invoke-virtual {v0, v3}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 188
    iget-object v3, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 189
    const-string v0, "Group Terminal Blocks failed parsing: 1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 192
    :cond_a5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIDI protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    iget v4, v4, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    iget v0, v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->mMidiProtocol:I

    return v0

    .line 196
    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "second transfer failed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 199
    :cond_e5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "first transfer failed: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_f9} :catch_3a

    goto :goto_ff

    .line 202
    :goto_fa
    const-string v3, "Can not communicate with USB device"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_ff
    return v2
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 10

    .line 211
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 213
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderLength:I

    const-string v2, "length"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000002L

    .line 214
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorType:I

    const-string v2, "descriptor_type"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000003L

    .line 216
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorSubtype:I

    const-string v2, "descriptor_subtype"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000004L

    .line 218
    iget p4, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mTotalLength:I

    const-string/jumbo v2, "total_length"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 219
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p4

    const/4 v0, 0x0

    :goto_3c
    if-ge v0, p4, :cond_51

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    .line 220
    const-string v2, "block"

    const-wide v3, 0x20b00000005L

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_3c

    .line 223
    :cond_51
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 4

    .line 121
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderLength:I

    .line 122
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorType:I

    .line 123
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mHeaderDescriptorSubtype:I

    .line 124
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mTotalLength:I

    .line 126
    :goto_18
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/16 v1, 0xd

    if-lt v0, v1, :cond_2e

    .line 127
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;

    invoke-direct {v0}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser$GroupTerminalBlock;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 129
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mGroupTerminalBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 132
    :cond_2e
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->mTotalLength:I

    return p0
.end method
