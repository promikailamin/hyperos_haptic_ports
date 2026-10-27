.class public final Lcom/android/server/usb/UsbAlsaManager;
.super Ljava/lang/Object;
.source "UsbAlsaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;
    }
.end annotation


# static fields
.field private static final ALSA_DIRECTORY:Ljava/lang/String; = "/dev/snd/"

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final USB_DENYLIST_INPUT:I = 0x2

.field private static final USB_DENYLIST_OUTPUT:I = 0x1

.field private static final USB_PRODUCTID_PS4CONTROLLER_ZCT1:I = 0x5c4

.field private static final USB_PRODUCTID_PS4CONTROLLER_ZCT2:I = 0x9cc

.field private static final USB_VENDORID_SONY:I = 0x54c

.field private static mIsSingleMode:Z

.field static final sDeviceDenylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlsaDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbAlsaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioService:Landroid/media/IAudioService;

.field private final mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

.field private final mContext:Landroid/content/Context;

.field private final mHasMidiFeature:Z

.field private final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbMidiDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

.field private mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 47
    const-class v0, Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/usb/UsbAlsaManager;->mIsSingleMode:Z

    .line 92
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    new-instance v2, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v3, 0x54c

    const/16 v4, 0x5c4

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(III)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    const/16 v4, 0x9cc

    invoke-direct {v2, v3, v4, v0}, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;-><init>(III)V

    aput-object v2, v1, v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-direct {v0}, Lcom/android/internal/alsa/AlsaCardsParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .line 121
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    .line 123
    return-void
.end method

