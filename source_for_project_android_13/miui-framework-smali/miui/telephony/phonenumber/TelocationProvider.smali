.class public Lmiui/telephony/phonenumber/TelocationProvider;
.super Landroid/content/ContentProvider;
.source "TelocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/telephony/phonenumber/TelocationProvider$Contract;,
        Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;
    }
.end annotation


# static fields
.field public static final whitelist AREACODE_INDEX:I = 0x1

.field public static final whitelist AUTHORITY:Ljava/lang/String; = "com.miui.core.telocation"

.field private static final blacklist COMMON_OPERATOR_INDEX_LENGTH:I = 0x3

.field private static final blacklist DATA_ASSET_NAME:Ljava/lang/String; = "telocation.idf"

.field public static final whitelist EMPTY:Ljava/lang/String; = ""

.field private static final blacklist IOT_NUMBER_LENGTH:I = 0xd

.field private static final blacklist IOT_OPERATOR_INDEX_LENGTH:I = 0x5

.field public static final whitelist LOCATION_INDEX:I = 0x0

.field public static final whitelist LOCATION_KIND:I = 0x0

.field private static final blacklist LONG_UNIQID_LENGTH:I = 0x8

.field private static final blacklist NORMAL_UNIQID_LENGTH:I = 0x7

.field private static final blacklist OPERATORS_DATA_ASSET_NAME:Ljava/lang/String; = "operators.dat"

.field private static final blacklist TAG:Ljava/lang/String; = "TelocationProvider"

.field private static final blacklist UNIQID_LEN8_NUMBER_ASSET_NAME:Ljava/lang/String; = "tel_uniqid_len8.dat"

.field public static final whitelist UNIQUE_ID_NONE:I = 0x0

.field private static final blacklist VIRTUAL_OPERATOR_INDEX_LENGTH:I = 0x4

.field private static final blacklist VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist XIAOMI_DATA_ASSET_NAME:Ljava/lang/String; = "xiaomi_mobile.dat"

.field private static final blacklist XIAOMI_OPERATOR_INDEX_LENGTH:I = 0x7

.field private static blacklist sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final blacklist mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

