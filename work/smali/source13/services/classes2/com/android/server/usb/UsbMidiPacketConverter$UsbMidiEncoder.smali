.class Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;
.super Ljava/lang/Object;
.source "UsbMidiPacketConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiPacketConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbMidiEncoder"
.end annotation


# instance fields
.field private mEmptyBytes:[B

.field private mHasSystemExclusiveStarted:Z

.field private mNumStoredSystemExclusiveBytes:I

.field private mStoredSystemExclusiveBytes:[B

.field final synthetic this$0:Lcom/android/server/usb/UsbMidiPacketConverter;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbMidiPacketConverter;)V
    .registers 3

    .line 128
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->this$0:Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 p1, 0x3

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 134
    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 136
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbMidiPacketConverter;Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;-><init>(Lcom/android/server/usb/UsbMidiPacketConverter;)V

    return-void
.end method

.method private writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V
    .registers 4
    .param p1, "outputStream"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "byteToWrite"    # B

    .line 239
    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 240
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 241
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 242
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 243
    return-void
.end method


# virtual methods
.method public encode([BI)[B
    .registers 12
    .param p1, "midiBytes"    # [B
    .param p2, "size"    # I

    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 149
    .local v1, "curLocation":I
    :goto_6
    if-ge v1, p2, :cond_f5

    .line 150
    aget-byte v2, p1, v1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ltz v2, :cond_34

    .line 151
    iget-boolean v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    if-eqz v2, :cond_2c

    .line 152
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    iget v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    aget-byte v8, p1, v1

    aput-byte v8, v2, v7

    .line 154
    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 155
    if-ne v7, v4, :cond_31

    .line 156
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 158
    iput v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto :goto_31

    .line 161
    :cond_2c
    aget-byte v2, p1, v1

    invoke-direct {p0, v0, v2}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 163
    :cond_31
    :goto_31
    add-int/lit8 v1, v1, 0x1

    .line 164
    goto :goto_6

    .line 165
    :cond_34
    aget-byte v2, p1, v1

    const/16 v7, -0x9

    if-eq v2, v7, :cond_51

    .line 167
    iget-boolean v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    if-eqz v2, :cond_51

    .line 168
    const/4 v2, 0x0

    .line 169
    .local v2, "index":I
    :goto_3f
    iget v8, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    if-ge v2, v8, :cond_4d

    .line 170
    iget-object v8, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    aget-byte v8, v8, v2

    invoke-direct {p0, v0, v8}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    .line 173
    :cond_4d
    iput v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 174
    iput-boolean v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 178
    .end local v2    # "index":I
    :cond_51
    aget-byte v2, p1, v1

    const/16 v8, -0x10

    if-ge v2, v8, :cond_81

    .line 179
    aget-byte v2, p1, v1

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    .line 180
    .local v2, "codeIndexNumber":B
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetPAYLOAD_SIZE()[I

    move-result-object v3

    aget v3, v3, v2

    .line 181
    .local v3, "channelMessageSize":I
    add-int v4, v1, v3

    if-gt v4, p2, :cond_76

    .line 182
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 183
    invoke-virtual {v0, p1, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 185
    iget-object v4, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    rsub-int/lit8 v6, v3, 0x3

    invoke-virtual {v0, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 186
    add-int/2addr v1, v3

    goto :goto_80

    .line 188
    :cond_76
    :goto_76
    if-ge v1, p2, :cond_80

    .line 189
    aget-byte v4, p1, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 193
    .end local v2    # "codeIndexNumber":B
    .end local v3    # "channelMessageSize":I
    :cond_80
    :goto_80
    goto :goto_6

    :cond_81
    aget-byte v2, p1, v1

    if-ne v2, v8, :cond_93

    .line 194
    iput-boolean v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 195
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    aget-byte v3, p1, v1

    aput-byte v3, v2, v5

    .line 196
    iput v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 198
    :cond_93
    aget-byte v2, p1, v1

    if-ne v2, v7, :cond_bc

    .line 200
    iget v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 202
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    iget v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    aget-byte v7, p1, v1

    aput-byte v7, v2, v3

    .line 204
    add-int/2addr v3, v6

    iput v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 205
    invoke-virtual {v0, v2, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 208
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    iget v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 209
    iput-boolean v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 210
    iput v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    .line 213
    :cond_bc
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    .line 214
    .local v2, "systemType":I
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetCODE_INDEX_NUMBER_FROM_SYSTEM_TYPE()[I

    move-result-object v3

    aget v3, v3, v2

    .line 215
    .local v3, "codeIndexNumber":I
    if-gez v3, :cond_d0

    .line 216
    aget-byte v4, p1, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_f3

    .line 219
    :cond_d0
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetPAYLOAD_SIZE()[I

    move-result-object v4

    aget v4, v4, v3

    .line 220
    .local v4, "systemMessageSize":I
    add-int v6, v1, v4

    if-gt v6, p2, :cond_e9

    .line 221
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 222
    invoke-virtual {v0, p1, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 224
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    rsub-int/lit8 v7, v4, 0x3

    invoke-virtual {v0, v6, v5, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 225
    add-int/2addr v1, v4

    goto :goto_f3

    .line 227
    :cond_e9
    :goto_e9
    if-ge v1, p2, :cond_f3

    .line 228
    aget-byte v5, p1, v1

    invoke-direct {p0, v0, v5}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    .line 233
    .end local v2    # "systemType":I
    .end local v3    # "codeIndexNumber":I
    .end local v4    # "systemMessageSize":I
    :cond_f3
    :goto_f3
    goto/16 :goto_6

    .line 235
    :cond_f5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method
