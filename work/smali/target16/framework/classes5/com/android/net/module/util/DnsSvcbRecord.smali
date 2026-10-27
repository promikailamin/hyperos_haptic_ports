.class public final Lcom/android/net/module/util/DnsSvcbRecord;
.super Lcom/android/net/module/util/DnsPacket$DnsRecord;
.source "DnsSvcbRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamEch;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv6Hint;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;,
        Lcom/android/net/module/util/DnsSvcbRecord$SvcParamValueUtil;
    }
.end annotation


# static fields
.field private static final blacklist KEY_ALPN:I = 0x1

.field private static final blacklist KEY_DOHPATH:I = 0x7

.field private static final blacklist KEY_ECH:I = 0x5

.field private static final blacklist KEY_IPV4HINT:I = 0x4

.field private static final blacklist KEY_IPV6HINT:I = 0x6

.field private static final blacklist KEY_MANDATORY:I = 0x0

.field private static final blacklist KEY_NO_DEFAULT_ALPN:I = 0x2

.field private static final blacklist KEY_PORT:I = 0x3

.field private static final blacklist MINSVCPARAMSIZE:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mAllSvcParams:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSvcPriority:I

.field private final blacklist mTargetName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smtoKeyName(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/net/module/util/DnsSvcbRecord;->toKeyName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 83
    const-class v0, Lcom/android/net/module/util/DnsSvcbRecord;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/DnsSvcbRecord;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/net/module/util/DnsPacket$DnsRecord;-><init>(ILjava/nio/ByteBuffer;)V

    .line 90
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    .line 97
    iget p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->nsType:I

    const/16 v0, 0x40

    if-ne p2, v0, :cond_ef

    .line 100
    iget p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->nsClass:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_d4

    .line 105
    const/4 p2, 0x0

    if-nez p1, :cond_1f

    .line 106
    iput p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mSvcPriority:I

    .line 107
    const-string p1, ""

    iput-object p1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    .line 108
    return-void

    .line 111
    :cond_1f
    invoke-virtual {p0}, Lcom/android/net/module/util/DnsSvcbRecord;->getRR()[B

    move-result-object p1

    .line 112
    if-eqz p1, :cond_cc

    .line 116
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    iput v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mSvcPriority:I

    .line 118
    invoke-static {p1, p2, p2}, Lcom/android/net/module/util/DnsPacketUtils$DnsRecordParser;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    .line 121
    iget-object p2, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0xff

    if-gt p2, v0, :cond_ad

    .line 126
    :goto_47
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    const/4 v0, 0x4

    if-lt p2, v0, :cond_83

    .line 127
    invoke-static {p1}, Lcom/android/net/module/util/DnsSvcbRecord;->parseSvcParam(Ljava/nio/ByteBuffer;)Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;

    move-result-object p2

    .line 128
    invoke-virtual {p2}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;->getKey()I

    move-result v0

    .line 129
    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_64

    .line 132
    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    goto :goto_47

    .line 130
    :cond_64
    new-instance p1, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DnsSvcbRecord, key "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is repeated"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-nez p2, :cond_8a

    .line 138
    return-void

    .line 135
    :cond_8a
    new-instance p2, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DnsSvcbRecord. Got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " remaining bytes after parsing"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 122
    :cond_ad
    new-instance p1, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse SVCB target name, name size is too long: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    .line 124
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 113
    :cond_cc
    new-instance p1, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p2, "SVCB rdata is empty"

    invoke-direct {p1, p2}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 101
    :cond_d4
    new-instance p1, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incorrect nsClass: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->nsClass:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 98
    :cond_ef
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "incorrect nsType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->nsType:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist parseSvcParam(Ljava/nio/ByteBuffer;)Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    .line 213
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 214
    packed-switch v0, :pswitch_data_4c

    .line 223
    new-instance v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;

    goto :goto_3f

    .line 222
    :pswitch_e
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 221
    :pswitch_14
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv6Hint;

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv6Hint;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 220
    :pswitch_1a
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamEch;

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamEch;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 219
    :pswitch_20
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpv4Hint;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 218
    :pswitch_26
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 217
    :pswitch_2c
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamNoDefaultAlpn;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 216
    :pswitch_32
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;

    invoke-direct {v0, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    .line 215
    :pswitch_38
    new-instance v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamMandatory;-><init>(Ljava/nio/ByteBuffer;Lcom/android/net/module/util/DnsSvcbRecord-IA;)V

    return-object v0

    .line 223
    :goto_3f
    invoke-direct {v1, v0, p0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamGeneric;-><init>(ILjava/nio/ByteBuffer;)V
    :try_end_42
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_42} :catch_43

    return-object v1

    .line 225
    :catch_43
    move-exception p0

    .line 226
    new-instance v0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string v1, "Malformed packet"

    invoke-direct {v0, v1, p0}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_1a
        :pswitch_14
        :pswitch_e
    .end packed-switch
.end method

.method public static blacklist sliceAndAdvance(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    .line 472
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p1, :cond_21

    .line 475
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 478
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 480
    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 481
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    .line 473
    :cond_21
    new-instance p0, Ljava/nio/BufferUnderflowException;

    invoke-direct {p0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw p0
.end method

.method private static blacklist toKeyName(I)Ljava/lang/String;
    .registers 3

    .line 452
    packed-switch p0, :pswitch_data_30

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 460
    :pswitch_17
    const-string p0, "dohpath"

    return-object p0

    .line 459
    :pswitch_1a
    const-string p0, "ipv6hint"

    return-object p0

    .line 458
    :pswitch_1d
    const-string p0, "ech"

    return-object p0

    .line 457
    :pswitch_20
    const-string p0, "ipv4hint"

    return-object p0

    .line 456
    :pswitch_23
    const-string/jumbo p0, "port"

    return-object p0

    .line 455
    :pswitch_27
    const-string p0, "no-default-alpn"

    return-object p0

    .line 454
    :pswitch_2a
    const-string p0, "alpn"

    return-object p0

    .line 453
    :pswitch_2d
    const-string p0, "mandatory"

    return-object p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public blacklist getAddresses()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;

    .line 177
    if-eqz v1, :cond_17

    .line 178
    invoke-virtual {v1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_17
    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;

    .line 181
    if-eqz v1, :cond_29

    .line 182
    invoke-virtual {v1}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamIpHint;->getValue()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    :cond_29
    return-object v0
.end method

.method public blacklist getAlpns()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;

    .line 156
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamAlpn;->getValue()Ljava/util/List;

    move-result-object v0

    goto :goto_12

    :cond_10
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 157
    :goto_12
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDohPath()Ljava/lang/String;
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;

    .line 194
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamDohPath;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_10
    const-string v0, ""

    :goto_12
    return-object v0
.end method

.method public blacklist getPort()I
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;

    .line 166
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/net/module/util/DnsSvcbRecord$SvcParamPort;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    return v0
.end method

.method public blacklist getTargetName()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 199
    iget v0, p0, Lcom/android/net/module/util/DnsSvcbRecord;->rType:I

    if-nez v0, :cond_1a

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/net/module/util/DnsSvcbRecord;->dName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN SVCB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 203
    :cond_1a
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 204
    const/4 v2, 0x0

    :goto_22
    iget-object v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3c

    .line 205
    iget-object v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mAllSvcParams:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/net/module/util/DnsSvcbRecord$SvcParam;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 207
    :cond_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->dName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->ttl:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IN SVCB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mSvcPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/net/module/util/DnsSvcbRecord;->mTargetName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 208
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    return-object v0
.end method
