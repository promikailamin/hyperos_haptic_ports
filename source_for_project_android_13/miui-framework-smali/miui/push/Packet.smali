.class public abstract Lmiui/push/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field protected static final blacklist DEFAULT_LANGUAGE:Ljava/lang/String;

.field private static blacklist DEFAULT_XML_NS:Ljava/lang/String; = null

.field public static final blacklist ID_NOT_AVAILABLE:Ljava/lang/String; = "ID_NOT_AVAILABLE"

.field public static final blacklist XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

.field private static blacklist id:J

.field private static blacklist prefix:Ljava/lang/String;


# instance fields
.field private blacklist chId:Ljava/lang/String;

.field private blacklist error:Lmiui/push/XMPPError;

.field private blacklist from:Ljava/lang/String;

.field private blacklist packetExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist packetID:Ljava/lang/String;

.field private final blacklist properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist to:Ljava/lang/String;

.field private blacklist xmlns:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 57
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/push/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/Packet;->XEP_0082_UTC_FORMAT:Ljava/text/DateFormat;

    .line 79
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lmiui/push/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/push/Packet;->prefix:Ljava/lang/String;

    .line 92
    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/push/Packet;->id:J

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    .line 108
    iput-object v0, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 125
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "b"    # Landroid/os/Bundle;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    iput-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 104
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    .line 108
    iput-object v0, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 128
    const-string v0, "ext_to"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 129
    const-string v0, "ext_from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 130
    const-string v0, "ext_chid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 131
    const-string v0, "ext_pkt_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 132
    const-string v0, "ext_exts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 133
    .local v0, "extBundles":[Landroid/os/Parcelable;
    if-eqz v0, :cond_67

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    .line 135
    array-length v1, v0

    const/4 v2, 0x0

    :goto_52
    if-ge v2, v1, :cond_67

    aget-object v3, v0, v2

    .line 136
    .local v3, "p":Landroid/os/Parcelable;
    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    .line 137
    .local v4, "bund":Landroid/os/Bundle;
    invoke-static {v4}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v5

    .line 138
    .local v5, "ext":Lmiui/push/CommonPacketExtension;
    if-eqz v5, :cond_64

    .line 139
    iget-object v6, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v3    # "p":Landroid/os/Parcelable;
    .end local v4    # "bund":Landroid/os/Bundle;
    .end local v5    # "ext":Lmiui/push/CommonPacketExtension;
    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_52

    .line 143
    :cond_67
    const-string v1, "ext_ERROR"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 144
    .local v1, "errBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_76

    .line 145
    new-instance v2, Lmiui/push/XMPPError;

    invoke-direct {v2, v1}, Lmiui/push/XMPPError;-><init>(Landroid/os/Bundle;)V

    iput-object v2, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 147
    :cond_76
    return-void
.end method

.method public static blacklist getDefaultLanguage()Ljava/lang/String;
    .registers 1

    .line 519
    sget-object v0, Lmiui/push/Packet;->DEFAULT_LANGUAGE:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized blacklist nextID()Ljava/lang/String;
    .registers 6

    const-class v0, Lmiui/push/Packet;

    monitor-enter v0

    .line 117
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiui/push/Packet;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lmiui/push/Packet;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    sput-wide v4, Lmiui/push/Packet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    monitor-exit v0

    return-object v1

    .line 117
    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static blacklist setDefaultXmlns(Ljava/lang/String;)V
    .registers 1
    .param p0, "defaultXmlns"    # Ljava/lang/String;

    .line 121
    sput-object p0, Lmiui/push/Packet;->DEFAULT_XML_NS:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public blacklist addExtension(Lmiui/push/CommonPacketExtension;)V
    .registers 3
    .param p1, "extension"    # Lmiui/push/CommonPacketExtension;

    .line 318
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method

.method public declared-synchronized blacklist deleteProperty(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 366
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_c

    if-nez v0, :cond_7

    .line 367
    monitor-exit p0

    return-void

    .line 369
    :cond_7
    :try_start_7
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_c

    .line 370
    monitor-exit p0

    return-void

    .line 365
    .end local p0    # "this":Lmiui/push/Packet;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 523
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 524
    return v0

    .line 525
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_a1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_a1

    .line 528
    :cond_13
    move-object v2, p1

    check-cast v2, Lmiui/push/Packet;

    .line 530
    .local v2, "packet":Lmiui/push/Packet;
    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_23

    iget-object v4, v2, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    goto :goto_27

    :cond_23
    iget-object v3, v2, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_28

    .line 531
    :goto_27
    return v1

    .line 533
    :cond_28
    iget-object v3, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_35

    iget-object v4, v2, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    goto :goto_39

    :cond_35
    iget-object v3, v2, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 534
    :goto_39
    return v1

    .line 536
    :cond_3a
    iget-object v3, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    iget-object v4, v2, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 537
    return v1

    .line 539
    :cond_45
    iget-object v3, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_52

    iget-object v4, v2, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    goto :goto_56

    :cond_52
    iget-object v3, v2, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_57

    .line 540
    :goto_56
    return v1

    .line 542
    :cond_57
    iget-object v3, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v3, :cond_64

    iget-object v4, v2, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    goto :goto_68

    :cond_64
    iget-object v3, v2, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v3, :cond_69

    .line 543
    :goto_68
    return v1

    .line 545
    :cond_69
    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v3, :cond_76

    iget-object v4, v2, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    goto :goto_7a

    :cond_76
    iget-object v3, v2, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v3, :cond_7b

    .line 546
    :goto_7a
    return v1

    .line 548
    :cond_7b
    iget-object v3, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_88

    iget-object v4, v2, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    goto :goto_8c

    :cond_88
    iget-object v3, v2, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_8d

    .line 549
    :goto_8c
    return v1

    .line 551
    :cond_8d
    iget-object v3, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-eqz v3, :cond_9a

    iget-object v4, v2, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    goto :goto_9f

    :cond_9a
    iget-object v3, v2, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    if-nez v3, :cond_9f

    :cond_9e
    goto :goto_a0

    :cond_9f
    :goto_9f
    move v0, v1

    :goto_a0
    return v0

    .line 526
    .end local v2    # "packet":Lmiui/push/Packet;
    :cond_a1
    :goto_a1
    return v1
.end method

.method public blacklist getChannelId()Ljava/lang/String;
    .registers 2

    .line 178
    iget-object v0, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getError()Lmiui/push/XMPPError;
    .registers 2

    .line 250
    iget-object v0, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    return-object v0
.end method

.method public blacklist getExtension(Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .registers 3
    .param p1, "elementName"    # Ljava/lang/String;

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/push/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/CommonPacketExtension;
    .registers 6
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    .line 304
    .local v1, "ext":Lmiui/push/CommonPacketExtension;
    if-eqz p2, :cond_1e

    invoke-virtual {v1}, Lmiui/push/CommonPacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 305
    :cond_1e
    invoke-virtual {v1}, Lmiui/push/CommonPacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 306
    return-object v1

    .line 308
    .end local v1    # "ext":Lmiui/push/CommonPacketExtension;
    :cond_29
    goto :goto_6

    .line 309
    :cond_2a
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized blacklist getExtensions()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    if-nez v0, :cond_b

    .line 270
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    monitor-exit p0

    return-object v0

    .line 272
    .end local p0    # "this":Lmiui/push/Packet;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 268
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized blacklist getExtensionsXML()Ljava/lang/String;
    .registers 10

    monitor-enter p0

    .line 444
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lmiui/push/Packet;->getExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/push/PacketExtension;

    .line 447
    .local v2, "extension":Lmiui/push/PacketExtension;
    invoke-interface {v2}, Lmiui/push/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    nop

    .end local v2    # "extension":Lmiui/push/PacketExtension;
    goto :goto_e

    .line 450
    .end local p0    # "this":Lmiui/push/Packet;
    :cond_23
    iget-object v1, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-eqz v1, :cond_14b

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14b

    .line 451
    const-string v1, "<properties xmlns=\"http://www.jivesoftware.com/xmlns/xmpp/properties\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p0}, Lmiui/push/Packet;->getPropertyNames()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_146

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 454
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lmiui/push/Packet;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 455
    .local v3, "value":Ljava/lang/Object;
    const-string v4, "<property>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string v4, "<name>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</name>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v4, "<value type=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_7c

    .line 459
    const-string v4, "integer\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12f

    .line 460
    :cond_7c
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_91

    .line 461
    const-string v4, "long\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12f

    .line 462
    :cond_91
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_a6

    .line 463
    const-string v4, "float\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12f

    .line 464
    :cond_a6
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_bb

    .line 465
    const-string v4, "double\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_12f

    .line 466
    :cond_bb
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_cf

    .line 467
    const-string v4, "boolean\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</value>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12f

    .line 468
    :cond_cf
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_e8

    .line 469
    const-string v4, "string\">"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v4, "</value>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_e7
    .catchall {:try_start_1 .. :try_end_e7} :catchall_151

    goto :goto_12f

    .line 479
    :cond_e8
    const/4 v4, 0x0

    .line 480
    .local v4, "byteStream":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 482
    .local v5, "out":Ljava/io/ObjectOutputStream;
    :try_start_ea
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v6

    .line 483
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v6

    .line 484
    invoke-virtual {v5, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 485
    const-string v6, "java-object\">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Lmiui/push/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, "encodedVal":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</value>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_10f} :catch_11c
    .catchall {:try_start_ea .. :try_end_10f} :catchall_11a

    .line 491
    nop

    .line 493
    .end local v6    # "encodedVal":Ljava/lang/String;
    :try_start_110
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_110 .. :try_end_113} :catch_114
    .catchall {:try_start_110 .. :try_end_113} :catchall_151

    .line 496
    goto :goto_115

    .line 494
    :catch_114
    move-exception v6

    .line 498
    :goto_115
    nop

    .line 500
    :try_start_116
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_116 .. :try_end_119} :catch_12d
    .catchall {:try_start_116 .. :try_end_119} :catchall_151

    goto :goto_12c

    .line 491
    :catchall_11a
    move-exception v1

    goto :goto_137

    .line 488
    :catch_11c
    move-exception v6

    .line 489
    .local v6, "e":Ljava/lang/Exception;
    :try_start_11d
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_11a

    .line 491
    .end local v6    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_127

    .line 493
    :try_start_122
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_125} :catch_126
    .catchall {:try_start_122 .. :try_end_125} :catchall_151

    .line 496
    goto :goto_127

    .line 494
    :catch_126
    move-exception v6

    .line 498
    :cond_127
    :goto_127
    if-eqz v4, :cond_12f

    .line 500
    :try_start_129
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_129 .. :try_end_12c} :catch_12d
    .catchall {:try_start_129 .. :try_end_12c} :catchall_151

    .line 503
    :goto_12c
    goto :goto_12f

    .line 501
    :catch_12d
    move-exception v6

    goto :goto_12c

    .line 507
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "out":Ljava/io/ObjectOutputStream;
    :cond_12f
    :goto_12f
    :try_start_12f
    const-string v4, "</property>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_134
    .catchall {:try_start_12f .. :try_end_134} :catchall_151

    .line 508
    nop

    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto/16 :goto_3a

    .line 491
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "out":Ljava/io/ObjectOutputStream;
    :goto_137
    if-eqz v5, :cond_13e

    .line 493
    :try_start_139
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_13c} :catch_13d
    .catchall {:try_start_139 .. :try_end_13c} :catchall_151

    .line 496
    goto :goto_13e

    .line 494
    :catch_13d
    move-exception v6

    .line 498
    :cond_13e
    :goto_13e
    if-eqz v4, :cond_145

    .line 500
    :try_start_140
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_143
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_143} :catch_144
    .catchall {:try_start_140 .. :try_end_143} :catchall_151

    .line 503
    goto :goto_145

    .line 501
    :catch_144
    move-exception v6

    .line 505
    :cond_145
    :goto_145
    :try_start_145
    throw v1

    .line 509
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "out":Ljava/io/ObjectOutputStream;
    :cond_146
    const-string v1, "</properties>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    :cond_14b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_14f
    .catchall {:try_start_145 .. :try_end_14f} :catchall_151

    monitor-exit p0

    return-object v1

    .line 443
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    :catchall_151
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getFrom()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPacketID()Ljava/lang/String;
    .registers 3

    .line 157
    iget-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    const-string v1, "ID_NOT_AVAILABLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 158
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_c
    iget-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 162
    invoke-static {}, Lmiui/push/Packet;->nextID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 164
    :cond_16
    iget-object v0, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 340
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_8

    .line 341
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 343
    :cond_8
    :try_start_8
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 339
    .end local p0    # "this":Lmiui/push/Packet;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getPropertyNames()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 379
    :try_start_1
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 380
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 382
    .end local p0    # "this":Lmiui/push/Packet;
    :cond_b
    :try_start_b
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v0

    .line 378
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getTo()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getXmlns()Ljava/lang/String;
    .registers 2

    .line 515
    iget-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 556
    iget-object v0, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 557
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    add-int/2addr v2, v3

    .line 558
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_24

    :cond_23
    move v3, v1

    :goto_24
    add-int/2addr v0, v3

    .line 559
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    if-eqz v3, :cond_30

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_31

    :cond_30
    move v3, v1

    :goto_31
    add-int/2addr v2, v3

    .line 560
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_3e

    :cond_3d
    move v3, v1

    :goto_3e
    add-int/2addr v0, v3

    .line 561
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 562
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 563
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5b
    add-int/2addr v2, v1

    .line 564
    .end local v0    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public blacklist removeExtension(Lmiui/push/CommonPacketExtension;)V
    .registers 3
    .param p1, "extension"    # Lmiui/push/CommonPacketExtension;

    .line 327
    iget-object v0, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method public blacklist setChannelId(Ljava/lang/String;)V
    .registers 2
    .param p1, "appId"    # Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public blacklist setError(Lmiui/push/XMPPError;)V
    .registers 2
    .param p1, "error"    # Lmiui/push/XMPPError;

    .line 259
    iput-object p1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    .line 260
    return-void
