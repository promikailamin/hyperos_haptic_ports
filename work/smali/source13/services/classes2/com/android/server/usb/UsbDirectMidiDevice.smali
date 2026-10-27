.class public final Lcom/android/server/usb/UsbDirectMidiDevice;
.super Ljava/lang/Object;
.source "UsbDirectMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;
    }
.end annotation


# static fields
.field private static final BULK_TRANSFER_TIMEOUT_MILLISECONDS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbDirectMidiDevice"

.field private static final THREAD_JOIN_TIMEOUT_MILLISECONDS:I = 0xc8


# instance fields
.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mContext:Landroid/content/Context;

.field private mDefaultMidiProtocol:I

.field private mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field private mInputUsbEndpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsOpen:Z

.field private final mIsUniversalMidiDevice:Z

.field private final mLock:Ljava/lang/Object;

.field private mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

.field private final mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

.field private mName:Ljava/lang/String;

.field private final mNumInputs:I

.field private final mNumOutputs:I

.field private mOutputUsbEndpoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/UsbEndpoint;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

.field private mServer:Landroid/media/midi/MidiDeviceServer;

.field private mServerAvailable:Z

.field private final mShouldCallSetInterface:Z

.field private mThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueUsbDeviceIdentifier:Ljava/lang/String;