.method private addMidiDevice(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;)V
    .registers 22
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;
    .param p4, "cardRec"    # Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    .line 275
    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v1

    .line 277
    .local v1, "hasMidi":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->containsUniversalMidiDeviceEndpoint()Z

    move-result v2

    .line 282
    .local v2, "hasMidi2":Z
    iget-boolean v3, v0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-eqz v3, :cond_b1

    if-eqz v1, :cond_b1

    if-nez v2, :cond_b1

    .line 283
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 284
    .local v3, "properties":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v10

    .line 285
    .local v10, "manufacturer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v11

    .line 286
    .local v11, "product":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v12

    .line 288
    .local v12, "version":Ljava/lang/String;
    if-eqz v10, :cond_51

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    goto :goto_51

    .line 290
    :cond_2c
    if-eqz v11, :cond_4e

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_4e

    .line 293
    :cond_35
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .local v4, "name":Ljava/lang/String;
    goto :goto_53

    .line 291
    .end local v4    # "name":Ljava/lang/String;
    :cond_4e
    :goto_4e
    move-object v4, v10

    move-object v13, v4

    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_53

    .line 289
    .end local v4    # "name":Ljava/lang/String;
    :cond_51
    :goto_51
    move-object v4, v11

    move-object v13, v4

    .line 295
    .local v13, "name":Ljava/lang/String;
    :goto_53
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string/jumbo v4, "manufacturer"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v4, "product"

    invoke-virtual {v3, v4, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v4, "version"

    invoke-virtual {v3, v4, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    nop

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 299
    const-string/jumbo v5, "serial_number"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v4

    const-string v5, "alsa_card"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    const/4 v4, 0x0

    const-string v5, "alsa_device"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    const-string/jumbo v4, "usb_device"

    move-object/from16 v14, p2

    invoke-virtual {v3, v4, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiInputs()I

    move-result v15

    .line 306
    .local v15, "numLegacyMidiInputs":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiOutputs()I

    move-result v16

    .line 312
    .local v16, "numLegacyMidiOutputs":I
    iget-object v4, v0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    .line 313
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v6

    const/4 v7, 0x0

    .line 312
    move-object v5, v3

    move v8, v15

    move/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v4

    .line 315
    .local v4, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v4, :cond_ae

    .line 316
    iget-object v5, v0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    move-object/from16 v6, p1

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5

    .line 315
    :cond_ae
    move-object/from16 v6, p1

    goto :goto_b5

    .line 282
    .end local v3    # "properties":Landroid/os/Bundle;
    .end local v4    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    .end local v10    # "manufacturer":Ljava/lang/String;
    .end local v11    # "product":Ljava/lang/String;
    .end local v12    # "version":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "numLegacyMidiInputs":I
    .end local v16    # "numLegacyMidiOutputs":I
    :cond_b1
    move-object/from16 v6, p1

    move-object/from16 v14, p2

    .line 319
    :goto_b5
    return-void
.end method

.method private declared-synchronized deselectAlsaDevice()V
    .registers 2

    monitor-enter p0

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v0, :cond_b

    .line 173
    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaDevice;->stop()V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 176
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    :cond_b
    monitor-exit p0

    return-void

    .line 171
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getAlsaDeviceListIndexFor(Ljava/lang/String;)I
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 180
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbAlsaDevice;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 181
    return v0

    .line 179
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    .end local v0    # "index":I
    :cond_1f
    const/4 v0, -0x1

    return v0
.end method

.method private static isDeviceDenylisted(III)Z
    .registers 7
    .param p0, "vendorId"    # I
    .param p1, "productId"    # I
    .param p2, "flags"    # I

    .line 101
    sget-object v0, Lcom/android/server/usb/UsbAlsaManager;->sDeviceDenylist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;

    .line 102
    .local v1, "entry":Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;
    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mVendorId:I

    if-ne v3, p0, :cond_22

    iget v3, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mProductId:I

    if-ne v3, p1, :cond_22

    .line 104
    iget v0, v1, Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;->mFlags:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_21

    const/4 v2, 0x1

    :cond_21
    return v2

    .line 106
    .end local v1    # "entry":Lcom/android/server/usb/UsbAlsaManager$DenyListEntry;
    :cond_22
    goto :goto_6

    .line 108
    :cond_23
    return v2
.end method

.method private removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;
    .registers 4
    .param p1, "deviceAddress"    # Ljava/lang/String;

    .line 188
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->getAlsaDeviceListIndexFor(Ljava/lang/String;)I

    move-result v0

    .line 189
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_10

    .line 190
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbAlsaDevice;

    return-object v1

    .line 192
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method private declared-synchronized selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V
    .registers 5
    .param p1, "alsaDevice"    # Lcom/android/server/usb/UsbAlsaDevice;

    monitor-enter p0

    .line 141
    :try_start_1
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "vendor.audio.gaming.enabled"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 142
    sput-boolean v1, Lcom/android/server/usb/UsbAlsaManager;->mIsSingleMode:Z

    .line 146
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    :cond_16
    sget-boolean v0, Lcom/android/server/usb/UsbAlsaManager;->mIsSingleMode:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-eqz v0, :cond_21

    .line 147
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 155
    :cond_21
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "usb_audio_automatic_routing_disabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_39

    .line 157
    .local v0, "isDisabled":I
    if-eqz v0, :cond_32

    .line 158
    monitor-exit p0

    return-void

    .line 161
    .restart local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    :cond_32
    :try_start_32
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    .line 162
    invoke-virtual {p1}, Lcom/android/server/usb/UsbAlsaDevice;->start()V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_39

    .line 166
    monitor-exit p0

    return-void

    .line 140
    .end local v0    # "isDisabled":I
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    .end local p1    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 15
    .param p1, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J

    .line 388
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 390
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v2}, Lcom/android/internal/alsa/AlsaCardsParser;->getScanStatus()I

    move-result v2

    const-string v3, "cards_parser"

    const-wide v4, 0x10500000001L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 392
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbAlsaDevice;

    .line 393
    .local v3, "usbAlsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    const-wide v4, 0x20b00000002L

    const-string v6, "alsa_devices"

    invoke-virtual {v3, p1, v6, v4, v5}, Lcom/android/server/usb/UsbAlsaDevice;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 394
    .end local v3    # "usbAlsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    goto :goto_1a

    .line 396
    :cond_31
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 398
    .local v3, "deviceAddr":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/UsbMidiDevice;

    const-wide v8, 0x20b00000003L

    const-string/jumbo v7, "midi_devices"

    move-object v5, v3

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/usb/UsbMidiDevice;->dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 400
    .end local v3    # "deviceAddr":Ljava/lang/String;
    goto :goto_3b

    .line 402
    :cond_5d
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 403
    return-void
.end method

.method public logDevices(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 426
    return-void
.end method

.method public logDevicesList(Ljava/lang/String;)V
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .line 415
    return-void
.end method

.method selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;
    .registers 3

    .line 201
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17

    .line 202
    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbAlsaDevice;

    .line 206
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    if-eqz v0, :cond_16

    .line 207
    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 209
    :cond_16
    return-object v0

    .line 211
    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method setPeripheralMidiState(ZII)V
    .registers 12
    .param p1, "enabled"    # Z
    .param p2, "card"    # I
    .param p3, "device"    # I

    .line 346
    iget-boolean v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mHasMidiFeature:Z

    if-nez v0, :cond_5

    .line 347
    return-void

    .line 350
    :cond_5
    if-eqz p1, :cond_55

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-nez v0, :cond_55

    .line 351
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 352
    .local v0, "properties":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 353
    .local v7, "r":Landroid/content/res/Resources;
    const v1, 0x1040969

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const v1, 0x1040968

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "manufacturer"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const v1, 0x104096a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "product"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "alsa_card"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 360
    const-string v1, "alsa_device"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 361
    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, v0

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/usb/UsbMidiDevice;->create(Landroid/content/Context;Landroid/os/Bundle;IIII)Lcom/android/server/usb/UsbMidiDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    .end local v0    # "properties":Landroid/os/Bundle;
    .end local v7    # "r":Landroid/content/res/Resources;
    goto :goto_62

    .line 363
    :cond_55
    if-nez p1, :cond_62

    iget-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    if-eqz v0, :cond_62

    .line 364
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mPeripheralMidiDevice:Lcom/android/server/usb/UsbMidiDevice;

    goto :goto_63

    .line 363
    :cond_62
    :goto_62
    nop

    .line 367
    :goto_63
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 126
    nop

    .line 127
    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    .line 128
    return-void
.end method

.method usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 24
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "parser"    # Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    invoke-virtual {v1}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()I

    .line 226
    iget-object v1, v0, Lcom/android/server/usb/UsbAlsaManager;->mCardsParser:Lcom/android/internal/alsa/AlsaCardsParser;

    .line 227
    invoke-virtual {v1, v11}, Lcom/android/internal/alsa/AlsaCardsParser;->findCardNumFor(Ljava/lang/String;)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v12

    .line 228
    .local v12, "cardRec":Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    if-nez v12, :cond_12

    .line 229
    return-void

    .line 233
    :cond_12
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasInput()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_2b

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {v1, v3, v4}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    move-result v1

    if-nez v1, :cond_2b

    move v1, v2

    goto :goto_2c

    :cond_2b
    move v1, v13

    :goto_2c
    move v14, v1

    .line 236
    .local v14, "hasInput":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasOutput()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v3

    invoke-static {v1, v3, v2}, Lcom/android/server/usb/UsbAlsaManager;->isDeviceDenylisted(III)Z

    move-result v1

    if-nez v1, :cond_42

    goto :goto_43

    :cond_42
    move v2, v13

    :goto_43
    move v15, v2

    .line 242
    .local v15, "hasOutput":Z
    if-nez v14, :cond_48

    if-eqz v15, :cond_8c

    .line 243
    :cond_48
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v16

    .line 244
    .local v16, "isInputHeadset":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v17

    .line 245
    .local v17, "isOutputHeadset":Z
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isDock()Z

    move-result v18

    .line 247
    .local v18, "isDock":Z
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAudioService:Landroid/media/IAudioService;

    if-nez v2, :cond_61

    .line 248
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "no AudioService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void

    .line 252
    :cond_61
    new-instance v19, Lcom/android/server/usb/UsbAlsaDevice;

    .line 253
    invoke-virtual {v12}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardNum()I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v1, v19

    move-object/from16 v5, p1

    move v6, v15

    move v7, v14

    move/from16 v8, v16

    move/from16 v9, v17

    move/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Lcom/android/server/usb/UsbAlsaDevice;-><init>(Landroid/media/IAudioService;IILjava/lang/String;ZZZZZ)V

    .line 256
    .local v1, "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    nop

    .line 257
    nop

    .line 258
    invoke-virtual {v12}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->getCardDescription()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {v1, v2, v3}, Lcom/android/server/usb/UsbAlsaDevice;->setDeviceNameAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v2, v0, Lcom/android/server/usb/UsbAlsaManager;->mAlsaDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v13, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 260
    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbAlsaManager;->selectAlsaDevice(Lcom/android/server/usb/UsbAlsaDevice;)V

    .line 264
    .end local v1    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    .end local v16    # "isInputHeadset":Z
    .end local v17    # "isOutputHeadset":Z
    .end local v18    # "isDock":Z
    :cond_8c
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v11, v1, v2, v12}, Lcom/android/server/usb/UsbAlsaManager;->addMidiDevice(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;)V

    .line 266
    const-string v3, "deviceAdded()"

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method declared-synchronized usbDeviceRemoved(Ljava/lang/String;)V
    .registers 7
    .param p1, "deviceAddress"    # Ljava/lang/String;

    monitor-enter p0

    .line 327
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbAlsaManager;->removeAlsaDeviceFromList(Ljava/lang/String;)Lcom/android/server/usb/UsbAlsaDevice;

    move-result-object v0

    .line 328
    .local v0, "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    sget-object v1, Lcom/android/server/usb/UsbAlsaManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB Audio Device Removed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mSelectedDevice:Lcom/android/server/usb/UsbAlsaDevice;

    if-ne v0, v2, :cond_29

    .line 330
    invoke-direct {p0}, Lcom/android/server/usb/UsbAlsaManager;->deselectAlsaDevice()V

    .line 331
    invoke-virtual {p0}, Lcom/android/server/usb/UsbAlsaManager;->selectDefaultDevice()Lcom/android/server/usb/UsbAlsaDevice;

    .line 335
    .end local p0    # "this":Lcom/android/server/usb/UsbAlsaManager;
    :cond_29
    iget-object v2, p0, Lcom/android/server/usb/UsbAlsaManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbMidiDevice;

    .line 336
    .local v2, "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    if-eqz v2, :cond_4c

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB MIDI Device Removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 341
    :cond_4c
    const-string/jumbo v1, "usbDeviceRemoved()"

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbAlsaManager;->logDevices(Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 343
    monitor-exit p0

    return-void

    .line 326
    .end local v0    # "alsaDevice":Lcom/android/server/usb/UsbAlsaDevice;
    .end local v2    # "usbMidiDevice":Lcom/android/server/usb/UsbMidiDevice;
    .end local p1    # "deviceAddress":Ljava/lang/String;
    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method
