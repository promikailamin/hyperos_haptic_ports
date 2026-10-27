.class Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;
.super Ljava/lang/Object;
.source "UsbMidiPacketConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMidiPacketConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsbMidiDecoder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiPacketConverter;


# direct methods
.method private constructor <init>(Lcom/android/server/usb/UsbMidiPacketConverter;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->this$0:Lcom/android/server/usb/UsbMidiPacketConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usb/UsbMidiPacketConverter;Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;-><init>(Lcom/android/server/usb/UsbMidiPacketConverter;)V

    return-void
.end method


# virtual methods
.method public decode([BI)[B
    .registers 8
    .param p1, "usbMidiBytes"    # [B
    .param p2, "size"    # I

    .line 115
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 116
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    add-int/lit8 v2, v1, 0x3

    if-ge v2, p2, :cond_1f

    .line 117
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0xf

    .line 118
    .local v2, "codeIndex":I
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetPAYLOAD_SIZE()[I

    move-result-object v3

    aget v3, v3, v2

    .line 119
    .local v3, "numPayloadBytes":I
    if-gez v3, :cond_17

    .line 120
    goto :goto_1c

    .line 122
    :cond_17
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, p1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 116
    .end local v2    # "codeIndex":I
    .end local v3    # "numPayloadBytes":I
    :goto_1c
    add-int/lit8 v1, v1, 0x4

    goto :goto_6

    .line 124
    .end local v1    # "i":I
    :cond_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method
