.class public Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
.super Ljava/lang/Object;
.source "DevicePorts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/audio/policy/configuration/V7_0/DevicePorts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DevicePort"
.end annotation


# instance fields
.field private blacklist _default:Ljava/lang/Boolean;

.field private blacklist address:Ljava/lang/String;

.field private blacklist encodedFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist gains:Landroid/audio/policy/configuration/V7_0/Gains;

.field private blacklist profile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist role:Landroid/audio/policy/configuration/V7_0/Role;

.field private blacklist tagName:Ljava/lang/String;

.field private blacklist type:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 133
    new-instance v0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;

    invoke-direct {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;-><init>()V

    .line 134
    nop

    .line 135
    const-string/jumbo v1, "tagName"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    if-eqz v1, :cond_14

    .line 137
    nop

    .line 138
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setTagName(Ljava/lang/String;)V

    .line 140
    :cond_14
    const-string/jumbo v1, "type"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_21

    .line 142
    nop

    .line 143
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setType(Ljava/lang/String;)V

    .line 145
    :cond_21
    const-string/jumbo v1, "role"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_31

    .line 147
    invoke-static {v1}, Landroid/audio/policy/configuration/V7_0/Role;->fromString(Ljava/lang/String;)Landroid/audio/policy/configuration/V7_0/Role;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setRole(Landroid/audio/policy/configuration/V7_0/Role;)V

    .line 150
    :cond_31
    const-string v1, "address"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v1, :cond_3d

    .line 152
    nop

    .line 153
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setAddress(Ljava/lang/String;)V

    .line 155
    :cond_3d
    const-string v1, "default"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    if-eqz v1, :cond_4c

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->set_default(Z)V

    .line 160
    :cond_4c
    const-string v1, "encodedFormats"

    invoke-interface {p0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_6e

    .line 162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_61
    if-ge v4, v3, :cond_6b

    aget-object v5, v1, v4

    .line 164
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_61

    .line 166
    :cond_6b
    invoke-virtual {v0, v2}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setEncodedFormats(Ljava/util/List;)V

    .line 168
    :cond_6e
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 170
    :goto_71
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_b0

    if-eq v1, v2, :cond_b0

    .line 172
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_83

    goto :goto_71

    .line 173
    :cond_83
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string/jumbo v2, "profile"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 175
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Profile;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Profile;

    move-result-object v1

    .line 176
    invoke-virtual {v0}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->getProfile()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    goto :goto_af

    :cond_9c
    const-string v2, "gains"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 178
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/Gains;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/audio/policy/configuration/V7_0/Gains;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V

    .line 180
    goto :goto_af

    .line 181
    :cond_ac
    invoke-static {p0}, Landroid/audio/policy/configuration/V7_0/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 183
    :goto_af
    goto :goto_71

    .line 184
    :cond_b0
    if-ne v1, v2, :cond_b3

    .line 187
    return-object v0

    .line 185
    :cond_b3
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DevicePorts.DevicePort is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getAddress()Ljava/lang/String;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEncodedFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    .line 118
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getGains()Landroid/audio/policy/configuration/V7_0/Gains;
    .registers 2

    .line 22
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    return-object v0
.end method

.method public blacklist getProfile()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/audio/policy/configuration/V7_0/Profile;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    if-nez v0, :cond_b

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    .line 18
    :cond_b
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->profile:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getRole()Landroid/audio/policy/configuration/V7_0/Role;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    return-object v0
.end method

.method public blacklist getTagName()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist get_default()Z
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_6
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method blacklist hasAddress()Z
    .registers 2

    .line 86
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 87
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasEncodedFormats()Z
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    if-nez v0, :cond_6

    .line 123
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasGains()Z
    .registers 2

    .line 26
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    if-nez v0, :cond_6

    .line 27
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasRole()Z
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    if-nez v0, :cond_6

    .line 72
    const/4 v0, 0x0

    return v0

    .line 74
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasTagName()Z
    .registers 2

    .line 41
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 42
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist hasType()Z
    .registers 2

    .line 56
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method blacklist has_default()Z
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setAddress(Ljava/lang/String;)V
    .registers 2

    .line 93
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->address:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public blacklist setEncodedFormats(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->encodedFormats:Ljava/util/List;

    .line 130
    return-void
.end method

.method public blacklist setGains(Landroid/audio/policy/configuration/V7_0/Gains;)V
    .registers 2

    .line 33
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->gains:Landroid/audio/policy/configuration/V7_0/Gains;

    .line 34
    return-void
.end method

.method public blacklist setRole(Landroid/audio/policy/configuration/V7_0/Role;)V
    .registers 2

    .line 78
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->role:Landroid/audio/policy/configuration/V7_0/Role;

    .line 79
    return-void
.end method

.method public blacklist setTagName(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->tagName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public blacklist setType(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->type:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public blacklist set_default(Z)V
    .registers 2

    .line 111
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/audio/policy/configuration/V7_0/DevicePorts$DevicePort;->_default:Ljava/lang/Boolean;

    .line 112
    return-void
.end method
