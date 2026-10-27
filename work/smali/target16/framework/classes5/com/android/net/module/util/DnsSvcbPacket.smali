.class public Lcom/android/net/module/util/DnsSvcbPacket;
.super Lcom/android/net/module/util/DnsPacket;
.source "DnsSvcbPacket.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TYPE_SVCB:I = 0x40


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/android/net/module/util/DnsSvcbPacket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/DnsSvcbPacket;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket;-><init>([B)V

    .line 49
    iget-object p1, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result p1

    .line 50
    const/4 v1, 0x1

    if-ne p1, v1, :cond_37

    .line 53
    iget-object p1, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mRecords:[Ljava/util/List;

    aget-object p1, p1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    iget p1, p1, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    .line 54
    const/16 v0, 0x40

    if-ne p1, v0, :cond_1e

    .line 57
    return-void

    .line 55
    :cond_1e
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected query type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_37
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected question count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;
    .registers 5

    .line 126
    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mRecords:[Ljava/util/List;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    .line 127
    instance-of v2, v1, Lcom/android/net/module/util/DnsSvcbRecord;

    if-eqz v2, :cond_26

    .line 128
    check-cast v1, Lcom/android/net/module/util/DnsSvcbRecord;

    .line 129
    invoke-virtual {v1}, Lcom/android/net/module/util/DnsSvcbRecord;->getAlpns()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 130
    return-object v1

    .line 133
    :cond_26
    goto :goto_9

    .line 134
    :cond_27
    const/4 p1, 0x0

    return-object p1
.end method

.method public static blacklist fromResponse([B)Lcom/android/net/module/util/DnsSvcbPacket;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 164
    new-instance v0, Lcom/android/net/module/util/DnsSvcbPacket;

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsSvcbPacket;-><init>([B)V

    .line 165
    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbPacket;->isResponse()Z

    move-result p0

    if-eqz p0, :cond_c

    .line 168
    return-object v0

    .line 166
    :cond_c
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v0, "Not an answer packet"

    invoke-direct {p0, v0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getAddressesFromAdditionalSection()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->getRecordCount(I)I

    move-result v1

    if-nez v1, :cond_f

    .line 144
    return-object v0

    .line 146
    :cond_f
    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mRecords:[Ljava/util/List;

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/net/module/util/DnsPacket$DnsRecord;

    .line 147
    iget v3, v2, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_49

    iget v3, v2, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_49

    .line 148
    sget-object v3, Lcom/android/net/module/util/DnsSvcbPacket;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found type other than A/AAAA in Additional section: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v2, v2, Lcom/android/net/module/util/DnsPacket$DnsRecord;->nsType:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    goto :goto_17

    .line 152
    :cond_49
    :try_start_49
    invoke-virtual {v2}, Lcom/android/net/module/util/DnsPacket$DnsRecord;->getRR()[B

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_54
    .catch Ljava/net/UnknownHostException; {:try_start_49 .. :try_end_54} :catch_55

    .line 155
    goto :goto_5d

    .line 153
    :catch_55
    move-exception v2

    .line 154
    sget-object v2, Lcom/android/net/module/util/DnsSvcbPacket;->TAG:Ljava/lang/String;

    const-string v3, "Failed to parse address"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_5d
    goto :goto_17

    .line 157
    :cond_5e
    return-object v0
.end method


# virtual methods
.method public blacklist getAddresses(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object p1

    .line 99
    if-nez p1, :cond_9

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1

    .line 104
    :cond_9
    invoke-direct {p0}, Lcom/android/net/module/util/DnsSvcbPacket;->getAddressesFromAdditionalSection()Ljava/util/List;

    move-result-object v0

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_14

    return-object v0

    .line 107
    :cond_14
    invoke-virtual {p1}, Lcom/android/net/module/util/DnsSvcbRecord;->getAddresses()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getDohPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 116
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object p1

    .line 117
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/net/module/util/DnsSvcbRecord;->getDohPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public blacklist getPort(Ljava/lang/String;)I
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object p1

    .line 89
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/net/module/util/DnsSvcbRecord;->getPort()I

    move-result p1

    goto :goto_c

    :cond_b
    const/4 p1, -0x1

    :goto_c
    return p1
.end method

.method public blacklist getTargetName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object p1

    .line 80
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/net/module/util/DnsSvcbRecord;->getTargetName()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public blacklist isResponse()Z
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbPacket;->mHeader:Lcom/android/net/module/util/DnsPacket$DnsHeader;

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsPacket$DnsHeader;->isResponse()Z

    move-result v0

    return v0
.end method

.method public blacklist isSupported(Ljava/lang/String;)Z
    .registers 2

    .line 70
    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsSvcbPacket;->findSvcbRecord(Ljava/lang/String;)Lcom/android/net/module/util/DnsSvcbRecord;

    move-result-object p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method
