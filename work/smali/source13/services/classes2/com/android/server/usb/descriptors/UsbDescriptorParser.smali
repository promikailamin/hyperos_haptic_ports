.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "UsbDescriptorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final DESCRIPTORS_ALLOC_SIZE:I = 0x80

.field private static final IN_HEADSET_TRIGGER:F = 0.75f

.field private static final MS_MIDI_1_0:I = 0x100

.field private static final MS_MIDI_2_0:I = 0x200

.field private static final OUT_HEADSET_TRIGGER:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "UsbDescriptorParser"


# instance fields
.field private mACInterfacesSpec:I

.field private mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

.field private mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

.field private mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field private final mDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceAddr:Ljava/lang/String;

.field private mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

.field private mVCInterfacesSpec:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "deviceAddr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p2, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 53
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    .line 60
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 5
    .param p1, "deviceAddr"    # Ljava/lang/String;
    .param p2, "rawDescriptors"    # [B

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 53
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    .line 71
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDescriptors([B)V

    .line 74
    return-void
.end method

.method private allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 9
    .param p1, "stream"    # Lcom/android/server/usb/descriptors/ByteStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->resetReadCount()V

    .line 132
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 133
    .local v0, "length":I
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    .line 135
    .local v1, "type":B
    invoke-static {v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->logDescriptorName(BI)V

    .line 137
    const/4 v2, 0x0

    .line 138
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    const-string v3, "UsbDescriptorParser"

    sparse-switch v1, :sswitch_data_10c

    goto/16 :goto_102

    .line 232
    :sswitch_16
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_102

    .line 233
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    .line 234
    .local v4, "subClass":I
    sparse-switch v4, :sswitch_data_12e

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Unparsed Class-specific Endpoint:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 265
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 262
    :sswitch_3c
    goto :goto_61

    .line 247
    :sswitch_3d
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 252
    .local v3, "subType":Ljava/lang/Byte;
    nop

    .line 253
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 252
    invoke-static {p0, v0, v1, v5}, Lcom/android/server/usb/descriptors/UsbVCEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 255
    .end local v3    # "subType":Ljava/lang/Byte;
    goto :goto_61

    .line 236
    :sswitch_4f
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    .line 241
    .restart local v3    # "subType":Ljava/lang/Byte;
    nop

    .line 242
    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 241
    invoke-static {p0, v0, v1, v5}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 244
    .end local v3    # "subType":Ljava/lang/Byte;
    nop

    .line 269
    :goto_61
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    if-eqz v3, :cond_6a

    if-eqz v2, :cond_6a

    .line 270
    invoke-virtual {v3, v2}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->setClassSpecificEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptor;)V

    .line 272
    .end local v4    # "subClass":I
    :cond_6a
    goto/16 :goto_102

    .line 199
    :sswitch_6c
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_102

    .line 200
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_13c

    .line 225
    const-string v4, "  Unparsed Class-specific"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    goto/16 :goto_102

    .line 222
    :sswitch_7e
    goto/16 :goto_102

    .line 214
    :sswitch_80
    nop

    .line 215
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbVCInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 216
    goto/16 :goto_102

    .line 202
    :sswitch_87
    nop

    .line 203
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v2

    .line 204
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v3, :cond_102

    .line 205
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v3, v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->setMidiHeaderInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptor;)V

    goto/16 :goto_102

    .line 185
    :sswitch_97
    new-instance v3, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;-><init>(IB)V

    move-object v2, v3

    .line 186
    goto :goto_102

    .line 192
    :sswitch_9e
    new-instance v3, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;-><init>(IB)V

    move-object v2, v3

    .line 193
    goto :goto_102

    .line 169
    :sswitch_a5
    new-instance v4, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {v4, v0, v1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;-><init>(IB)V

    iput-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-object v2, v4

    .line 170
    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_b8

    .line 171
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-virtual {v4, v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    goto :goto_102

    .line 174
    :cond_b8
    const-string v4, "Endpoint Descriptor found with no associated Interface Descriptor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v3

    .line 158
    :sswitch_c3
    new-instance v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {v4, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;-><init>(IB)V

    iput-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-object v2, v4

    .line 159
    iget-object v5, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz v5, :cond_d3

    .line 160
    invoke-virtual {v5, v4}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    goto :goto_102

    .line 162
    :cond_d3
    const-string v4, "Interface Descriptor found with no associated Config Descriptor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v3

    .line 147
    :sswitch_de
    new-instance v4, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {v4, v0, v1}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;-><init>(IB)V

    iput-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    move-object v2, v4

    .line 148
    iget-object v5, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v5, :cond_ee

    .line 149
    invoke-virtual {v5, v4}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    goto :goto_102

    .line 151
    :cond_ee
    const-string v4, "Config Descriptor found with no associated Device Descriptor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v3

    .line 143
    :sswitch_f9
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;-><init>(IB)V

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-object v2, v3

    .line 144
    nop

    .line 279
    :cond_102
    :goto_102
    if-nez v2, :cond_10a

    .line 281
    new-instance v3, Lcom/android/server/usb/descriptors/UsbUnknown;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/UsbUnknown;-><init>(IB)V

    move-object v2, v3

    .line 284
    :cond_10a
    return-object v2

    nop

    :sswitch_data_10c
    .sparse-switch
        0x1 -> :sswitch_f9
        0x2 -> :sswitch_de
        0x4 -> :sswitch_c3
        0x5 -> :sswitch_a5
        0xb -> :sswitch_9e
        0x21 -> :sswitch_97
        0x24 -> :sswitch_6c
        0x25 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_12e
    .sparse-switch
        0x1 -> :sswitch_4f
        0xe -> :sswitch_3d
        0x10 -> :sswitch_3c
    .end sparse-switch

    :sswitch_data_13c
    .sparse-switch
        0x1 -> :sswitch_87
        0xe -> :sswitch_80
        0x10 -> :sswitch_7e
    .end sparse-switch
.end method

.method private calculateNumLegacyMidiPorts(Z)I
    .registers 14
    .param p1, "isOutput"    # Z

    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, "configDescriptor":Lcom/android/server/usb/descriptors/UsbConfigDescriptor;
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "UsbDescriptorParser"

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 809
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_50

    .line 810
    instance-of v4, v2, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz v4, :cond_24

    .line 811
    move-object v0, v2

    check-cast v0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 812
    goto :goto_51

    .line 814
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized Config l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 815
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 814
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_50
    goto :goto_7

    .line 819
    :cond_51
    :goto_51
    const/4 v1, 0x0

    if-nez v0, :cond_5a

    .line 820
    const-string v2, "Config not found"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return v1

    .line 824
    :cond_5a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 827
    .local v2, "legacyMidiInterfaceDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;>;"
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_67
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 828
    .local v4, "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v6

    if-ne v6, v5, :cond_9a

    .line 829
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9a

    .line 830
    nop

    .line 831
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getMidiHeaderInterfaceDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v5

    .line 832
    .local v5, "midiHeaderDescriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    if-eqz v5, :cond_9a

    .line 833
    instance-of v6, v5, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v6, :cond_9a

    .line 834
    move-object v6, v5

    check-cast v6, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 836
    .local v6, "midiHeader":Lcom/android/server/usb/descriptors/UsbMSMidiHeader;
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;->getMidiStreamingClass()I

    move-result v7

    const/16 v8, 0x100

    if-ne v7, v8, :cond_9a

    .line 837
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    .end local v4    # "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .end local v5    # "midiHeaderDescriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v6    # "midiHeader":Lcom/android/server/usb/descriptors/UsbMSMidiHeader;
    :cond_9a
    goto :goto_67

    .line 845
    :cond_9b
    const/4 v3, 0x0

    .line 846
    .local v3, "count":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 847
    .local v6, "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_ad
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v8

    if-ge v7, v8, :cond_d9

    .line 848
    nop

    .line 849
    invoke-virtual {v6, v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v8

    .line 851
    .local v8, "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v9

    if-nez v9, :cond_c0

    move v9, v5

    goto :goto_c1

    :cond_c0
    move v9, v1

    :goto_c1
    if-ne v9, p1, :cond_d6

    .line 852
    nop

    .line 853
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getClassSpecificEndpointDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v9

    .line 854
    .local v9, "classSpecificEndpointDescriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    if-eqz v9, :cond_d6

    instance-of v10, v9, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    if-eqz v10, :cond_d6

    .line 856
    move-object v10, v9

    check-cast v10, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    .line 858
    .local v10, "midiEndpoint":Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;
    invoke-virtual {v10}, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->getNumJacks()B

    move-result v11

    add-int/2addr v3, v11

    .line 847
    .end local v8    # "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    .end local v9    # "classSpecificEndpointDescriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v10    # "midiEndpoint":Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;
    :cond_d6
    add-int/lit8 v7, v7, 0x1

    goto :goto_ad

    .line 862
    .end local v6    # "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .end local v7    # "i":I
    :cond_d9
    goto :goto_a0

    .line 863
    :cond_da
    return v3
.end method

.method private findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;
    .registers 11
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation

    .line 741
    const/4 v0, 0x0

    .line 742
    .local v0, "count":I
    nop

    .line 743
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 744
    .local v1, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v2, "midiInterfaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_71

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 749
    .local v4, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v5, :cond_42

    .line 750
    move-object v5, v4

    check-cast v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 751
    .local v5, "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_41

    .line 752
    nop

    .line 753
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getMidiHeaderInterfaceDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v6

    .line 754
    .local v6, "midiHeaderDescriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    if-eqz v6, :cond_41

    .line 755
    instance-of v7, v6, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v7, :cond_41

    .line 756
    move-object v7, v6

    check-cast v7, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 758
    .local v7, "midiHeader":Lcom/android/server/usb/descriptors/UsbMSMidiHeader;
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;->getMidiStreamingClass()I

    move-result v8

    if-ne v8, p1, :cond_41

    .line 759
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    .end local v5    # "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .end local v6    # "midiHeaderDescriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v7    # "midiHeader":Lcom/android/server/usb/descriptors/UsbMSMidiHeader;
    :cond_41
    goto :goto_70

    .line 765
    :cond_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Class Interface l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 766
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 765
    const-string v6, "UsbDescriptorParser"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v4    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_70
    goto :goto_10

    .line 769
    :cond_71
    return-object v2
.end method

.method private native getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getRawDescriptors_native(Ljava/lang/String;)[B
.end method


# virtual methods
.method public calculateMidiInterfaceDescriptorsCount()I
    .registers 8

    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "count":I
    nop

    .line 778
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 779
    .local v1, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 781
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_36

    .line 782
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 783
    .local v4, "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_35

    .line 784
    nop

    .line 785
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getMidiHeaderInterfaceDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v5

    .line 786
    .local v5, "midiHeaderDescriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    if-eqz v5, :cond_35

    .line 787
    instance-of v6, v5, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v6, :cond_35

    .line 788
    move-object v6, v5

    check-cast v6, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 790
    .local v6, "midiHeader":Lcom/android/server/usb/descriptors/UsbMSMidiHeader;
    add-int/lit8 v0, v0, 0x1

    .line 794
    .end local v4    # "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .end local v5    # "midiHeaderDescriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    .end local v6    # "midiHeader":Lcom/android/server/usb/descriptors/UsbMSMidiHeader;
    :cond_35
    goto :goto_64

    .line 795
    :cond_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Class Interface l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 796
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 795
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_64
    goto :goto_b

    .line 799
    :cond_65
    return v0
.end method

.method public calculateNumLegacyMidiInputs()I
    .registers 2

    .line 870
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiPorts(Z)I

    move-result v0

    return v0
.end method

.method public calculateNumLegacyMidiOutputs()I
    .registers 2

    .line 877
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiPorts(Z)I

    move-result v0

    return v0
.end method

.method public containsLegacyMidiDeviceEndpoint()Z
    .registers 3

    .line 693
    nop

    .line 694
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findLegacyMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v0

    .line 695
    .local v0, "interfaceDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public containsUniversalMidiDeviceEndpoint()Z
    .registers 3

    .line 684
    nop

    .line 685
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findUniversalMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v0

    .line 686
    .local v0, "interfaceDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;>;"
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;)Z"
        }
    .end annotation

    .line 703
    .local p1, "interfaceDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;>;"
    const/4 v0, 0x0

    .line 704
    .local v0, "outputCount":I
    const/4 v1, 0x0

    .line 705
    .local v1, "inputCount":I
    const/4 v2, 0x0

    .local v2, "interfaceIndex":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 707
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 708
    .local v3, "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    const/4 v4, 0x0

    .local v4, "endpointIndex":I
    :goto_10
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v5

    if-ge v4, v5, :cond_29

    .line 710
    nop

    .line 711
    invoke-virtual {v3, v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v5

    .line 713
    .local v5, "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v6

    if-nez v6, :cond_24

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 716
    :cond_24
    add-int/lit8 v1, v1, 0x1

    .line 709
    .end local v5    # "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    :goto_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 706
    .end local v3    # "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .end local v4    # "endpointIndex":I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 720
    .end local v2    # "interfaceIndex":I
    :cond_2c
    if-gtz v0, :cond_33

    if-lez v1, :cond_31

    goto :goto_33

    :cond_31
    const/4 v2, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v2, 0x1

    :goto_34
    return v2
.end method

.method public findLegacyMidiInterfaceDescriptors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation

    .line 734
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public findUniversalMidiInterfaceDescriptors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation

    .line 727
    const/16 v0, 0x200

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getACInterfaceDescriptors(BI)Ljava/util/ArrayList;
    .registers 8
    .param p1, "subtype"    # B
    .param p2, "subclass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BI)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 428
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_64

    .line 430
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v3, :cond_36

    .line 431
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 432
    .local v3, "acDescriptor":Lcom/android/server/usb/descriptors/UsbACInterface;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v4

    if-ne v4, p1, :cond_35

    .line 433
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v4

    if-ne v4, p2, :cond_35

    .line 434
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .end local v3    # "acDescriptor":Lcom/android/server/usb/descriptors/UsbACInterface;
    :cond_35
    goto :goto_64

    .line 437
    :cond_36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Audio Interface len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 438
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    const-string v4, "UsbDescriptorParser"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_64
    :goto_64
    goto :goto_b

    .line 442
    :cond_65
    return-object v0
.end method

.method public getACInterfaceSpec()I
    .registers 2

    .line 99
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return v0
.end method

.method public getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    return-object v0
.end method

.method public getDescriptorString(I)Ljava/lang/String;
    .registers 3
    .param p1, "stringId"    # I

    .line 358
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescriptors(B)Ljava/util/ArrayList;
    .registers 6
    .param p1, "type"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 393
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    if-ne v3, p1, :cond_20

    .line 394
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_20
    goto :goto_b

    .line 397
    :cond_21
    return-object v0
.end method

.method public getDeviceAddr()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    return-object v0
.end method

.method public getInputHeadsetProbability()F
    .registers 5

    .line 884
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 885
    const/4 v0, 0x0

    return v0

    .line 888
    :cond_8
    const/4 v0, 0x0

    .line 891
    .local v0, "probability":F
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMic()Z

    move-result v1

    .line 894
    .local v1, "hasMic":Z
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasSpeaker()Z

    move-result v2

    .line 896
    .local v2, "hasSpeaker":Z
    if-eqz v1, :cond_18

    if-eqz v2, :cond_18

    .line 897
    const/high16 v3, 0x3f400000    # 0.75f

    add-float/2addr v0, v3

    .line 900
    :cond_18
    if-eqz v1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 901
    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v0, v3

    .line 904
    :cond_23
    return v0
.end method

.method public getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;
    .registers 7
    .param p1, "usbClass"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 407
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5d

    .line 408
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v3, :cond_2f

    .line 409
    move-object v3, v2

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 410
    .local v3, "intrDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    if-ne v4, p1, :cond_2e

    .line 411
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .end local v3    # "intrDesc":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_2e
    goto :goto_5d

    .line 414
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognized Interface l: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " t:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 415
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    const-string v4, "UsbDescriptorParser"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_5d
    :goto_5d
    goto :goto_b

    .line 419
    :cond_5e
    return-object v0
.end method

.method public getOutputHeadsetProbability()F
    .registers 9

    .line 921
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 922
    const/4 v0, 0x0

    return v0

    .line 925
    :cond_8
    const/4 v0, 0x0

    .line 929
    .local v0, "probability":F
    const/4 v1, 0x0

    .line 930
    .local v1, "hasSpeaker":Z
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 931
    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v2

    .line 933
    .local v2, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 934
    .local v4, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v5, :cond_43

    .line 935
    move-object v5, v4

    check-cast v5, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 936
    .local v5, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x301

    if-eq v6, v7, :cond_41

    .line 937
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x302

    if-eq v6, v7, :cond_41

    .line 939
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x402

    if-ne v6, v7, :cond_40

    goto :goto_41

    .line 943
    .end local v5    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_40
    goto :goto_71

    .line 940
    .restart local v5    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_41
    :goto_41
    const/4 v1, 0x1

    .line 941
    goto :goto_72

    .line 944
    .end local v5    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_43
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Output terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 945
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 944
    const-string v6, "UsbDescriptorParser"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    .end local v4    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_71
    goto :goto_14

    .line 949
    :cond_72
    :goto_72
    if-eqz v1, :cond_77

    .line 950
    const/high16 v3, 0x3f400000    # 0.75f

    add-float/2addr v0, v3

    .line 953
    :cond_77
    if-eqz v1, :cond_82

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 954
    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v0, v3

    .line 957
    :cond_82
    return v0
.end method

.method public getParsingSpec()I
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public getRawDescriptors()[B
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors_native(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getUsbSpec()I
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_9

    .line 88
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    return v0

    .line 90
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getVCInterfaceSpec()I
    .registers 2

    .line 107
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    return v0
.end method

.method public hasAudioCapture()Z
    .registers 2

    .line 614
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    move-result v0

    return v0
.end method

.method public hasAudioInterface()Z
    .registers 4

    .line 581
    nop

    .line 582
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 583
    .local v1, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method public hasAudioPlayback()Z
    .registers 2

    .line 607
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(I)Z

    move-result v0

    return v0
.end method

.method public hasAudioTerminal(I)Z
    .registers 6
    .param p1, "subType"    # I

    .line 590
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 591
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v2, :cond_2a

    .line 592
    move-object v2, v1

    check-cast v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    move-object v2, v1

    check-cast v2, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 594
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v2

    if-ne v2, p1, :cond_2a

    .line 596
    return v3

    .line 599
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_2a
    goto :goto_6

    .line 600
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public hasHIDInterface()Z
    .registers 3

    .line 645
    nop

    .line 646
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 647
    .local v0, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public hasInput()Z
    .registers 9

    .line 455
    nop

    .line 456
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v0

    .line 458
    .local v0, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    const/4 v1, 0x0

    .line 459
    .local v1, "hasInput":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 460
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_30

    .line 461
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 463
    .local v4, "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    .line 467
    .local v5, "type":I
    and-int/lit16 v6, v5, -0x100

    .line 468
    .local v6, "terminalCategory":I
    const/16 v7, 0x100

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x300

    if-eq v6, v7, :cond_2f

    .line 471
    const/4 v1, 0x1

    .line 472
    goto :goto_5f

    .line 474
    .end local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    .end local v5    # "type":I
    .end local v6    # "terminalCategory":I
    :cond_2f
    goto :goto_5e

    .line 475
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Input terminal l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 476
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_5e
    goto :goto_c

    .line 483
    :cond_5f
    :goto_5f
    return v1
.end method

.method public hasMIDIInterface()Z
    .registers 8

    .line 663
    nop

    .line 664
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 665
    .local v1, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 667
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_26

    .line 668
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 669
    .local v4, "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    .line 670
    return v0

    .line 672
    .end local v4    # "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    :cond_25
    goto :goto_54

    .line 673
    :cond_26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Class Interface l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 674
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 673
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_54
    goto :goto_a

    .line 677
    :cond_55
    const/4 v0, 0x0

    return v0
.end method

.method public hasMic()Z
    .registers 8

    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, "hasMic":Z
    nop

    .line 530
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 532
    .local v1, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 533
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_43

    .line 534
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 535
    .local v4, "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x201

    if-eq v5, v6, :cond_41

    .line 536
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x402

    if-eq v5, v6, :cond_41

    .line 537
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x400

    if-eq v5, v6, :cond_41

    .line 538
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x603

    if-ne v5, v6, :cond_40

    goto :goto_41

    .line 542
    .end local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_40
    goto :goto_71

    .line 539
    .restart local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_41
    :goto_41
    const/4 v0, 0x1

    .line 540
    goto :goto_72

    .line 543
    .end local v4    # "inDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Input terminal l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 544
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 543
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_71
    goto :goto_c

    .line 547
    :cond_72
    :goto_72
    return v0
.end method

.method public hasOutput()Z
    .registers 9

    .line 493
    nop

    .line 494
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v0

    .line 496
    .local v0, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    const/4 v1, 0x0

    .line 497
    .local v1, "hasOutput":Z
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 498
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_30

    .line 499
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 501
    .local v4, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    .line 505
    .local v5, "type":I
    and-int/lit16 v6, v5, -0x100

    .line 506
    .local v6, "terminalCategory":I
    const/16 v7, 0x100

    if-eq v6, v7, :cond_2f

    const/16 v7, 0x200

    if-eq v6, v7, :cond_2f

    .line 509
    const/4 v1, 0x1

    .line 510
    goto :goto_5f

    .line 512
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    .end local v5    # "type":I
    .end local v6    # "terminalCategory":I
    :cond_2f
    goto :goto_5e

    .line 513
    :cond_30
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Input terminal l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 514
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 513
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_5e
    goto :goto_c

    .line 520
    :cond_5f
    :goto_5f
    return v1
.end method

.method public hasSpeaker()Z
    .registers 8

    .line 554
    const/4 v0, 0x0

    .line 556
    .local v0, "hasSpeaker":Z
    nop

    .line 557
    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v1

    .line 559
    .local v1, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 560
    .local v3, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_3b

    .line 561
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 562
    .local v4, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x301

    if-eq v5, v6, :cond_39

    .line 563
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x302

    if-eq v5, v6, :cond_39

    .line 564
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x402

    if-ne v5, v6, :cond_38

    goto :goto_39

    .line 568
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_38
    goto :goto_69

    .line 565
    .restart local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_39
    :goto_39
    const/4 v0, 0x1

    .line 566
    goto :goto_6a

    .line 569
    .end local v4    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Output terminal l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 570
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    .end local v3    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :goto_69
    goto :goto_c

    .line 574
    :cond_6a
    :goto_6a
    return v0
.end method

.method public hasStorageInterface()Z
    .registers 3

    .line 654
    nop

    .line 655
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 656
    .local v0, "descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public hasVideoCapture()Z
    .registers 4

    .line 621
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 622
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    if-eqz v2, :cond_18

    .line 623
    const/4 v0, 0x1

    return v0

    .line 625
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_18
    goto :goto_6

    .line 626
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public hasVideoPlayback()Z
    .registers 4

    .line 633
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 634
    .local v1, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    instance-of v2, v1, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    if-eqz v2, :cond_18

    .line 635
    const/4 v0, 0x1

    return v0

    .line 637
    .end local v1    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_18
    goto :goto_6

    .line 638
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public isDock()Z
    .registers 7

    .line 977
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6e

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_6e

    .line 981
    :cond_e
    const/4 v0, 0x3

    .line 982
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v0

    .line 985
    .local v0, "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v2, :cond_1b

    .line 986
    return v1

    .line 989
    :cond_1b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v3, :cond_33

    .line 990
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 991
    .local v3, "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v4

    const/16 v5, 0x602

    if-ne v4, v5, :cond_32

    .line 992
    return v2

    .line 994
    .end local v3    # "outDescr":Lcom/android/server/usb/descriptors/UsbACTerminal;
    :cond_32
    goto :goto_6d

    .line 995
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Undefined Audio Output terminal l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 996
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 995
    const-string v3, "UsbDescriptorParser"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :goto_6d
    return v1

    .line 978
    .end local v0    # "acDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbDescriptor;>;"
    :cond_6e
    :goto_6e
    return v1
.end method

.method public isInputHeadset()Z
    .registers 3

    .line 914
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOutputHeadset()Z
    .registers 3

    .line 967
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public parseDescriptors([B)V
    .registers 12
    .param p1, "descriptors"    # [B

    .line 299
    const-string v0, "UsbDescriptorParser"

    new-instance v1, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 300
    .local v1, "stream":Lcom/android/server/usb/descriptors/ByteStream;
    :goto_7
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v2

    if-lez v2, :cond_c6

    .line 301
    const/4 v2, 0x0

    .line 303
    .local v2, "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :try_start_e
    invoke-direct {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_14

    move-object v2, v3

    .line 306
    goto :goto_1a

    .line 304
    :catch_14
    move-exception v3

    .line 305
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "Exception allocating USB descriptor."

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1a
    if-eqz v2, :cond_c4

    .line 311
    :try_start_1c
    invoke-virtual {v2, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 314
    invoke-virtual {v2, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_2c
    .catchall {:try_start_1c .. :try_end_22} :catchall_29

    .line 339
    :goto_22
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    goto/16 :goto_c4

    .line 339
    :catchall_29
    move-exception v0

    goto/16 :goto_be

    .line 315
    :catch_2c
    move-exception v3

    .line 317
    .restart local v3    # "ex":Ljava/lang/Exception;
    :try_start_2d
    invoke-virtual {v2, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V

    .line 320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception parsing USB descriptors. type:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 321
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 320
    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 327
    .local v4, "stackElems":[Ljava/lang/StackTraceElement;
    array-length v5, v4
    :try_end_5d
    .catchall {:try_start_2d .. :try_end_5d} :catchall_29

    const-string v6, " @ "

    const-string v7, "  class:"

    if-lez v5, :cond_8c

    .line 328
    :try_start_63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v8, 0x0

    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v8, v4, v8

    .line 329
    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 328
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_8c
    array-length v5, v4

    const/4 v8, 0x1

    if-le v5, v8, :cond_b8

    .line 332
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v4, v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v8

    .line 333
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_b8
    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Lcom/android/server/usb/descriptors/UsbDescriptor;->setStatus(I)V
    :try_end_bc
    .catchall {:try_start_63 .. :try_end_bc} :catchall_29

    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "stackElems":[Ljava/lang/StackTraceElement;
    goto/16 :goto_22

    .line 339
    :goto_be
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    throw v0

    .line 342
    .end local v2    # "descriptor":Lcom/android/server/usb/descriptors/UsbDescriptor;
    :cond_c4
    :goto_c4
    goto/16 :goto_7

    .line 346
    :cond_c6
    return-void
.end method

.method public setACInterfaceSpec(I)V
    .registers 2
    .param p1, "spec"    # I

    .line 95
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 96
    return-void
.end method

.method public setVCInterfaceSpec(I)V
    .registers 2
    .param p1, "spec"    # I

    .line 103
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    .line 104
    return-void
.end method

.method public toAndroidUsbDeviceBuilder()Landroid/hardware/usb/UsbDevice$Builder;
    .registers 4

    .line 375
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    const-string v1, "UsbDescriptorParser"

    if-nez v0, :cond_e

    .line 376
    const-string/jumbo v0, "toAndroidUsbDevice() ERROR - No Device Descriptor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_e
    invoke-virtual {v0, p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbDevice$Builder;

    move-result-object v0

    .line 381
    .local v0, "builder":Landroid/hardware/usb/UsbDevice$Builder;
    if-nez v0, :cond_1a

    .line 382
    const-string/jumbo v2, "toAndroidUsbDevice() ERROR Creating Device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1a
    return-object v0
.end method
