.class public Landroid/audio/policy/configuration/V7_0/Modules$Module;
.super Ljava/lang/Object;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Module"
.end annotation


# instance fields
.field private blacklist attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

.field private blacklist defaultOutputDevice:Ljava/lang/String;

.field private blacklist devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

.field private blacklist halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

.field private blacklist mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

.field private blacklist name:Ljava/lang/String;

.field private blacklist routes:Landroid/audio/policy/configuration/V7_0/Routes;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Modules$Module;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 119
    new-instance v0, Landroid/audio/policy/configuration/V7_0/Modules$Module;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/Modules$Module;-><init>()V

    .line 120
    nop

    .line 121
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_14

    .line 123
    nop

    .line 124
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setName(Ljava/lang/String;)V

    .line 126
    :cond_14
    const-string v1, "halVersion"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_23

    .line 128
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/HalVersion;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/HalVersion;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setHalVersion(Landroid/audio/policy/configuration/V7_0/HalVersion;)V

    .line 131
    :cond_23
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 133
    :goto_26
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_93

    if-eq v1, v3, :cond_93

    .line 135
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_38

    goto :goto_26

    .line 136
    :cond_38
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 137
    const-string v2, "attachedDevices"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 138
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/AttachedDevices;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setAttachedDevices(Landroid/audio/policy/configuration/V7_0/AttachedDevices;)V

    .line 140
    goto :goto_92

    :cond_4c
    const-string v2, "defaultOutputDevice"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 141
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 142
    nop

    .line 143
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setDefaultOutputDevice(Ljava/lang/String;)V

    .line 144
    goto :goto_92

    :cond_5d
    const-string/jumbo v2, "mixPorts"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 145
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/MixPorts;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/MixPorts;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setMixPorts(Landroid/audio/policy/configuration/V7_0/MixPorts;)V

    .line 147
    goto :goto_92

    :cond_6e
    const-string v2, "devicePorts"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 148
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/DevicePorts;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/DevicePorts;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setDevicePorts(Landroid/audio/policy/configuration/V7_0/DevicePorts;)V

    .line 150
    goto :goto_92

    :cond_7e
    const-string/jumbo v2, "routes"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 151
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Routes;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Routes;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/Modules$Module;->setRoutes(Landroid/audio/policy/configuration/V7_0/Routes;)V

    .line 153
    goto :goto_92

    .line 154
    :cond_8f
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 156
    :goto_92
    goto :goto_26

    .line 157
    :cond_93
    if-ne v1, v3, :cond_96

    .line 160
    return-object v0

    .line 158
    :cond_96
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Modules.Module is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getAttachedDevices()Landroid/audio/policy/configuration/V7_0/AttachedDevices;
    .registers 2

    .line 14
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    return-object v0
.end method

.method public blacklist getDefaultOutputDevice()Ljava/lang/String;
    .registers 2

    .line 29
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->defaultOutputDevice:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDevicePorts()Landroid/audio/policy/configuration/V7_0/DevicePorts;
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

    return-object v0
.end method

.method public blacklist getHalVersion()Landroid/audio/policy/configuration/V7_0/HalVersion;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

    return-object v0
.end method

.method public blacklist getMixPorts()Landroid/audio/policy/configuration/V7_0/MixPorts;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRoutes()Landroid/audio/policy/configuration/V7_0/Routes;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->routes:Landroid/audio/policy/configuration/V7_0/Routes;

    return-object v0
.end method

.method blacklist hasAttachedDevices()Z
    .registers 2

    .line 18
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    if-nez v0, :cond_6

    .line 19
    const/4 v0, 0x0

    return v0

    .line 21
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasDefaultOutputDevice()Z
    .registers 2

    .line 33
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->defaultOutputDevice:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 34
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasDevicePorts()Z
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

    if-nez v0, :cond_6

    .line 64
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasHalVersion()Z
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

    if-nez v0, :cond_6

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasMixPorts()Z
    .registers 2

    .line 48
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

    if-nez v0, :cond_6

    .line 49
    const/4 v0, 0x0

    return v0

    .line 51
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasName()Z
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->name:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 94
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasRoutes()Z
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->routes:Landroid/audio/policy/configuration/V7_0/Routes;

    if-nez v0, :cond_6

    .line 79
    const/4 v0, 0x0

    return v0

    .line 81
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setAttachedDevices(Landroid/audio/policy/configuration/V7_0/AttachedDevices;)V
    .registers 2

    .line 25
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->attachedDevices:Landroid/audio/policy/configuration/V7_0/AttachedDevices;

    .line 26
    return-void
.end method

.method public blacklist setDefaultOutputDevice(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->defaultOutputDevice:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public blacklist setDevicePorts(Landroid/audio/policy/configuration/V7_0/DevicePorts;)V
    .registers 2

    .line 70
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->devicePorts:Landroid/audio/policy/configuration/V7_0/DevicePorts;

    .line 71
    return-void
.end method

.method public blacklist setHalVersion(Landroid/audio/policy/configuration/V7_0/HalVersion;)V
    .registers 2

    .line 115
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->halVersion:Landroid/audio/policy/configuration/V7_0/HalVersion;

    .line 116
    return-void
.end method

.method public blacklist setMixPorts(Landroid/audio/policy/configuration/V7_0/MixPorts;)V
    .registers 2

    .line 55
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->mixPorts:Landroid/audio/policy/configuration/V7_0/MixPorts;

    .line 56
    return-void
.end method

.method public blacklist setName(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public blacklist setRoutes(Landroid/audio/policy/configuration/V7_0/Routes;)V
    .registers 2

    .line 85
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/Modules$Module;->routes:Landroid/audio/policy/configuration/V7_0/Routes;

    .line 86
    return-void
.end method
