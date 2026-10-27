.class public Landroid/hardware/usb/AccessoryFilter;
.super Ljava/lang/Object;
.source "AccessoryFilter.java"


# instance fields
.field public final greylist-max-o mManufacturer:Ljava/lang/String;

.field public final greylist-max-o mModel:Ljava/lang/String;

.field public final greylist-max-o mVersion:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/usb/AccessoryFilter;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 63
    iget-object p1, p1, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iput-object p1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/hardware/usb/UsbAccessory;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static greylist-max-o read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 72
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 73
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    move-object v2, v3

    :goto_c
    if-ge v4, v0, :cond_36

    .line 74
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-interface {p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 77
    const-string v7, "manufacturer"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 78
    move-object v1, v6

    goto :goto_33

    .line 79
    :cond_20
    const-string v7, "model"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 80
    move-object v2, v6

    goto :goto_33

    .line 81
    :cond_2a
    const-string v7, "version"

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 82
    move-object v3, v6

    .line 73
    :cond_33
    :goto_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 85
    :cond_36
    new-instance p0, Landroid/hardware/usb/AccessoryFilter;

    invoke-direct {p0, v1, v2, v3}, Landroid/hardware/usb/AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public greylist-max-o contains(Landroid/hardware/usb/AccessoryFilter;)Z
    .registers 5

    .line 116
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 117
    return v1

    .line 119
    :cond_10
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 120
    :cond_1f
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_2d

    iget-object p1, p1, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    :cond_2d
    const/4 v1, 0x1

    :cond_2e
    return v1
.end method

.method public greylist-max-o dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 8

    .line 162
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 164
    const-wide v0, 0x10900000001L

    iget-object p4, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 165
    const-wide v0, 0x10900000002L

    iget-object p4, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 166
    const-wide v0, 0x10900000003L

    iget-object p4, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 168
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 169
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 126
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v0, :cond_e

    goto :goto_66

    .line 129
    :cond_e
    instance-of v0, p1, Landroid/hardware/usb/AccessoryFilter;

    const/4 v2, 0x1

    if-eqz v0, :cond_37

    .line 130
    check-cast p1, Landroid/hardware/usb/AccessoryFilter;

    .line 131
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    move v1, v2

    goto :goto_36

    :cond_35
    nop

    .line 131
    :goto_36
    return v1

    .line 135
    :cond_37
    instance-of v0, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_65

    .line 136
    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    .line 137
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    move v1, v2

    goto :goto_64

    :cond_63
    nop

    .line 137
    :goto_64
    return v1

    .line 141
    :cond_65
    return v1

    .line 127
    :cond_66
    :goto_66
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 146
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_d

    :cond_7
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 147
    :goto_d
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_19

    :cond_13
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_19
    xor-int/2addr v0, v2

    .line 148
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v2, :cond_1f

    goto :goto_25

    :cond_1f
    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_25
    xor-int/2addr v0, v1

    .line 146
    return v0
.end method

.method public greylist-max-o matches(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 5

    .line 103
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 104
    :cond_12
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    return v1

    .line 105
    :cond_23
    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget-object v0, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    :cond_33
    const/4 v1, 0x1

    :cond_34
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessoryFilter[mManufacturer=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mModel=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    const/4 v0, 0x0

    const-string v1, "usb-accessory"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 91
    const-string v2, "manufacturer"

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    :cond_11
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 94
    const-string v2, "model"

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    :cond_1c
    iget-object v2, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 97
    const-string v2, "version"

    iget-object v3, p0, Landroid/hardware/usb/AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    :cond_27
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 100
    return-void
.end method