.field private mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field private mUsbDeviceConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/usb/UsbDeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mUsbMidiPacketConverter:Lcom/android/server/usb/UsbMidiPacketConverter;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usb/UsbDirectMidiDevice;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsbMidiPacketConverter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/UsbMidiPacketConverter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbMidiPacketConverter:Lcom/android/server/usb/UsbMidiPacketConverter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcloseLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->closeLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->openLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->swapEndiannessPerWord([BI)[B

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V
    .registers 15
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .param p3, "isUniversalMidiDevice"    # Z
    .param p4, "uniqueUsbDeviceIdentifier"    # Ljava/lang/String;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    invoke-direct {v0}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 95
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    .line 101
    new-instance v1, Lcom/android/server/usb/UsbDirectMidiDevice$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDirectMidiDevice$1;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 183
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 184
    iput-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 185
    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    .line 186
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 190
    invoke-virtual {p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateMidiInterfaceDescriptorsCount()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_2c

    move v1, v0

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    .line 193
    if-eqz p3, :cond_36

    .line 194
    invoke-virtual {p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findUniversalMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v1

    .local v1, "midiInterfaceDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;>;"
    goto :goto_3a

    .line 196
    .end local v1    # "midiInterfaceDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;>;"
    :cond_36
    invoke-virtual {p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findLegacyMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v1

    .line 199
    .restart local v1    # "midiInterfaceDescriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;>;"
    :goto_3a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 200
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v3

    const-string v4, "UsbDirectMidiDevice"

    if-lez v3, :cond_a6

    .line 205
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3, v2}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v2

    .line 206
    .local v2, "usbConfiguration":Landroid/hardware/usb/UsbConfiguration;
    const/4 v3, 0x0

    .local v3, "interfaceIndex":I
    :goto_52
    invoke-virtual {v2}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v5

    if-ge v3, v5, :cond_82

    .line 208
    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    .line 209
    .local v5, "usbInterface":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_60
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 210
    .local v7, "midiInterfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v7, v8}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    .line 211
    .local v8, "midiInterface":Landroid/hardware/usb/UsbInterface;
    invoke-direct {p0, v5, v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->areEquivalent(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbInterface;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 212
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    goto :goto_7f

    .line 215
    .end local v7    # "midiInterfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .end local v8    # "midiInterface":Landroid/hardware/usb/UsbInterface;
    :cond_7e
    goto :goto_60

    .line 207
    .end local v5    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :cond_7f
    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 218
    .end local v3    # "interfaceIndex":I
    :cond_82
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v3

    if-le v3, v0, :cond_a6

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping some USB configurations. Count: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 220
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .end local v2    # "usbConfiguration":Landroid/hardware/usb/UsbConfiguration;
    :cond_a6
    const/4 v0, 0x0

    .line 225
    .local v0, "numInputs":I
    const/4 v2, 0x0

    .line 227
    .local v2, "numOutputs":I
    const/4 v3, 0x0

    .restart local v3    # "interfaceIndex":I
    :goto_a9
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_d6

    .line 228
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 229
    .local v5, "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    const/4 v6, 0x0

    .local v6, "endpointIndex":I
    :goto_ba
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v7

    if-ge v6, v7, :cond_d3

    .line 231
    nop

    .line 232
    invoke-virtual {v5, v6}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v7

    .line 234
    .local v7, "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v8

    if-nez v8, :cond_ce

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_d0

    .line 237
    :cond_ce
    add-int/lit8 v0, v0, 0x1

    .line 230
    .end local v7    # "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    :goto_d0
    add-int/lit8 v6, v6, 0x1

    goto :goto_ba

    .line 227
    .end local v5    # "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .end local v6    # "endpointIndex":I
    :cond_d3
    add-int/lit8 v3, v3, 0x1

    goto :goto_a9

    .line 242
    .end local v3    # "interfaceIndex":I
    :cond_d6
    iput v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    .line 243
    iput v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    .line 245
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created UsbDirectMidiDevice with "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " inputs and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " outputs. isUniversalMidiDevice: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-array v3, v2, [Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    iput-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    .line 251
    const/4 v3, 0x0

    .local v3, "port":I
    :goto_109
    if-ge v3, v2, :cond_118

    .line 252
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    new-instance v5, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy-IA;)V

    aput-object v5, v4, v3

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_109

    .line 254
    .end local v3    # "port":I
    :cond_118
    return-void
.end method

.method private areEquivalent(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbInterface;)Z
    .registers 9
    .param p1, "interface1"    # Landroid/hardware/usb/UsbInterface;
    .param p2, "interface2"    # Landroid/hardware/usb/UsbInterface;

    .line 678
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_98

    .line 679
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v1

    if-ne v0, v1, :cond_98

    .line 680
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v1

    if-ne v0, v1, :cond_98

    .line 681
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v1

    if-ne v0, v1, :cond_98

    .line 682
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v1

    if-ne v0, v1, :cond_98

    .line 683
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-eq v0, v1, :cond_3e

    goto :goto_98

    .line 687
    :cond_3e
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4b

    .line 688
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 689
    return v2

    .line 691
    :cond_4b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 692
    return v2

    .line 696
    :cond_5a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5b
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v1

    if-ge v0, v1, :cond_96

    .line 697
    invoke-virtual {p1, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v1

    .line 698
    .local v1, "endpoint1":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {p2, v0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 699
    .local v3, "endpoint2":Landroid/hardware/usb/UsbEndpoint;
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v5

    if-ne v4, v5, :cond_95

    .line 700
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v5

    if-ne v4, v5, :cond_95

    .line 701
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v5

    if-ne v4, v5, :cond_95

    .line 702
    invoke-virtual {v1}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v4

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v5

    if-eq v4, v5, :cond_92

    goto :goto_95

    .line 696
    .end local v1    # "endpoint1":Landroid/hardware/usb/UsbEndpoint;
    .end local v3    # "endpoint2":Landroid/hardware/usb/UsbEndpoint;
    :cond_92
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 703
    .restart local v1    # "endpoint1":Landroid/hardware/usb/UsbEndpoint;
    .restart local v3    # "endpoint2":Landroid/hardware/usb/UsbEndpoint;
    :cond_95
    :goto_95
    return v2

    .line 706
    .end local v0    # "i":I
    .end local v1    # "endpoint1":Landroid/hardware/usb/UsbEndpoint;
    .end local v3    # "endpoint2":Landroid/hardware/usb/UsbEndpoint;
    :cond_96
    const/4 v0, 0x1

    return v0

    .line 684
    :cond_98
    :goto_98
    return v2
.end method

.method private calculateDefaultMidiProtocol()I
    .registers 11

    .line 257
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 259
    .local v0, "manager":Landroid/hardware/usb/UsbManager;
    const/4 v1, 0x0

    .local v1, "interfaceIndex":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_66

    .line 260
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 261
    .local v2, "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    const/4 v3, 0x0

    .line 262
    .local v3, "doesInterfaceContainInput":Z
    const/4 v4, 0x0

    .line 263
    .local v4, "doesInterfaceContainOutput":Z
    const/4 v5, 0x0

    .line 264
    .local v5, "endpointIndex":I
    :goto_1e
    nop

    .line 263
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v6

    if-ge v5, v6, :cond_3a

    if-eqz v3, :cond_29

    if-nez v4, :cond_3a

    .line 266
    :cond_29
    nop

    .line 267
    invoke-virtual {v2, v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v6

    .line 269
    .local v6, "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v7

    if-nez v7, :cond_36

    .line 270
    const/4 v4, 0x1

    goto :goto_37

    .line 272
    :cond_36
    const/4 v3, 0x1

    .line 265
    .end local v6    # "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    :goto_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 278
    .end local v5    # "endpointIndex":I
    :cond_3a
    if-eqz v3, :cond_63

    if-eqz v4, :cond_63

    .line 280
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v5}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v5

    .line 281
    .local v5, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    iget-object v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v2, v6}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v6

    .line 282
    .local v6, "usbInterface":Landroid/hardware/usb/UsbInterface;
    invoke-direct {p0, v6, v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v7

    if-nez v7, :cond_51

    .line 283
    goto :goto_63

    .line 285
    :cond_51
    iget-object v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    .line 286
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getInterfaceNumber()I

    move-result v8

    .line 287
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getAlternateSetting()B

    move-result v9

    .line 285
    invoke-virtual {v7, v5, v8, v9}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->calculateMidiType(Landroid/hardware/usb/UsbDeviceConnection;II)I

    move-result v7

    .line 289
    .local v7, "defaultMidiProtocol":I
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 290
    return v7

    .line 259
    .end local v2    # "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .end local v3    # "doesInterfaceContainInput":Z
    .end local v4    # "doesInterfaceContainOutput":Z
    .end local v5    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v6    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    .end local v7    # "defaultMidiProtocol":I
    :cond_63
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 294
    .end local v1    # "interfaceIndex":I
    :cond_66
    const-string v1, "UsbDirectMidiDevice"

    const-string v2, "Cannot find interface with both input and output endpoints"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x1

    return v1
.end method

.method private closeLocked()V
    .registers 6

    .line 587
    const-string v0, "UsbDirectMidiDevice"

    const-string v1, "closeLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 591
    .local v2, "thread":Ljava/lang/Thread;
    if-eqz v2, :cond_1e

    .line 592
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 594
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_1e
    goto :goto_d

    .line 597
    :cond_1f
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    .line 598
    .restart local v2    # "thread":Ljava/lang/Thread;
    if-eqz v2, :cond_41

    .line 600
    const-wide/16 v3, 0xc8

    :try_start_35
    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_38} :catch_39

    .line 604
    goto :goto_41

    .line 601
    :catch_39
    move-exception v1

    .line 602
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "thread join interrupted"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    goto :goto_42

    .line 606
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_41
    :goto_41
    goto :goto_25

    .line 607
    :cond_42
    :goto_42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    .line 609
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_46
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v2, v2

    if-ge v1, v2, :cond_5c

    .line 610
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 611
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 613
    .end local v1    # "i":I
    :cond_5c
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 615
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDeviceConnection;

    .line 616
    .local v2, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 617
    .end local v2    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    goto :goto_64

    .line 618
    :cond_74
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 619
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 620
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 622
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbMidiPacketConverter:Lcom/android/server/usb/UsbMidiPacketConverter;

    .line 624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    .line 625
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .param p3, "isUniversalMidiDevice"    # Z
    .param p4, "uniqueUsbDeviceIdentifier"    # Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbDirectMidiDevice;-><init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V

    .line 173
    .local v0, "midiDevice":Lcom/android/server/usb/UsbDirectMidiDevice;
    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->register(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 174
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 175
    const-string v1, "UsbDirectMidiDevice"

    const-string v2, "createDeviceServer failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    return-object v1

    .line 178
    :cond_17
    return-object v0
.end method

.method private static logByteArray(Ljava/lang/String;[BII)V
    .registers 10
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 644
    .local v0, "builder":Ljava/lang/StringBuilder;
    move v1, p2

    .local v1, "i":I
    :goto_6
    add-int v2, p2, p3

    if-ge v1, v2, :cond_2b

    .line 645
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "0x%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    array-length v3, p1

    sub-int/2addr v3, v2

    if-eq v1, v3, :cond_28

    .line 647
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 650
    .end local v1    # "i":I
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDirectMidiDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void
.end method

.method private openLocked()Z
    .registers 19

    .line 299
    move-object/from16 v7, p0

    const-string v0, "UsbDirectMidiDevice"

    const-string/jumbo v1, "openLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/hardware/usb/UsbManager;

    .line 305
    .local v8, "manager":Landroid/hardware/usb/UsbManager;
    new-instance v0, Lcom/android/server/usb/UsbMidiPacketConverter;

    iget v1, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbMidiPacketConverter;-><init>(I)V

    iput-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbMidiPacketConverter:Lcom/android/server/usb/UsbMidiPacketConverter;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    .line 312
    const/4 v0, 0x0

    .local v0, "interfaceIndex":I
    :goto_3b
    iget-object v1, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ae

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v1, "inputEndpoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/UsbEndpoint;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v2, "outputEndpoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/UsbEndpoint;>;"
    iget-object v3, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 316
    .local v3, "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    const/4 v4, 0x0

    .local v4, "endpointIndex":I
    :goto_56
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v5

    if-ge v4, v5, :cond_7d

    .line 318
    nop

    .line 319
    invoke-virtual {v3, v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v5

    .line 321
    .local v5, "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v6

    if-nez v6, :cond_71

    .line 322
    iget-object v6, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v5, v6}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 324
    :cond_71
    iget-object v6, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v5, v6}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .end local v5    # "endpoint":Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
    :goto_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_56

    .line 327
    .end local v4    # "endpointIndex":I
    :cond_7d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_ab

    .line 328
    :cond_89
    iget-object v4, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v8, v4}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    .line 329
    .local v4, "connection":Landroid/hardware/usb/UsbDeviceConnection;
    iget-object v5, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v3, v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    .line 330
    .local v5, "usbInterface":Landroid/hardware/usb/UsbInterface;
    invoke-direct {v7, v5, v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v6

    if-nez v6, :cond_9c

    .line 331
    goto :goto_ab

    .line 333
    :cond_9c
    iget-object v6, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v6, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v6, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    .end local v1    # "inputEndpoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/UsbEndpoint;>;"
    .end local v2    # "outputEndpoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/usb/UsbEndpoint;>;"
    .end local v3    # "interfaceDescriptor":Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .end local v4    # "connection":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v5    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :cond_ab
    :goto_ab
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 339
    .end local v0    # "interfaceIndex":I
    :cond_ae
    iget v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    new-array v0, v0, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b5
    iget v1, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    if-ge v0, v1, :cond_d0

    .line 342
    new-instance v1, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v1}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .line 343
    .local v1, "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v2, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v1, v2, v0

    .line 344
    iget-object v2, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    aget-object v2, v2, v0

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 341
    .end local v1    # "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    add-int/lit8 v0, v0, 0x1

    goto :goto_b5

    .line 347
    .end local v0    # "i":I
    :cond_d0
    iget-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v9

    .line 350
    .local v9, "outputReceivers":[Landroid/media/midi/MidiReceiver;
    const/4 v0, 0x0

    .line 351
    .local v0, "portNumber":I
    const/4 v1, 0x0

    move v10, v1

    .local v10, "connectionIndex":I
    :goto_d9
    iget-object v1, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_13d

    .line 353
    const/4 v1, 0x0

    move v11, v0

    move v12, v1

    .line 354
    .end local v0    # "portNumber":I
    .local v11, "portNumber":I
    .local v12, "endpointIndex":I
    :goto_e4
    iget-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_139

    .line 356
    iget-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/usb/UsbDeviceConnection;

    .line 358
    .local v13, "connectionFinal":Landroid/hardware/usb/UsbDeviceConnection;
    iget-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 359
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/hardware/usb/UsbEndpoint;

    .line 360
    .local v14, "endpointFinal":Landroid/hardware/usb/UsbEndpoint;
    move v15, v11

    .line 362
    .local v15, "portFinal":I
    new-instance v16, Lcom/android/server/usb/UsbDirectMidiDevice$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbDirectMidiDevice input thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v3, v13

    move-object v4, v14

    move-object v5, v9

    move v6, v15

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbDirectMidiDevice$2;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;Landroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V

    .line 433
    .local v0, "newThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 434
    iget-object v1, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    nop

    .end local v0    # "newThread":Ljava/lang/Thread;
    .end local v13    # "connectionFinal":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v14    # "endpointFinal":Landroid/hardware/usb/UsbEndpoint;
    .end local v15    # "portFinal":I
    add-int/lit8 v11, v11, 0x1

    .line 355
    add-int/lit8 v12, v12, 0x1

    goto :goto_e4

    .line 352
    .end local v12    # "endpointIndex":I
    :cond_139
    add-int/lit8 v10, v10, 0x1

    move v0, v11

    goto :goto_d9

    .line 440
    .end local v10    # "connectionIndex":I
    .end local v11    # "portNumber":I
    .local v0, "portNumber":I
    :cond_13d
    const/4 v0, 0x0

    .line 441
    const/4 v1, 0x0

    move v10, v1

    .restart local v10    # "connectionIndex":I
    :goto_140
    iget-object v1, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_1a9

    .line 443
    const/4 v1, 0x0

    move v11, v0

    move v12, v1

    .line 444
    .end local v0    # "portNumber":I
    .restart local v11    # "portNumber":I
    .restart local v12    # "endpointIndex":I
    :goto_14b
    iget-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v12, v0, :cond_1a5

    .line 446
    iget-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 447
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/usb/UsbDeviceConnection;

    .line 448
    .restart local v13    # "connectionFinal":Landroid/hardware/usb/UsbDeviceConnection;
    iget-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 449
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/hardware/usb/UsbEndpoint;

    .line 450
    .restart local v14    # "endpointFinal":Landroid/hardware/usb/UsbEndpoint;
    move v15, v11

    .line 451
    .restart local v15    # "portFinal":I
    iget-object v0, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v16, v0, v15

    .line 453
    .local v16, "eventSchedulerFinal":Lcom/android/internal/midi/MidiEventScheduler;
    new-instance v17, Lcom/android/server/usb/UsbDirectMidiDevice$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbDirectMidiDevice output thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move v4, v15

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usb/UsbDirectMidiDevice$3;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;)V

    .line 511
    .local v0, "newThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 512
    iget-object v1, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    nop

    .end local v0    # "newThread":Ljava/lang/Thread;
    .end local v13    # "connectionFinal":Landroid/hardware/usb/UsbDeviceConnection;
    .end local v14    # "endpointFinal":Landroid/hardware/usb/UsbEndpoint;
    .end local v15    # "portFinal":I
    .end local v16    # "eventSchedulerFinal":Lcom/android/internal/midi/MidiEventScheduler;
    add-int/lit8 v11, v11, 0x1

    .line 445
    add-int/lit8 v12, v12, 0x1

    goto :goto_14b

    .line 442
    .end local v12    # "endpointIndex":I
    :cond_1a5
    add-int/lit8 v10, v10, 0x1

    move v0, v11

    goto :goto_140

    .line 517
    .end local v10    # "connectionIndex":I
    .end local v11    # "portNumber":I
    .local v0, "portNumber":I
    :cond_1a9
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    .line 518
    return v1
.end method

.method private register(Landroid/content/Context;)Z
    .registers 22
    .param p1, "context"    # Landroid/content/Context;

    .line 522
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    .line 523
    const-class v2, Landroid/media/midi/MidiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/MidiManager;

    .line 524
    .local v2, "midiManager":Landroid/media/midi/MidiManager;
    const/4 v12, 0x0

    if-nez v2, :cond_19

    .line 525
    const-string v3, "UsbDirectMidiDevice"

    const-string v4, "No MidiManager in UsbDirectMidiDevice.register()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return v12

    .line 529
    :cond_19
    iget-boolean v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v3, :cond_24

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->calculateDefaultMidiProtocol()I

    move-result v3

    iput v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    goto :goto_27

    .line 532
    :cond_24
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 535
    :goto_27
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v13, v3

    .line 536
    .local v13, "properties":Landroid/os/Bundle;
    iget-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v14

    .line 537
    .local v14, "manufacturer":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v15

    .line 538
    .local v15, "product":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v11

    .line 540
    .local v11, "version":Ljava/lang/String;
    if-eqz v14, :cond_6b

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_48

    goto :goto_6b

    .line 542
    :cond_48
    if-eqz v15, :cond_69

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_69

    .line 545
    :cond_51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "name":Ljava/lang/String;
    goto :goto_6c

    .line 543
    .end local v3    # "name":Ljava/lang/String;
    :cond_69
    :goto_69
    move-object v3, v14

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_6c

    .line 541
    .end local v3    # "name":Ljava/lang/String;
    :cond_6b
    :goto_6b
    move-object v3, v15

    .line 547
    .restart local v3    # "name":Ljava/lang/String;
    :goto_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 548
    iget-boolean v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v4, :cond_9e

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MIDI 2.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    goto :goto_b2

    .line 551
    :cond_9e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MIDI 1.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v10, v3

    .line 553
    .end local v3    # "name":Ljava/lang/String;
    .local v10, "name":Ljava/lang/String;
    :goto_b2
    iput-object v10, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    .line 554
    const-string/jumbo v3, "name"

    invoke-virtual {v13, v3, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string/jumbo v3, "manufacturer"

    invoke-virtual {v13, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string/jumbo v3, "product"

    invoke-virtual {v13, v3, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string/jumbo v3, "version"

    invoke-virtual {v13, v3, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 559
    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    .line 558
    const-string/jumbo v4, "serial_number"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    const-string/jumbo v4, "usb_device"

    invoke-virtual {v13, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 562
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    .line 563
    iget-object v4, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    iget v5, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x1

    iget v8, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    iget-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    move-object/from16 v17, v3

    move-object v3, v2

    move/from16 v18, v8

    move-object v8, v13

    move/from16 v19, v9

    move/from16 v9, v16

    move-object/from16 v16, v10

    .end local v10    # "name":Ljava/lang/String;
    .local v16, "name":Ljava/lang/String;
    move/from16 v10, v18

    move-object/from16 v18, v11

    .end local v11    # "version":Ljava/lang/String;
    .local v18, "version":Ljava/lang/String;
    move-object/from16 v11, v17

    invoke-virtual/range {v3 .. v11}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 565
    if-nez v3, :cond_10a

    .line 566
    return v12

    .line 569
    :cond_10a
    return v19
.end method

.method private swapEndiannessPerWord([BI)[B
    .registers 8
    .param p1, "inputArray"    # [B
    .param p2, "size"    # I

    .line 628
    and-int/lit8 v0, p2, 0x3

    .line 629
    .local v0, "numberOfExcessBytes":I
    if-eqz v0, :cond_1d

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size not multiple of 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbDirectMidiDevice"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1d
    sub-int v1, p2, v0

    new-array v1, v1, [B

    .line 633
    .local v1, "outputArray":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_22
    add-int/lit8 v3, v2, 0x3

    if-ge v3, p2, :cond_45

    .line 634
    add-int/lit8 v3, v2, 0x3

    aget-byte v3, p1, v3

    aput-byte v3, v1, v2

    .line 635
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 636
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    aput-byte v4, v1, v3

    .line 637
    add-int/lit8 v3, v2, 0x3

    aget-byte v4, p1, v2

    aput-byte v4, v1, v3

    .line 633
    add-int/lit8 v2, v2, 0x4

    goto :goto_22

    .line 639
    .end local v2    # "i":I
    :cond_45
    return-object v1
.end method

.method private updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z
    .registers 7
    .param p1, "usbInterface"    # Landroid/hardware/usb/UsbInterface;
    .param p2, "connection"    # Landroid/hardware/usb/UsbDeviceConnection;

    .line 655
    const/4 v0, 0x0

    const-string v1, "UsbDirectMidiDevice"

    if-nez p1, :cond_b

    .line 656
    const-string v2, "Usb Interface is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return v0

    .line 659
    :cond_b
    if-nez p2, :cond_13

    .line 660
    const-string v2, "UsbDeviceConnection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return v0

    .line 663
    :cond_13
    const/4 v2, 0x1

    invoke-virtual {p2, p1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-nez v3, :cond_20

    .line 664
    const-string v2, "Can\'t claim interface"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return v0

    .line 667
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    if-eqz v0, :cond_30

    .line 668
    invoke-virtual {p2, p1}, Landroid/hardware/usb/UsbDeviceConnection;->setInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 669
    const-string v0, "Can\'t set interface"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 672
    :cond_30
    const-string/jumbo v0, "no alternate interface"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_36
    :goto_36
    return v2
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_a

    .line 576
    invoke-direct {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->closeLocked()V

    .line 578
    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    .line 579
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_16

    .line 581
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_15

    .line 582
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 584
    :cond_15
    return-void

    .line 579
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 712
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 714
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    const-string/jumbo v3, "num_inputs"

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 715
    iget v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    const-string/jumbo v3, "num_outputs"

    const-wide v4, 0x10500000002L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 716
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    const-string v3, "is_universal"

    const-wide v4, 0x10800000003L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 717
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    const-string/jumbo v3, "name"

    const-wide v4, 0x10900000004L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 718
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v2, :cond_47

    .line 719
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    const-wide v3, 0x10b00000005L

    const-string v5, "block_parser"

    invoke-virtual {v2, p1, v5, v3, v4}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 722
    :cond_47
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 723
    return-void
.end method