.field private final blacklist mOperatorsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUniqIdLen8Numbers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mXiaomiMobileSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmOperatorsMap(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUniqIdLen8Numbers(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmXiaomiMobileSet(Lmiui/telephony/phonenumber/TelocationProvider;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;

    .line 48
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lmiui/telephony/phonenumber/TelocationProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 51
    const-string v1, "170"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "171"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "167"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "162"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lmiui/telephony/phonenumber/TelocationProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 59
    .local v0, "matcher":Landroid/content/UriMatcher;
    const-string v1, "com.miui.core.telocation"

    const-string v2, "reload"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 60
    const-string v2, "query_location"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    const-string v2, "query_area_code"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    const-string v2, "parse_area_code"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    const-string v2, "query_operator"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    const-string v2, "query_version"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    const-string v2, "query_uniq_id"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    const-string v2, "query_area_code_by_address"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    .end local v0    # "matcher":Landroid/content/UriMatcher;
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    return-void
.end method

.method private blacklist getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 8
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 230
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    if-nez v0, :cond_7

    .line 231
    const-string v0, ""

    return-object v0

    .line 233
    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v1

    .line 234
    .local v1, "id":I
    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private blacklist getAreaCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "adminArea"    # Ljava/lang/String;
    .param p2, "locality"    # Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    if-nez v0, :cond_7

    .line 254
    const-string v0, ""

    return-object v0

    .line 257
    :cond_7
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 258
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 259
    :try_start_12
    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 260
    const/4 v1, 0x0

    .local v1, "id":I
    :goto_1b
    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_3a

    .line 261
    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "location":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 263
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v2    # "location":Ljava/lang/String;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 267
    .end local v1    # "id":I
    :cond_3a
    monitor-exit v0

    goto :goto_3f

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_12 .. :try_end_3e} :catchall_3c

    throw v1

    .line 270
    :cond_3f
    :goto_3f
    const-string v0, "TelocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adminArea:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " locality:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 273
    const-string v0, "\u7701"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 274
    const-string v0, "\u5e02"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 275
    const-string v0, "\u5e02"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 276
    const-string v0, "\u533a"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 277
    const-string v0, "\u53bf"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 278
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mAreaCodeTelocations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 279
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 280
    .local v2, "normalizedAddress":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c4

    invoke-virtual {v2, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 281
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 283
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "normalizedAddress":Ljava/lang/String;
    :cond_c4
    goto :goto_9f

    .line 285
    :cond_c5
    const-string v0, ""

    return-object v0
.end method

.method private blacklist getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .registers 8
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "withAreaCode"    # Z

    .line 210
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    const-string v1, ""

    if-nez v0, :cond_7

    .line 211
    return-object v1

    .line 215
    :cond_7
    if-nez p4, :cond_a

    .line 216
    return-object v1

    .line 219
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v0

    .line 221
    .local v0, "id":I
    if-gtz v0, :cond_12

    .line 222
    return-object v1

    .line 225
    :cond_12
    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private blacklist getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 11
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ca

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_f

    goto/16 :goto_ca

    .line 299
    :cond_f
    add-int v0, p2, p3

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 301
    const/4 v0, 0x0

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 302
    .local v2, "commonOperatorPrefix":Ljava/lang/CharSequence;
    sget-object v3, Lmiui/telephony/phonenumber/TelocationProvider;->VIRTUAL_OPERATOR_PREFIXES:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_69

    .line 303
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x7

    if-ge v3, v5, :cond_2d

    .line 304
    const-string v0, ""

    return-object v0

    .line 306
    :cond_2d
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_48

    .line 307
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 308
    :try_start_38
    iget-object v6, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_43

    .line 309
    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initxiaomiMobile()V

    .line 311
    :cond_43
    monitor-exit v3

    goto :goto_48

    :catchall_45
    move-exception v0

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_45

    throw v0

    .line 314
    :cond_48
    :goto_48
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mXiaomiMobileSet:Ljava/util/HashSet;

    invoke-interface {p1, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 315
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110f0417

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 318
    :cond_64
    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_80

    .line 319
    :cond_69
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v5, 0x5

    if-lt v3, v5, :cond_80

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "1064"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 321
    invoke-interface {p1, v0, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 324
    :cond_80
    :goto_80
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-nez v3, :cond_9b

    .line 325
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 326
    :try_start_8b
    iget-object v4, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_96

    .line 327
    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initOperators()V

    .line 329
    :cond_96
    monitor-exit v3

    goto :goto_9b

    :catchall_98
    move-exception v0

    monitor-exit v3
    :try_end_9a
    .catchall {:try_start_8b .. :try_end_9a} :catchall_98

    throw v0

    .line 331
    :cond_9b
    :goto_9b
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 332
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 337
    :cond_ac
    const/4 v3, 0x4

    .local v3, "index":I
    :goto_ad
    if-lt v3, v1, :cond_c7

    .line 338
    invoke-interface {p1, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 339
    iget-object v4, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 340
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mOperatorsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 337
    :cond_c4
    add-int/lit8 v3, v3, -0x1

    goto :goto_ad

    .line 343
    .end local v3    # "index":I
    :cond_c7
    const-string v0, ""

    return-object v0

    .line 297
    .end local v2    # "commonOperatorPrefix":Ljava/lang/CharSequence;
    :cond_ca
    :goto_ca
    const-string v0, ""

    return-object v0
.end method

.method private blacklist initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V
    .registers 12
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "fileRawReadListener"    # Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;

    .line 445
    const-string v0, "Failed to close reader"

    const-string v1, "TelocationProvider"

    const/4 v2, 0x0

    .line 447
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_5
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 448
    .local v3, "mAssets":Landroid/content/res/AssetManager;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    .line 449
    const/4 v4, 0x0

    .line 450
    .local v4, "line":Ljava/lang/String;
    :goto_23
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_68

    .line 452
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 453
    goto :goto_23

    .line 455
    :cond_37
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 456
    const-string v5, "%s version: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    goto :goto_23

    .line 459
    :cond_5e
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 460
    .local v5, "array":[Ljava/lang/String;
    invoke-interface {p2, v5}, Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;->onReadRaw([Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_67} :catch_74
    .catchall {:try_start_5 .. :try_end_67} :catchall_72

    .line 461
    .end local v5    # "array":[Ljava/lang/String;
    goto :goto_23

    .line 465
    .end local v3    # "mAssets":Landroid/content/res/AssetManager;
    .end local v4    # "line":Ljava/lang/String;
    :cond_68
    nop

    .line 467
    :try_start_69
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 470
    :goto_6c
    goto :goto_92

    .line 468
    :catch_6d
    move-exception v3

    .line 469
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_6c

    .line 465
    :catchall_72
    move-exception v3

    goto :goto_93

    .line 462
    :catch_74
    move-exception v3

    .line 463
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_75 .. :try_end_8b} :catchall_72

    .line 465
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_92

    .line 467
    :try_start_8e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_91} :catch_6d

    goto :goto_6c

    .line 473
    :cond_92
    :goto_92
    return-void

    .line 465
    :goto_93
    if-eqz v2, :cond_9d

    .line 467
    :try_start_95
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_98} :catch_99

    .line 470
    goto :goto_9d

    .line 468
    :catch_99
    move-exception v4

    .line 469
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9d
    :goto_9d
    throw v3
.end method

.method private blacklist initOperators()V
    .registers 3

    .line 347
    new-instance v0, Lmiui/telephony/phonenumber/TelocationProvider$1;

    invoke-direct {v0, p0}, Lmiui/telephony/phonenumber/TelocationProvider$1;-><init>(Lmiui/telephony/phonenumber/TelocationProvider;)V

    const-string v1, "operators.dat"

    invoke-direct {p0, v1, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V

    .line 353
    return-void
.end method

.method private blacklist initReader()V
    .registers 6

    .line 83
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "telocation.idf"

    invoke-static {v0, v1}, Lmiui/telephony/phonenumber/DirectIndexedFileExtractor;->getDirectIndexedFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "dataPath":Ljava/lang/String;
    const-string v2, "TelocationProvider"

    if-eqz v0, :cond_3a

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 87
    :try_start_19
    invoke-static {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile;->open(Ljava/lang/String;)Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    move-result-object v3

    iput-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read Telocation from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_35} :catch_36

    .line 91
    goto :goto_3a

    .line 89
    :catch_36
    move-exception v3

    .line 90
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 94
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3a
    :goto_3a
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    if-nez v3, :cond_62

    .line 96
    :try_start_3e
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 97
    .local v3, "mAssets":Landroid/content/res/AssetManager;
    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile;->open(Ljava/io/InputStream;)Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    move-result-object v1

    iput-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    .line 99
    const-string v1, "Read Telocation from assets"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_5a} :catch_5c

    .line 102
    nop

    .end local v3    # "mAssets":Landroid/content/res/AssetManager;
    goto :goto_62

    .line 100
    :catch_5c
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Can\'t read telocation.idf, NO mobile telocation supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    :cond_62
    :goto_62
    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    if-eqz v1, :cond_80

    .line 105
    invoke-virtual {v1}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v1

    .line 106
    .local v1, "dataVersion":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Telocation version :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v1    # "dataVersion":I
    :cond_80
    return-void
.end method

.method private blacklist initUniqIdLen8Numbers()V
    .registers 3

    .line 428
    new-instance v0, Lmiui/telephony/phonenumber/TelocationProvider$3;

    invoke-direct {v0, p0}, Lmiui/telephony/phonenumber/TelocationProvider$3;-><init>(Lmiui/telephony/phonenumber/TelocationProvider;)V

    const-string v1, "tel_uniqid_len8.dat"

    invoke-direct {p0, v1, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V

    .line 442
    return-void
.end method

.method private blacklist initxiaomiMobile()V
    .registers 3

    .line 356
    new-instance v0, Lmiui/telephony/phonenumber/TelocationProvider$2;

    invoke-direct {v0, p0}, Lmiui/telephony/phonenumber/TelocationProvider$2;-><init>(Lmiui/telephony/phonenumber/TelocationProvider;)V

    const-string v1, "xiaomi_mobile.dat"

    invoke-direct {p0, v1, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->initDatFile(Ljava/lang/String;Lmiui/telephony/phonenumber/TelocationProvider$DatFileRawReadListener;)V

    .line 362
    return-void
.end method

.method private blacklist parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 8
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 239
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    if-nez v0, :cond_7

    .line 240
    const-string v0, ""

    return-object v0

    .line 242
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v1

    .line 243
    .local v1, "id":I
    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->get(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    if-eqz v0, :cond_7

    .line 113
    invoke-virtual {v0}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->close()V

    .line 115
    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 116
    return-void
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUniqId(Ljava/lang/CharSequence;IIZ)I
    .registers 12
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "length"    # I
    .param p4, "enableMobile"    # Z

    .line 365
    const/16 v0, 0x30

    if-lez p3, :cond_e

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_e

    .line 366
    add-int/lit8 p2, p2, 0x1

    .line 367
    add-int/lit8 p3, p3, -0x1

    .line 369
    :cond_e
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p3, v2, :cond_13

    .line 370
    return v1

    .line 372
    :cond_13
    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_2e

    .line 373
    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    monitor-enter v2

    .line 374
    :try_start_1e
    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_29

    .line 375
    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initUniqIdLen8Numbers()V

    .line 377
    :cond_29
    monitor-exit v2

    goto :goto_2e

    :catchall_2b
    move-exception v0

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2b

    throw v0

    .line 381
    :cond_2e
    :goto_2e
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    packed-switch v2, :pswitch_data_132

    .line 417
    const/4 v2, 0x2

    if-le p3, v2, :cond_131

    .line 419
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v0

    mul-int/2addr v1, v3

    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    mul-int/2addr v1, v3

    add-int/lit8 v2, p2, 0x2

    .line 420
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    .line 421
    .local v1, "index":I
    return v1

    .line 414
    .end local v1    # "index":I
    :pswitch_52
    add-int/lit8 v1, p2, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x14

    .line 415
    .restart local v1    # "index":I
    return v1

    .line 385
    .end local v1    # "index":I
    :pswitch_5c
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0xd

    if-ne v2, v0, :cond_7d

    if-eqz p4, :cond_7c

    if-lt p3, v4, :cond_7c

    add-int v2, p2, p3

    .line 386
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "1064"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7d

    .line 388
    :cond_7c
    return v3

    .line 389
    :cond_7d
    if-eqz p4, :cond_131

    const/4 v2, 0x7

    if-lt p3, v2, :cond_131

    .line 391
    const v2, 0xf4240

    add-int/lit8 v5, p2, 0x1

    .line 392
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    sub-int/2addr v5, v0

    const v6, 0x186a0

    mul-int/2addr v5, v6

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x2710

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x3

    .line 393
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x4

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x5

    .line 394
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/2addr v2, v3

    add-int/2addr v5, v2

    add-int/lit8 v2, p2, 0x6

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int/2addr v5, v2

    .line 395
    .local v5, "index":I
    const v2, 0x150ead

    if-ne v5, v2, :cond_ea

    if-le p3, v3, :cond_ea

    add-int/lit8 v2, p2, 0x7

    .line 396
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v6, 0x38

    if-ne v2, v6, :cond_ea

    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_ea

    add-int/lit8 v2, p2, 0x9

    .line 397
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_ea

    add-int/lit8 v2, p2, 0xa

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_ea

    .line 399
    return v1

    .line 401
    :cond_ea
    const/16 v1, 0x8

    if-lt p3, v1, :cond_106

    iget-object v1, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mUniqIdLen8Numbers:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 403
    mul-int/lit8 v1, v5, 0xa

    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int v5, v1, v2

    goto :goto_130

    .line 404
    :cond_106
    if-lt p3, v4, :cond_130

    const v1, 0x1583d0

    if-lt v5, v1, :cond_112

    const v1, 0x15aadf

    if-le v5, v1, :cond_11c

    :cond_112
    const v1, 0x103c40

    if-lt v5, v1, :cond_130

    const v1, 0x104027

    if-gt v5, v1, :cond_130

    .line 407
    :cond_11c
    mul-int/lit8 v1, v5, 0x64

    add-int/lit8 v2, p2, 0x7

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v2, p2, 0x8

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v0

    add-int v5, v1, v2

    .line 409
    :cond_130
    :goto_130
    return v5

    .line 424
    .end local v5    # "index":I
    :cond_131
    :pswitch_131
    return v1

    :pswitch_data_132
    .packed-switch 0x30
        :pswitch_131
        :pswitch_5c
        :pswitch_52
    .end packed-switch
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()Z
    .registers 2

    .line 77
    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initReader()V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lmiui/telephony/phonenumber/TelocationProvider$Contract;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 121
    .local v0, "cursor":Landroid/database/MatrixCursor;
    sget-object v1, Lmiui/telephony/phonenumber/TelocationProvider$Contract;->COLUMNS:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 122
    .local v1, "result":[Ljava/lang/Object;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 133
    sget-object v3, Lmiui/telephony/phonenumber/TelocationProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const-string v4, "length"

    const-string v5, "start"

    const-string v6, "number"

    packed-switch v3, :pswitch_data_126

    goto/16 :goto_121

    .line 176
    :pswitch_25
    const-string v2, "adminArea"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "adminArea":Ljava/lang/String;
    const-string v3, "locality"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "locality":Ljava/lang/String;
    const/4 v4, 0x7

    invoke-direct {p0, v2, v3}, Lmiui/telephony/phonenumber/TelocationProvider;->getAreaCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 179
    goto/16 :goto_121

    .line 169
    .end local v2    # "adminArea":Ljava/lang/String;
    .end local v3    # "locality":Ljava/lang/String;
    :pswitch_3a
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "number":Ljava/lang/CharSequence;
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 171
    .local v5, "start":I
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 172
    .local v4, "length":I
    const-string v6, "enable_mobile"

    invoke-virtual {p1, v6, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v2

    .line 173
    .local v2, "enableMobile":Z
    const/4 v6, 0x6

    invoke-virtual {p0, v3, v5, v4, v2}, Lmiui/telephony/phonenumber/TelocationProvider;->getUniqId(Ljava/lang/CharSequence;IIZ)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v6

    .line 174
    goto/16 :goto_121

    .line 163
    .end local v2    # "enableMobile":Z
    .end local v3    # "number":Ljava/lang/CharSequence;
    .end local v4    # "length":I
    .end local v5    # "start":I
    :pswitch_69
    iget-object v2, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    if-nez v2, :cond_70

    .line 164
    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initReader()V

    .line 166
    :cond_70
    const/4 v2, 0x5

    iget-object v3, p0, Lmiui/telephony/phonenumber/TelocationProvider;->mDensityIndexFileReader:Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;

    invoke-virtual {v3}, Lmiui/telephony/phonenumber/DirectIndexedFile$Reader;->getDataVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 167
    goto/16 :goto_121

    .line 157
    :pswitch_7f
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "number":Ljava/lang/CharSequence;
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 159
    .local v3, "start":I
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 160
    .restart local v4    # "length":I
    const/4 v5, 0x4

    invoke-direct {p0, v2, v3, v4}, Lmiui/telephony/phonenumber/TelocationProvider;->getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 161
    goto/16 :goto_121

    .line 151
    .end local v2    # "number":Ljava/lang/CharSequence;
    .end local v3    # "start":I
    .end local v4    # "length":I
    :pswitch_a4
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    .restart local v2    # "number":Ljava/lang/CharSequence;
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 153
    .restart local v3    # "start":I
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 154
    .restart local v4    # "length":I
    const/4 v5, 0x3

    invoke-direct {p0, v2, v3, v4}, Lmiui/telephony/phonenumber/TelocationProvider;->parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 155
    goto :goto_121

    .line 145
    .end local v2    # "number":Ljava/lang/CharSequence;
    .end local v3    # "start":I
    .end local v4    # "length":I
    :pswitch_c8
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "number":Ljava/lang/CharSequence;
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 147
    .restart local v3    # "start":I
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 148
    .restart local v4    # "length":I
    const/4 v5, 0x2

    invoke-direct {p0, v2, v3, v4}, Lmiui/telephony/phonenumber/TelocationProvider;->getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    .line 149
    goto :goto_121

    .line 138
    .end local v2    # "number":Ljava/lang/CharSequence;
    .end local v3    # "start":I
    .end local v4    # "length":I
    :pswitch_ec
    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "number":Ljava/lang/CharSequence;
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 140
    .restart local v5    # "start":I
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 141
    .restart local v4    # "length":I
    const-string v6, "with_area_code"

    invoke-virtual {p1, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 142
    .local v6, "withAreaCode":Z
    invoke-direct {p0, v3, v5, v4, v6}, Lmiui/telephony/phonenumber/TelocationProvider;->getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 143
    goto :goto_121

    .line 135
    .end local v3    # "number":Ljava/lang/CharSequence;
    .end local v4    # "length":I
    .end local v5    # "start":I
    .end local v6    # "withAreaCode":Z
    :pswitch_11d
    invoke-direct {p0}, Lmiui/telephony/phonenumber/TelocationProvider;->initReader()V

    .line 136
    nop

    .line 184
    :goto_121
    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 185
    return-object v0

    nop

    :pswitch_data_126
    .packed-switch 0x1
        :pswitch_11d
        :pswitch_ec
        :pswitch_c8
        :pswitch_a4
        :pswitch_7f
        :pswitch_69
        :pswitch_3a
        :pswitch_25
    .end packed-switch
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 205
    const/4 v0, 0x0

    return v0
.end method
