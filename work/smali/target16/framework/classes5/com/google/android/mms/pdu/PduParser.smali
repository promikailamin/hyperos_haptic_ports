.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist END_STRING_FLAG:I = 0x0

.field private static final blacklist LENGTH_QUOTE:I = 0x1f

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final blacklist LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final blacklist QUOTE:I = 0x7f

.field private static final blacklist QUOTED_STRING_FLAG:I = 0x22

.field private static final blacklist SHORT_INTEGER_MAX:I = 0x7f

.field private static final blacklist SHORT_LENGTH_MAX:I = 0x1e

.field private static final blacklist TEXT_MAX:I = 0x7f

.field private static final blacklist TEXT_MIN:I = 0x20

.field private static final blacklist THE_FIRST_PART:I = 0x0

.field private static final blacklist THE_LAST_PART:I = 0x1

.field private static final blacklist TYPE_QUOTED_STRING:I = 0x1

.field private static final blacklist TYPE_TEXT_STRING:I = 0x0

.field private static final blacklist TYPE_TOKEN_STRING:I = 0x2

.field private static blacklist mStartParam:[B

.field private static blacklist mTypeParam:[B


# instance fields
.field private blacklist mBody:Lcom/google/android/mms/pdu/PduBody;

.field private blacklist mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final blacklist mParseContentDisposition:Z

.field private blacklist mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    nop

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 80
    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void
.end method

.method public constructor greylist <init>([BZ)V
    .registers 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 65
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 70
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 102
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 103
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 104
    return-void
.end method

.method protected static blacklist checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .registers 13

    .line 1818
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 1819
    return v0

    .line 1823
    :cond_4
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1826
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    .line 1827
    if-nez v2, :cond_13

    .line 1829
    return v0

    .line 1833
    :cond_13
    const/16 v2, 0x9b

    const/16 v3, 0x95

    const/16 v4, 0x84

    const/16 v5, 0x97

    const/16 v6, 0x8b

    const/16 v7, 0x89

    const/16 v8, 0x85

    const-wide/16 v9, -0x1

    const/16 v11, 0x98

    packed-switch v1, :pswitch_data_104

    .line 2022
    return v0

    .line 1964
    :pswitch_29
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 1965
    cmp-long v1, v9, v3

    if-nez v1, :cond_32

    .line 1966
    return v0

    .line 1970
    :cond_32
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 1971
    if-nez v1, :cond_39

    .line 1972
    return v0

    .line 1976
    :cond_39
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1977
    if-nez v1, :cond_40

    .line 1978
    return v0

    .line 1982
    :cond_40
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1983
    if-nez v1, :cond_47

    .line 1984
    return v0

    .line 1988
    :cond_47
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p0

    .line 1989
    if-nez p0, :cond_101

    .line 1990
    return v0

    .line 1996
    :pswitch_4e
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 1997
    if-nez v1, :cond_55

    .line 1998
    return v0

    .line 2002
    :cond_55
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 2003
    if-nez v1, :cond_5c

    .line 2004
    return v0

    .line 2008
    :cond_5c
    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 2009
    if-nez v1, :cond_63

    .line 2010
    return v0

    .line 2014
    :cond_63
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p0

    .line 2015
    if-nez p0, :cond_101

    .line 2016
    return v0

    .line 1930
    :pswitch_6a
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    .line 1931
    cmp-long v1, v9, v1

    if-nez v1, :cond_73

    .line 1932
    return v0

    .line 1936
    :cond_73
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1937
    if-nez v1, :cond_7a

    .line 1938
    return v0

    .line 1942
    :cond_7a
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1943
    if-nez v1, :cond_81

    .line 1944
    return v0

    .line 1948
    :cond_81
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object p0

    .line 1949
    if-nez p0, :cond_101

    .line 1950
    return v0

    .line 1956
    :pswitch_88
    invoke-virtual {p0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1957
    if-nez p0, :cond_101

    .line 1958
    return v0

    .line 1916
    :pswitch_8f
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1917
    if-nez v1, :cond_96

    .line 1918
    return v0

    .line 1922
    :cond_96
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    .line 1923
    cmp-long p0, v9, v1

    if-nez p0, :cond_101

    .line 1924
    return v0

    .line 1902
    :pswitch_9f
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1903
    if-nez v1, :cond_a6

    .line 1904
    return v0

    .line 1908
    :cond_a6
    invoke-virtual {p0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1909
    if-nez p0, :cond_101

    .line 1910
    return v0

    .line 1870
    :pswitch_ad
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1871
    if-nez v1, :cond_b6

    .line 1872
    return v0

    .line 1876
    :cond_b6
    const/16 v1, 0x88

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    .line 1877
    cmp-long v1, v9, v1

    if-nez v1, :cond_c1

    .line 1878
    return v0

    .line 1882
    :cond_c1
    const/16 v1, 0x8a

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1883
    if-nez v1, :cond_ca

    .line 1884
    return v0

    .line 1888
    :cond_ca
    const/16 v1, 0x8e

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    .line 1889
    cmp-long v1, v9, v1

    if-nez v1, :cond_d5

    .line 1890
    return v0

    .line 1894
    :cond_d5
    invoke-virtual {p0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1895
    if-nez p0, :cond_101

    .line 1896
    return v0

    .line 1856
    :pswitch_dc
    const/16 v1, 0x92

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1857
    if-nez v1, :cond_e5

    .line 1858
    return v0

    .line 1862
    :cond_e5
    invoke-virtual {p0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1863
    if-nez p0, :cond_101

    .line 1864
    return v0

    .line 1836
    :pswitch_ec
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    .line 1837
    if-nez v1, :cond_f3

    .line 1838
    return v0

    .line 1842
    :cond_f3
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 1843
    if-nez v1, :cond_fa

    .line 1844
    return v0

    .line 1848
    :cond_fa
    invoke-virtual {p0, v11}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object p0

    .line 1849
    if-nez p0, :cond_101

    .line 1850
    return v0

    .line 2025
    :cond_101
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_104
    .packed-switch 0x80
        :pswitch_ec
        :pswitch_dc
        :pswitch_ad
        :pswitch_9f
        :pswitch_8f
        :pswitch_88
        :pswitch_6a
        :pswitch_4e
        :pswitch_29
    .end packed-switch
.end method

.method private static greylist checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .registers 4

    .line 1779
    nop

    .line 1780
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v1, 0x1

    if-nez v0, :cond_b

    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v0, :cond_b

    .line 1782
    return v1

    .line 1786
    :cond_b
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    .line 1787
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object p0

    .line 1788
    if-eqz p0, :cond_1f

    .line 1789
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-ne v1, p0, :cond_1f

    .line 1790
    return v2

    .line 1795
    :cond_1f
    return v1

    .line 1799
    :cond_20
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v0, :cond_33

    .line 1800
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object p0

    .line 1801
    if-eqz p0, :cond_33

    .line 1802
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-ne v1, p0, :cond_33

    .line 1803
    return v2

    .line 1808
    :cond_33
    return v1
.end method

.method protected static blacklist extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .registers 1

    .line 1234
    nop

    .line 1235
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    .line 1236
    nop

    .line 1237
    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method protected static blacklist getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5

    .line 1200
    nop

    .line 1201
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1202
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1203
    nop

    .line 1204
    :goto_b
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2b

    if-eqz v1, :cond_2b

    .line 1206
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 1207
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1208
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_26

    .line 1211
    :cond_1d
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1212
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1216
    :cond_26
    :goto_26
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1217
    goto :goto_b

    .line 1220
    :cond_2b
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-lez p0, :cond_36

    .line 1221
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 1224
    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static blacklist isText(I)Z
    .registers 3

    .line 1184
    const/16 v0, 0x20

    const/4 v1, 0x1

    if-lt p0, v0, :cond_9

    const/16 v0, 0x7e

    if-le p0, v0, :cond_11

    :cond_9
    const/16 v0, 0x80

    if-lt p0, v0, :cond_12

    const/16 v0, 0xff

    if-gt p0, v0, :cond_12

    .line 1185
    :cond_11
    return v1

    .line 1188
    :cond_12
    packed-switch p0, :pswitch_data_18

    .line 1195
    :pswitch_15
    const/4 p0, 0x0

    return p0

    .line 1192
    :pswitch_17
    return v1

    :pswitch_data_18
    .packed-switch 0x9
        :pswitch_17
        :pswitch_17
        :pswitch_15
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method

.method protected static blacklist isTokenCharacter(I)Z
    .registers 3

    .line 1140
    const/16 v0, 0x21

    const/4 v1, 0x0

    if-lt p0, v0, :cond_10

    const/16 v0, 0x7e

    if-le p0, v0, :cond_a

    goto :goto_10

    .line 1144
    :cond_a
    sparse-switch p0, :sswitch_data_12

    .line 1165
    const/4 p0, 0x1

    return p0

    .line 1162
    :sswitch_f
    return v1

    .line 1141
    :cond_10
    :goto_10
    return v1

    nop

    :sswitch_data_12
    .sparse-switch
        0x22 -> :sswitch_f
        0x28 -> :sswitch_f
        0x29 -> :sswitch_f
        0x2c -> :sswitch_f
        0x2f -> :sswitch_f
        0x3a -> :sswitch_f
        0x3b -> :sswitch_f
        0x3c -> :sswitch_f
        0x3d -> :sswitch_f
        0x3e -> :sswitch_f
        0x3f -> :sswitch_f
        0x40 -> :sswitch_f
        0x5b -> :sswitch_f
        0x5c -> :sswitch_f
        0x5d -> :sswitch_f
        0x7b -> :sswitch_f
        0x7d -> :sswitch_f
    .end sparse-switch
.end method

.method private static greylist log(Ljava/lang/String;)V
    .registers 1

    .line 957
    return-void
.end method

.method protected static greylist parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1540
    nop

    .line 1542
    nop

    .line 1543
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1544
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1545
    nop

    .line 1546
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1548
    and-int/lit16 v1, v1, 0xff

    .line 1550
    const/16 v2, 0x20

    const/16 v3, 0x7f

    const/4 v4, 0x0

    if-ge v1, v2, :cond_ad

    .line 1551
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1552
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1553
    const-string v6, "PduParser"

    if-le v1, v5, :cond_4d

    .line 1554
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "parseContentType: Invalid length "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " when available bytes are "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 1558
    :cond_4d
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1559
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1560
    nop

    .line 1561
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1562
    and-int/lit16 v0, v0, 0xff

    .line 1564
    if-lt v0, v2, :cond_63

    if-gt v0, v3, :cond_63

    .line 1565
    invoke-static {p0, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_7f

    .line 1566
    :cond_63
    if-le v0, v3, :cond_9f

    .line 1567
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1569
    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_77

    .line 1570
    sget-object v2, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_7e

    .line 1572
    :cond_77
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1573
    invoke-static {p0, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1575
    :goto_7e
    nop

    .line 1580
    :goto_7f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1581
    sub-int/2addr v5, v2

    sub-int/2addr v1, v5

    .line 1582
    if-lez v1, :cond_8e

    .line 1583
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1586
    :cond_8e
    if-gez v1, :cond_9e

    .line 1587
    const-string p0, "Corrupt MMS message"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 1590
    :cond_9e
    goto :goto_c0

    .line 1576
    :cond_9f
    const-string p0, "Corrupt content-type"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    sget-object p0, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object p0, p0, v4

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 1590
    :cond_ad
    if-gt v1, v3, :cond_b4

    .line 1591
    invoke-static {p0, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_c0

    .line 1593
    :cond_b4
    sget-object p1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .line 1594
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1597
    :goto_c0
    return-object v0
.end method

.method protected static blacklist parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1368
    nop

    .line 1369
    nop

    .line 1371
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1372
    nop

    .line 1373
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1374
    :goto_b
    const-string v2, "Corrupt Content-Type"

    const-string v3, "PduParser"

    if-lez v1, :cond_10f

    .line 1375
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1376
    nop

    .line 1377
    add-int/lit8 v1, v1, -0x1

    .line 1379
    const/16 v5, 0x7f

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v4, :sswitch_data_116

    .line 1510
    invoke-static {p0, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v5, v4, :cond_10c

    .line 1511
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10d

    .line 1435
    :sswitch_2b
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1436
    if-eqz v1, :cond_3c

    if-eqz p1, :cond_3c

    .line 1437
    const/16 v2, 0x99

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    :cond_3c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1441
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v1, v0, v1

    sub-int/2addr v2, v1

    .line 1442
    move v1, v2

    goto/16 :goto_10d

    .line 1498
    :sswitch_4a
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1499
    if-eqz v1, :cond_5b

    if-eqz p1, :cond_5b

    .line 1500
    const/16 v2, 0x97

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    :cond_5b
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1504
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v1, v0, v1

    sub-int/2addr v2, v1

    .line 1505
    move v1, v2

    goto/16 :goto_10d

    .line 1395
    :sswitch_69
    invoke-virtual {p0, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1396
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1397
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1398
    const/16 v2, 0x83

    if-le v1, v5, :cond_90

    .line 1400
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1402
    sget-object v3, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_8f

    .line 1403
    sget-object v3, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1404
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    :cond_8f
    goto :goto_9f

    .line 1410
    :cond_90
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1411
    if-eqz v1, :cond_9f

    if-eqz p1, :cond_9f

    .line 1412
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    :cond_9f
    :goto_9f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1417
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v1, v0, v1

    sub-int/2addr v2, v1

    .line 1418
    move v1, v2

    goto :goto_10d

    .line 1459
    :sswitch_ac
    invoke-virtual {p0, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1460
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1461
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1463
    const/16 v2, 0x20

    const/16 v4, 0x81

    if-le v1, v2, :cond_be

    if-lt v1, v5, :cond_c0

    :cond_be
    if-nez v1, :cond_ed

    .line 1466
    :cond_c0
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1468
    :try_start_c4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v2

    .line 1470
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c4 .. :try_end_d8} :catch_d9

    .line 1475
    goto :goto_ec

    .line 1471
    :catch_d9
    move-exception v2

    .line 1473
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1474
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    :goto_ec
    goto :goto_ff

    .line 1478
    :cond_ed
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1479
    if-eqz p1, :cond_ff

    .line 1480
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    :cond_ff
    :goto_ff
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1485
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v1, v0, v1

    sub-int/2addr v2, v1

    .line 1486
    move v1, v2

    goto :goto_10d

    .line 1513
    :cond_10c
    move v1, v7

    .line 1517
    :goto_10d
    goto/16 :goto_b

    .line 1519
    :cond_10f
    if-eqz v1, :cond_114

    .line 1520
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :cond_114
    return-void

    nop

    :sswitch_data_116
    .sparse-switch
        0x81 -> :sswitch_ac
        0x83 -> :sswitch_69
        0x85 -> :sswitch_4a
        0x89 -> :sswitch_69
        0x8a -> :sswitch_2b
        0x97 -> :sswitch_4a
        0x99 -> :sswitch_2b
    .end sparse-switch
.end method

.method protected static blacklist parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .registers 4

    .line 1035
    nop

    .line 1036
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1037
    nop

    .line 1038
    nop

    .line 1039
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1040
    nop

    .line 1041
    and-int/lit16 v0, v0, 0xff

    .line 1042
    if-nez v0, :cond_18

    .line 1043
    new-instance p0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1046
    :cond_18
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1047
    const/16 v1, 0x20

    const/4 v2, 0x0

    if-ge v0, v1, :cond_28

    .line 1048
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1050
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_29

    .line 1047
    :cond_28
    move v0, v2

    .line 1053
    :goto_29
    invoke-static {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    .line 1056
    if-eqz v0, :cond_35

    .line 1057
    :try_start_2f
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v0, p0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    goto :goto_3a

    .line 1059
    :cond_35
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, p0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3a} :catch_3c

    .line 1063
    :goto_3a
    nop

    .line 1065
    return-object v1

    .line 1061
    :catch_3c
    move-exception p0

    .line 1062
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static blacklist parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .registers 3

    .line 1310
    nop

    .line 1311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1312
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1313
    nop

    .line 1314
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1315
    const/16 v1, 0x7f

    if-le v0, v1, :cond_17

    .line 1316
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0

    .line 1318
    :cond_17
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static blacklist parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .registers 8

    .line 1278
    nop

    .line 1279
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1280
    nop

    .line 1281
    and-int/lit16 v0, v0, 0xff

    .line 1283
    const/16 v1, 0x8

    if-gt v0, v1, :cond_20

    .line 1287
    nop

    .line 1289
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_10
    if-ge v4, v0, :cond_1f

    .line 1290
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1291
    nop

    .line 1292
    shl-long/2addr v2, v1

    .line 1293
    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 1289
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 1296
    :cond_1f
    return-wide v2

    .line 1284
    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static greylist parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .registers 1

    .line 1255
    nop

    .line 1256
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result p0

    .line 1257
    nop

    .line 1258
    and-int/lit8 p0, p0, 0x7f

    return p0
.end method

.method protected static greylist parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .registers 5

    .line 972
    nop

    .line 973
    nop

    .line 974
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 975
    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    .line 976
    return v0

    .line 975
    :cond_a
    const/4 v2, 0x0

    .line 979
    :cond_b
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_1b

    .line 980
    shl-int/lit8 v2, v2, 0x7

    .line 981
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v2, v0

    .line 982
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 983
    if-ne v0, v1, :cond_b

    .line 984
    return v0

    .line 988
    :cond_1b
    shl-int/lit8 p0, v2, 0x7

    .line 989
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr p0, v0

    .line 991
    return p0
.end method

.method protected static greylist parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .registers 3

    .line 1010
    nop

    .line 1011
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1012
    nop

    .line 1013
    and-int/lit16 v0, v0, 0xff

    .line 1015
    const/16 v1, 0x1e

    if-gt v0, v1, :cond_d

    .line 1016
    return v0

    .line 1017
    :cond_d
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_16

    .line 1018
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result p0

    return p0

    .line 1021
    :cond_16
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Value length > LENGTH_QUOTE!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected static greylist parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .registers 5

    .line 1078
    nop

    .line 1096
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1099
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1100
    nop

    .line 1101
    if-ne v0, p1, :cond_14

    const/16 v2, 0x22

    if-ne v2, v1, :cond_14

    .line 1104
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_21

    .line 1105
    :cond_14
    if-nez p1, :cond_1e

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_1e

    .line 1108
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_21

    .line 1111
    :cond_1e
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1119
    :goto_21
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method protected static blacklist skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .registers 4

    .line 1330
    nop

    .line 1331
    new-array v0, p1, [B

    .line 1332
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result p0

    .line 1333
    if-ge p0, p1, :cond_c

    .line 1334
    const/4 p0, -0x1

    return p0

    .line 1336
    :cond_c
    return p0
.end method


# virtual methods
.method public greylist parse()Lcom/google/android/mms/pdu/GenericPdu;
    .registers 6

    .line 114
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 115
    return-object v1

    .line 119
    :cond_6
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 120
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v0, :cond_13

    .line 122
    return-object v1

    .line 126
    :cond_13
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v2, 0x8c

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 129
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 130
    const-string v0, "check mandatory headers failed!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 131
    return-object v1

    .line 134
    :cond_29
    const/16 v2, 0x80

    if-eq v2, v0, :cond_31

    const/16 v2, 0x84

    if-ne v2, v0, :cond_3e

    .line 137
    :cond_31
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 138
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v2, :cond_3e

    .line 140
    return-object v1

    .line 144
    :cond_3e
    packed-switch v0, :pswitch_data_d2

    .line 228
    const-string v0, "Parser doesn\'t support this message type in this version!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 229
    return-object v1

    .line 217
    :pswitch_47
    new-instance v0, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 219
    return-object v0

    .line 224
    :pswitch_4f
    new-instance v0, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 226
    return-object v0

    .line 203
    :pswitch_57
    new-instance v0, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 205
    return-object v0

    .line 210
    :pswitch_5f
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 212
    return-object v0

    .line 175
    :pswitch_67
    new-instance v0, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0, v2, v3}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 178
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v2

    .line 179
    if-nez v2, :cond_77

    .line 180
    return-object v1

    .line 182
    :cond_77
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 183
    const-string v2, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 184
    const-string v2, "application/vnd.wap.multipart.related"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ae

    .line 185
    const-string v2, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_95

    goto :goto_ae

    .line 190
    :cond_95
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 193
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 194
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 195
    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 196
    return-object v0

    .line 198
    :cond_ad
    return-object v1

    .line 189
    :cond_ae
    :goto_ae
    return-object v0

    .line 168
    :pswitch_af
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 170
    return-object v0

    .line 161
    :pswitch_b7
    new-instance v0, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 163
    return-object v0

    .line 155
    :pswitch_bf
    new-instance v0, Lcom/google/android/mms/pdu/SendConf;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 156
    return-object v0

    .line 149
    :pswitch_c7
    new-instance v0, Lcom/google/android/mms/pdu/SendReq;

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 150
    return-object v0

    nop

    :pswitch_data_d2
    .packed-switch 0x80
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_67
        :pswitch_5f
        :pswitch_57
        :pswitch_4f
        :pswitch_47
    .end packed-switch
.end method

.method protected blacklist parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .registers 20

    .line 240
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    .line 241
    return-object v2

    .line 243
    :cond_6
    nop

    .line 244
    new-instance v3, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    const/4 v4, 0x1

    move v5, v4

    .line 246
    :goto_e
    if-eqz v5, :cond_42c

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-lez v0, :cond_42c

    .line 247
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 248
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 250
    const/16 v0, 0x20

    const/4 v7, 0x0

    if-lt v6, v0, :cond_2d

    const/16 v0, 0x7f

    if-gt v6, v0, :cond_2d

    .line 251
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 252
    invoke-static {v1, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    .line 257
    goto :goto_e

    .line 259
    :cond_2d
    const/16 v0, 0x81

    const-string v8, "/"

    const-string v10, " is not Integer-Value"

    const-string v11, "is not Octet header field!"

    const-string v12, " into the header filed: "

    const-string v13, "Set invalid Octet value: "

    const/16 v14, 0x80

    const-string v15, "is not Text-String header field!"

    const-string v7, "is not Encoded-String-Value header field!"

    const-string v9, "is not Long-Integer header field!"

    const-string v17, "null pointer error!"

    packed-switch v6, :pswitch_data_42e

    .line 824
    :pswitch_46
    const-string v0, "Unknown header"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_42a

    .line 779
    :pswitch_4d
    invoke-static {v1, v2}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    .line 783
    goto/16 :goto_42a

    .line 370
    :pswitch_52
    :try_start_52
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v7

    .line 375
    invoke-virtual {v3, v7, v8, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_52 .. :try_end_59} :catch_5b

    .line 379
    goto/16 :goto_42a

    .line 376
    :catch_5b
    move-exception v0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 378
    return-object v2

    .line 757
    :pswitch_71
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 760
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 764
    :try_start_77
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_7a
    .catch Ljava/lang/RuntimeException; {:try_start_77 .. :try_end_7a} :catch_7c

    .line 768
    goto/16 :goto_42a

    .line 765
    :catch_7c
    move-exception v0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 767
    return-object v2

    .line 735
    :pswitch_92
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 738
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 741
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 745
    goto/16 :goto_42a

    .line 697
    :pswitch_9d
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 701
    :try_start_a0
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_a3
    .catch Ljava/lang/RuntimeException; {:try_start_a0 .. :try_end_a3} :catch_c5

    .line 705
    nop

    .line 709
    :try_start_a4
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v7

    .line 714
    const/16 v0, 0xa1

    invoke-virtual {v3, v7, v8, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_ad
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_ad} :catch_af

    .line 719
    goto/16 :goto_42a

    .line 716
    :catch_af
    move-exception v0

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 718
    return-object v2

    .line 702
    :catch_c5
    move-exception v0

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 704
    return-object v2

    .line 662
    :pswitch_db
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 666
    :try_start_de
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_e1
    .catch Ljava/lang/RuntimeException; {:try_start_de .. :try_end_e1} :catch_10b

    .line 670
    nop

    .line 673
    nop

    .line 674
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_42a

    .line 681
    const/16 v8, 0xa0

    :try_start_eb
    invoke-virtual {v3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_ee
    .catch Ljava/lang/NullPointerException; {:try_start_eb .. :try_end_ee} :catch_106
    .catch Ljava/lang/RuntimeException; {:try_start_eb .. :try_end_ee} :catch_f0

    .line 688
    :goto_ee
    goto/16 :goto_42a

    .line 685
    :catch_f0
    move-exception v0

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 687
    return-object v2

    .line 683
    :catch_106
    move-exception v0

    .line 684
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_ee

    .line 667
    :catch_10b
    move-exception v0

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 669
    return-object v2

    .line 432
    :pswitch_121
    nop

    .line 433
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_42a

    .line 440
    :try_start_128
    invoke-virtual {v3, v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_12b
    .catch Ljava/lang/NullPointerException; {:try_start_128 .. :try_end_12b} :catch_143
    .catch Ljava/lang/RuntimeException; {:try_start_128 .. :try_end_12b} :catch_12d

    .line 446
    :goto_12b
    goto/16 :goto_42a

    .line 443
    :catch_12d
    move-exception v0

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 445
    return-object v2

    .line 441
    :catch_143
    move-exception v0

    .line 442
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_12b

    .line 639
    :pswitch_148
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 646
    const/16 v0, 0x8d

    :try_start_14e
    invoke-virtual {v3, v7, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_151
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_14e .. :try_end_151} :catch_169
    .catch Ljava/lang/RuntimeException; {:try_start_14e .. :try_end_151} :catch_153

    .line 654
    goto/16 :goto_42a

    .line 651
    :catch_153
    move-exception v0

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 653
    return-object v2

    .line 647
    :catch_169
    move-exception v0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 650
    return-object v2

    .line 262
    :pswitch_187
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 266
    packed-switch v7, :pswitch_data_4b0

    .line 286
    :try_start_18e
    invoke-virtual {v3, v7, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_191
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_18e .. :try_end_191} :catch_1ab
    .catch Ljava/lang/RuntimeException; {:try_start_18e .. :try_end_191} :catch_195

    goto :goto_193

    .line 283
    :pswitch_192
    return-object v2

    .line 294
    :goto_193
    goto/16 :goto_42a

    .line 291
    :catch_195
    move-exception v0

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 293
    return-object v2

    .line 287
    :catch_1ab
    move-exception v0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 290
    return-object v2

    .line 587
    :pswitch_1c9
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 588
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 594
    const/16 v8, 0x8a

    if-lt v7, v14, :cond_227

    .line 597
    if-ne v14, v7, :cond_1e5

    .line 598
    :try_start_1d6
    const-string/jumbo v0, "personal"

    .line 599
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 598
    invoke-virtual {v3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_225

    .line 616
    :catch_1e1
    move-exception v0

    goto :goto_20d

    .line 614
    :catch_1e3
    move-exception v0

    goto :goto_222

    .line 601
    :cond_1e5
    if-ne v0, v7, :cond_1f1

    .line 602
    const-string v0, "advertisement"

    .line 603
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 602
    invoke-virtual {v3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_225

    .line 605
    :cond_1f1
    const/16 v0, 0x82

    if-ne v0, v7, :cond_1ff

    .line 606
    const-string v0, "informational"

    .line 607
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 606
    invoke-virtual {v3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_225

    .line 609
    :cond_1ff
    const/16 v9, 0x83

    if-ne v9, v7, :cond_225

    .line 610
    const-string v0, "auto"

    .line 611
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 610
    invoke-virtual {v3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_20c
    .catch Ljava/lang/NullPointerException; {:try_start_1d6 .. :try_end_20c} :catch_1e3
    .catch Ljava/lang/RuntimeException; {:try_start_1d6 .. :try_end_20c} :catch_1e1

    goto :goto_225

    .line 617
    :goto_20d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 618
    return-object v2

    .line 615
    :goto_222
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 619
    :cond_225
    :goto_225
    goto/16 :goto_42a

    .line 622
    :cond_227
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 623
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 624
    if-eqz v0, :cond_250

    .line 626
    :try_start_231
    invoke-virtual {v3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_234
    .catch Ljava/lang/NullPointerException; {:try_start_231 .. :try_end_234} :catch_24b
    .catch Ljava/lang/RuntimeException; {:try_start_231 .. :try_end_234} :catch_235

    .line 632
    :goto_234
    goto :goto_250

    .line 629
    :catch_235
    move-exception v0

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 631
    return-object v2

    .line 627
    :catch_24b
    move-exception v0

    .line 628
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_234

    .line 635
    :cond_250
    :goto_250
    goto/16 :goto_42a

    .line 534
    :pswitch_252
    nop

    .line 535
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 538
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 541
    if-ne v14, v0, :cond_286

    .line 543
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_292

    .line 545
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v9

    .line 546
    if-eqz v9, :cond_285

    .line 547
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 548
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 549
    if-lez v8, :cond_278

    .line 550
    const/4 v9, 0x0

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 553
    :cond_278
    :try_start_278
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_27f
    .catch Ljava/lang/NullPointerException; {:try_start_278 .. :try_end_27f} :catch_280

    .line 557
    goto :goto_285

    .line 554
    :catch_280
    move-exception v0

    .line 555
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 556
    return-object v2

    .line 559
    :cond_285
    :goto_285
    goto :goto_292

    .line 562
    :cond_286
    :try_start_286
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v8, "insert-address-token"

    .line 563
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_291
    .catch Ljava/lang/NullPointerException; {:try_start_286 .. :try_end_291} :catch_2b4

    .line 567
    nop

    .line 575
    :cond_292
    :goto_292
    const/16 v8, 0x89

    :try_start_294
    invoke-virtual {v3, v0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_297
    .catch Ljava/lang/NullPointerException; {:try_start_294 .. :try_end_297} :catch_2af
    .catch Ljava/lang/RuntimeException; {:try_start_294 .. :try_end_297} :catch_299

    .line 581
    :goto_297
    goto/16 :goto_42a

    .line 578
    :catch_299
    move-exception v0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 580
    return-object v2

    .line 576
    :catch_2af
    move-exception v0

    .line 577
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_297

    .line 564
    :catch_2b4
    move-exception v0

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 566
    return-object v2

    .line 497
    :pswitch_2ca
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 500
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 505
    :try_start_2d1
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v10
    :try_end_2d5
    .catch Ljava/lang/RuntimeException; {:try_start_2d1 .. :try_end_2d5} :catch_2fb

    .line 509
    nop

    .line 510
    if-ne v0, v7, :cond_2e0

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v12, 0x3e8

    div-long/2addr v7, v12

    add-long/2addr v10, v7

    .line 521
    :cond_2e0
    :try_start_2e0
    invoke-virtual {v3, v10, v11, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2e3
    .catch Ljava/lang/RuntimeException; {:try_start_2e0 .. :try_end_2e3} :catch_2e5

    .line 525
    goto/16 :goto_42a

    .line 522
    :catch_2e5
    move-exception v0

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 524
    return-object v2

    .line 506
    :catch_2fb
    move-exception v0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 508
    return-object v2

    .line 326
    :pswitch_311
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 333
    :try_start_315
    invoke-virtual {v3, v7, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_318
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_315 .. :try_end_318} :catch_330
    .catch Ljava/lang/RuntimeException; {:try_start_315 .. :try_end_318} :catch_31a

    .line 341
    goto/16 :goto_42a

    .line 338
    :catch_31a
    move-exception v0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 340
    return-object v2

    .line 334
    :catch_330
    move-exception v0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 337
    return-object v2

    .line 351
    :pswitch_34e
    :try_start_34e
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v7

    .line 356
    invoke-virtual {v3, v7, v8, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_355
    .catch Ljava/lang/RuntimeException; {:try_start_34e .. :try_end_355} :catch_357

    .line 360
    goto/16 :goto_42a

    .line 357
    :catch_357
    move-exception v0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 359
    return-object v2

    .line 787
    :pswitch_36d
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 789
    nop

    .line 790
    invoke-static {v1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v0

    .line 792
    if-eqz v0, :cond_39a

    .line 798
    const/16 v7, 0x84

    :try_start_37b
    invoke-virtual {v3, v0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_37e
    .catch Ljava/lang/NullPointerException; {:try_start_37b .. :try_end_37e} :catch_395
    .catch Ljava/lang/RuntimeException; {:try_start_37b .. :try_end_37e} :catch_37f

    .line 804
    :goto_37e
    goto :goto_39a

    .line 801
    :catch_37f
    move-exception v0

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 803
    return-object v2

    .line 799
    :catch_395
    move-exception v0

    .line 800
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_37e

    .line 808
    :cond_39a
    :goto_39a
    const/16 v0, 0x99

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 811
    const/16 v16, 0x83

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 813
    nop

    .line 814
    const/4 v5, 0x0

    goto/16 :goto_42a

    .line 404
    :pswitch_3ba
    const/4 v7, 0x0

    invoke-static {v1, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 405
    if-eqz v0, :cond_42a

    .line 411
    :try_start_3c1
    invoke-virtual {v3, v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_3c4
    .catch Ljava/lang/NullPointerException; {:try_start_3c1 .. :try_end_3c4} :catch_3db
    .catch Ljava/lang/RuntimeException; {:try_start_3c1 .. :try_end_3c4} :catch_3c5

    .line 417
    :goto_3c4
    goto :goto_42a

    .line 414
    :catch_3c5
    move-exception v0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 416
    return-object v2

    .line 412
    :catch_3db
    move-exception v0

    .line 413
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3c4

    .line 456
    :pswitch_3e0
    nop

    .line 457
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_42a

    .line 459
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v9

    .line 460
    if-eqz v9, :cond_40a

    .line 461
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 466
    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 467
    if-lez v8, :cond_3fd

    .line 468
    const/4 v9, 0x0

    invoke-virtual {v10, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 471
    :cond_3fd
    :try_start_3fd
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_404
    .catch Ljava/lang/NullPointerException; {:try_start_3fd .. :try_end_404} :catch_405

    .line 475
    goto :goto_40a

    .line 472
    :catch_405
    move-exception v0

    .line 473
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 474
    return-object v2

    .line 479
    :cond_40a
    :goto_40a
    :try_start_40a
    invoke-virtual {v3, v0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_40d
    .catch Ljava/lang/NullPointerException; {:try_start_40a .. :try_end_40d} :catch_424
    .catch Ljava/lang/RuntimeException; {:try_start_40a .. :try_end_40d} :catch_40e

    .line 485
    :goto_40d
    goto :goto_429

    .line 482
    :catch_40e
    move-exception v0

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 484
    return-object v2

    .line 480
    :catch_424
    move-exception v0

    .line 481
    invoke-static/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_40d

    .line 486
    :goto_429
    nop

    .line 827
    :cond_42a
    :goto_42a
    goto/16 :goto_e

    .line 829
    :cond_42c
    return-object v3

    nop

    :pswitch_data_42e
    .packed-switch 0x81
        :pswitch_3e0
        :pswitch_3e0
        :pswitch_3ba
        :pswitch_36d
        :pswitch_34e
        :pswitch_311
        :pswitch_2ca
        :pswitch_2ca
        :pswitch_252
        :pswitch_1c9
        :pswitch_3ba
        :pswitch_187
        :pswitch_148
        :pswitch_34e
        :pswitch_311
        :pswitch_311
        :pswitch_311
        :pswitch_311
        :pswitch_121
        :pswitch_311
        :pswitch_311
        :pswitch_121
        :pswitch_3e0
        :pswitch_3ba
        :pswitch_311
        :pswitch_121
        :pswitch_311
        :pswitch_311
        :pswitch_2ca
        :pswitch_3ba
        :pswitch_34e
        :pswitch_db
        :pswitch_9d
        :pswitch_311
        :pswitch_311
        :pswitch_92
        :pswitch_311
        :pswitch_121
        :pswitch_311
        :pswitch_46
        :pswitch_311
        :pswitch_71
        :pswitch_311
        :pswitch_71
        :pswitch_52
        :pswitch_46
        :pswitch_52
        :pswitch_46
        :pswitch_311
        :pswitch_4d
        :pswitch_52
        :pswitch_311
        :pswitch_121
        :pswitch_121
        :pswitch_3ba
        :pswitch_3ba
        :pswitch_3ba
        :pswitch_311
        :pswitch_311
        :pswitch_311
        :pswitch_3ba
        :pswitch_3ba
        :pswitch_311
    .end packed-switch

    :pswitch_data_4b0
    .packed-switch 0x89
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
        :pswitch_192
    .end packed-switch
.end method

.method protected greylist parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .registers 14

    .line 1611
    nop

    .line 1612
    nop

    .line 1613
    nop

    .line 1631
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1632
    nop

    .line 1633
    move v1, p3

    .line 1634
    :goto_9
    const-string v2, "Corrupt Part headers"

    const-string v3, "PduParser"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v1, :cond_ef

    .line 1635
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 1636
    nop

    .line 1637
    add-int/lit8 v1, v1, -0x1

    .line 1639
    const/16 v7, 0x7f

    const/4 v8, -0x1

    if-le v6, v7, :cond_bb

    .line 1641
    sparse-switch v6, :sswitch_data_f6

    .line 1729
    invoke-static {p1, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v1

    if-ne v8, v1, :cond_b8

    .line 1730
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    return v5

    .line 1660
    :sswitch_2a
    invoke-static {p1, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1661
    if-eqz v1, :cond_33

    .line 1662
    invoke-virtual {p2, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1665
    :cond_33
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1666
    sub-int v1, v0, v1

    sub-int v1, p3, v1

    .line 1667
    goto/16 :goto_ed

    .line 1683
    :sswitch_3d
    iget-boolean v2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    if-eqz v2, :cond_ed

    .line 1684
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1685
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1686
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1687
    nop

    .line 1688
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1690
    const/16 v4, 0x80

    if-ne v3, v4, :cond_5b

    .line 1691
    sget-object v3, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_79

    .line 1692
    :cond_5b
    const/16 v4, 0x81

    if-ne v3, v4, :cond_65

    .line 1693
    sget-object v3, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_79

    .line 1694
    :cond_65
    const/16 v4, 0x82

    if-ne v3, v4, :cond_6f

    .line 1695
    sget-object v3, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_79

    .line 1697
    :cond_6f
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1699
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1704
    :goto_79
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1705
    sub-int v3, v2, v3

    if-ge v3, v1, :cond_9d

    .line 1706
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1707
    const/16 v4, 0x98

    if-ne v3, v4, :cond_90

    .line 1708
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1713
    :cond_90
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1714
    sub-int/2addr v2, v3

    if-ge v2, v1, :cond_9d

    .line 1715
    sub-int/2addr v1, v2

    .line 1716
    new-array v2, v1, [B

    .line 1717
    invoke-virtual {p1, v2, v5, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1721
    :cond_9d
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1722
    sub-int v1, v0, v1

    sub-int v1, p3, v1

    .line 1723
    goto :goto_ed

    .line 1647
    :sswitch_a6
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1648
    if-eqz v1, :cond_af

    .line 1649
    invoke-virtual {p2, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1652
    :cond_af
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1653
    sub-int v1, v0, v1

    sub-int v1, p3, v1

    .line 1654
    goto :goto_ed

    .line 1733
    :cond_b8
    nop

    .line 1734
    move v1, v5

    goto :goto_ed

    .line 1736
    :cond_bb
    const/16 v9, 0x20

    if-lt v6, v9, :cond_e2

    if-gt v6, v7, :cond_e2

    .line 1738
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1739
    invoke-static {p1, v5}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 1742
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 1743
    const-string v1, "Content-Transfer-Encoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v4, v1, :cond_d9

    .line 1744
    invoke-virtual {p2, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1747
    :cond_d9
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1748
    sub-int v1, v0, v1

    sub-int v1, p3, v1

    .line 1749
    goto :goto_ed

    .line 1754
    :cond_e2
    invoke-static {p1, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v1

    if-ne v8, v1, :cond_ec

    .line 1755
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    return v5

    .line 1758
    :cond_ec
    move v1, v5

    .line 1760
    :cond_ed
    :goto_ed
    goto/16 :goto_9

    .line 1762
    :cond_ef
    if-eqz v1, :cond_f5

    .line 1763
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    return v5

    .line 1767
    :cond_f5
    return v4

    :sswitch_data_f6
    .sparse-switch
        0x8e -> :sswitch_a6
        0xae -> :sswitch_3d
        0xc0 -> :sswitch_2a
        0xc5 -> :sswitch_3d
    .end sparse-switch
.end method

.method protected blacklist parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .registers 13

    .line 839
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 840
    return-object v0

    .line 843
    :cond_4
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 844
    new-instance v2, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 846
    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v1, :cond_106

    .line 847
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 848
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 849
    new-instance v7, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v7}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 850
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 851
    if-gtz v8, :cond_25

    .line 853
    return-object v0

    .line 857
    :cond_25
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 858
    invoke-static {p1, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v10

    .line 859
    if-eqz v10, :cond_34

    .line 860
    invoke-virtual {v7, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_3f

    .line 862
    :cond_34
    sget-object v10, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 866
    :goto_3f
    const/16 v10, 0x97

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 867
    if-eqz v10, :cond_50

    .line 868
    invoke-virtual {v7, v10}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 872
    :cond_50
    const/16 v10, 0x81

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 873
    if-eqz v9, :cond_65

    .line 874
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v9}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 878
    :cond_65
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    .line 879
    sub-int/2addr v8, v9

    sub-int/2addr v5, v8

    .line 880
    if-lez v5, :cond_74

    .line 881
    invoke-virtual {p0, p1, v7, v5}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v5

    if-nez v5, :cond_77

    .line 883
    return-object v0

    .line 885
    :cond_74
    if-gez v5, :cond_77

    .line 887
    return-object v0

    .line 893
    :cond_77
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    if-nez v5, :cond_9f

    .line 894
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    if-nez v5, :cond_9f

    .line 895
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    if-nez v5, :cond_9f

    .line 896
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v5

    if-nez v5, :cond_9f

    .line 897
    nop

    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 897
    invoke-static {v8, v9}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v5

    .line 898
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 897
    invoke-virtual {v7, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 902
    :cond_9f
    if-lez v6, :cond_f5

    .line 903
    new-array v5, v6, [B

    .line 904
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 905
    invoke-virtual {p1, v5, v3, v6}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 906
    const-string v6, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c5

    .line 908
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 910
    invoke-virtual {v5, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 911
    goto :goto_f5

    .line 913
    :cond_c5
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v6

    .line 914
    if-eqz v6, :cond_ea

    .line 915
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    .line 916
    const-string v6, "base64"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 918
    invoke-static {v5}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v5

    goto :goto_ea

    .line 919
    :cond_dd
    const-string/jumbo v6, "quoted-printable"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ea

    .line 921
    invoke-static {v5}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v5

    .line 926
    :cond_ea
    :goto_ea
    if-nez v5, :cond_f2

    .line 927
    const-string p1, "Decode part data error!"

    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 928
    return-object v0

    .line 930
    :cond_f2
    invoke-virtual {v7, v5}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 935
    :cond_f5
    :goto_f5
    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v5

    if-nez v5, :cond_ff

    .line 937
    invoke-virtual {v2, v3, v7}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto :goto_102

    .line 940
    :cond_ff
    invoke-virtual {v2, v7}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 846
    :goto_102
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 944
    :cond_106
    return-object v2
.end method