.end method

.method public blacklist setFrom(Ljava/lang/String;)V
    .registers 2
    .param p1, "from"    # Ljava/lang/String;

    .line 240
    iput-object p1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public blacklist setPacketID(Ljava/lang/String;)V
    .registers 2
    .param p1, "packetID"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public declared-synchronized blacklist setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 354
    :try_start_1
    instance-of v0, p2, Ljava/io/Serializable;

    if-eqz v0, :cond_c

    .line 357
    iget-object v0, p0, Lmiui/push/Packet;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 358
    monitor-exit p0

    return-void

    .line 355
    .end local p0    # "this":Lmiui/push/Packet;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be serialiazble"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 353
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist setTo(Ljava/lang/String;)V
    .registers 2
    .param p1, "to"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public blacklist toBundle()Landroid/os/Bundle;
    .registers 8

    .line 403
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 404
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 405
    iget-object v1, p0, Lmiui/push/Packet;->xmlns:Ljava/lang/String;

    const-string v2, "ext_ns"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_14
    iget-object v1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 408
    iget-object v1, p0, Lmiui/push/Packet;->from:Ljava/lang/String;

    const-string v2, "ext_from"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_23
    iget-object v1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 411
    iget-object v1, p0, Lmiui/push/Packet;->to:Ljava/lang/String;

    const-string v2, "ext_to"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_32
    iget-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 414
    iget-object v1, p0, Lmiui/push/Packet;->packetID:Ljava/lang/String;

    const-string v2, "ext_pkt_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_41
    iget-object v1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 417
    iget-object v1, p0, Lmiui/push/Packet;->chId:Ljava/lang/String;

    const-string v2, "ext_chid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_50
    iget-object v1, p0, Lmiui/push/Packet;->error:Lmiui/push/XMPPError;

    if-eqz v1, :cond_5d

    .line 420
    invoke-virtual {v1}, Lmiui/push/XMPPError;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ext_ERROR"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 422
    :cond_5d
    iget-object v1, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    if-eqz v1, :cond_8b

    .line 423
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Bundle;

    .line 424
    .local v1, "extBundle":[Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 425
    .local v2, "i":I
    iget-object v3, p0, Lmiui/push/Packet;->packetExtensions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/push/CommonPacketExtension;

    .line 426
    .local v4, "ext":Lmiui/push/CommonPacketExtension;
    invoke-virtual {v4}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 427
    .local v5, "subBundle":Landroid/os/Bundle;
    if-eqz v5, :cond_85

    .line 428
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    aput-object v5, v1, v2

    move v2, v6

    .line 430
    .end local v4    # "ext":Lmiui/push/CommonPacketExtension;
    .end local v5    # "subBundle":Landroid/os/Bundle;
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_85
    goto :goto_6e

    .line 431
    :cond_86
    const-string v3, "ext_exts"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 433
    .end local v1    # "extBundle":[Landroid/os/Bundle;
    .end local v2    # "i":I
    :cond_8b
    return-object v0
.end method

.method public abstract blacklist toXML()Ljava/lang/String;
.end method
