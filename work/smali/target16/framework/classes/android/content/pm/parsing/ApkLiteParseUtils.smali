.class public Landroid/content/pm/parsing/ApkLiteParseUtils;
.super Ljava/lang/Object;
.source "ApkLiteParseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;
    }
.end annotation


# static fields
.field public static final blacklist ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final blacklist ANDROID_RES_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final blacklist APK_FILE_EXTENSION:Ljava/lang/String; = ".apk"

.field public static final blacklist DEFAULT_MIN_SDK_VERSION:I = 0x1

.field private static final blacklist DEFAULT_TARGET_SDK_VERSION:I = 0x0

.field private static final blacklist PARSE_COLLECT_CERTIFICATES:I = 0x20

.field private static final blacklist PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field private static final blacklist PARSE_IS_SYSTEM_DIR:I = 0x10

.field private static final blacklist SDK_CODENAMES:[Ljava/lang/String;

.field private static final blacklist SDK_VERSION:I

.field private static final blacklist TAG:Ljava/lang/String; = "ApkLiteParseUtils"

.field private static final blacklist TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final blacklist TAG_LIBRARY:Ljava/lang/String; = "library"

.field private static final blacklist TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final blacklist TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final blacklist TAG_PACKAGE_VERIFIER:Ljava/lang/String; = "package-verifier"

.field private static final blacklist TAG_PROCESS:Ljava/lang/String; = "process"

.field private static final blacklist TAG_PROCESSES:Ljava/lang/String; = "processes"

.field private static final blacklist TAG_PROFILEABLE:Ljava/lang/String; = "profileable"

.field private static final blacklist TAG_RECEIVER:Ljava/lang/String; = "receiver"

.field private static final blacklist TAG_SDK_LIBRARY:Ljava/lang/String; = "sdk-library"

.field private static final blacklist TAG_STATIC_LIBRARY:Ljava/lang/String; = "static-library"

.field private static final blacklist TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static final blacklist TAG_USES_SDK_LIBRARY:Ljava/lang/String; = "uses-sdk-library"

.field private static final blacklist TAG_USES_SPLIT:Ljava/lang/String; = "uses-split"

.field private static final blacklist TAG_USES_STATIC_LIBRARY:Ljava/lang/String; = "uses-static-library"

.field private static final blacklist sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 75
    new-instance v0, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils$SplitNameComparator;-><init>(Landroid/content/pm/parsing/ApkLiteParseUtils-IA;)V

    sput-object v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->sSplitNameComparator:Ljava/util/Comparator;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_VERSION:I

    .line 100
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_CODENAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Landroid/content/pm/parsing/ApkLite;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Landroid/content/pm/parsing/ApkLite;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;Z)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez p2, :cond_20

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing base APK in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x65

    invoke-interface {v0, v2, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 277
    :cond_20
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Map;)I

    move-result v2

    .line 279
    nop

    .line 280
    nop

    .line 281
    nop

    .line 282
    nop

    .line 283
    nop

    .line 284
    nop

    .line 285
    nop

    .line 286
    nop

    .line 287
    if-lez v2, :cond_a2

    .line 288
    new-array v3, v2, [Ljava/lang/String;

    .line 289
    new-array v4, v2, [Ljava/util/Set;

    .line 290
    new-array v5, v2, [Ljava/util/Set;

    .line 291
    new-array v6, v2, [Z

    .line 292
    new-array v7, v2, [Ljava/lang/String;

    .line 293
    new-array v8, v2, [Ljava/lang/String;

    .line 294
    new-array v9, v2, [Ljava/lang/String;

    .line 295
    new-array v10, v2, [I

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 298
    sget-object v11, Landroid/content/pm/parsing/ApkLiteParseUtils;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v3, v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 300
    const/4 v11, 0x0

    :goto_4e
    if-ge v11, v2, :cond_97

    .line 301
    aget-object v12, v3, v11

    move-object/from16 v13, p3

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/parsing/ApkLite;

    .line 302
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v14

    aput-object v14, v4, v11

    .line 303
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getSplitTypes()Ljava/util/Set;

    move-result-object v14

    aput-object v14, v5, v11

    .line 304
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getUsesSplitName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v7, v11

    .line 305
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->isFeatureSplit()Z

    move-result v14

    aput-boolean v14, v6, v11

    .line 306
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getConfigForSplit()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v8, v11

    .line 307
    if-eqz p4, :cond_88

    .line 308
    new-instance v14, Ljava/io/File;

    invoke-static {v12}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v1, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    goto :goto_8c

    :cond_88
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v14

    :goto_8c
    aput-object v14, v9, v11

    .line 309
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getRevisionCode()I

    move-result v12

    aput v12, v10, v11

    .line 300
    add-int/lit8 v11, v11, 0x1

    goto :goto_4e

    :cond_97
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object v11, v7

    move-object v12, v8

    move-object v13, v9

    move-object v14, v10

    move-object v9, v3

    move-object v10, v6

    goto :goto_ad

    .line 287
    :cond_a2
    const/4 v4, 0x0

    move-object v9, v4

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    .line 313
    :goto_ad
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 314
    if-eqz p4, :cond_c1

    .line 315
    new-instance v2, Ljava/io/File;

    invoke-static/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_c5

    :cond_c1
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_c5
    move-object v7, v1

    .line 316
    new-instance v5, Landroid/content/pm/parsing/PackageLite;

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v15

    move-object/from16 v8, p2

    invoke-direct/range {v5 .. v17}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 316
    invoke-interface {v0, v5}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isApkFile(Ljava/io/File;)Z
    .registers 1

    .line 1034
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkPath(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isApkPath(Ljava/lang/String;)Z
    .registers 2

    .line 1044
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static blacklist isDeviceAdminReceiver(Landroid/content/res/XmlResourceParser;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 869
    const-string/jumbo v0, "permission"

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    const/4 v2, 0x0

    if-nez p1, :cond_15

    .line 872
    const-string p1, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 873
    return v2

    .line 876
    :cond_15
    nop

    .line 877
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result p1

    .line 879
    :cond_1a
    :goto_1a
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_59

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2a

    .line 880
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, p1, :cond_59

    .line 881
    :cond_2a
    if-eq v0, v4, :cond_1a

    const/4 v4, 0x4

    if-ne v0, v4, :cond_30

    .line 883
    goto :goto_1a

    .line 885
    :cond_30
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    add-int/lit8 v4, p1, 0x1

    if-eq v0, v4, :cond_39

    .line 887
    goto :goto_1a

    .line 889
    :cond_39
    if-nez v2, :cond_1a

    const-string/jumbo v0, "meta-data"

    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 890
    const-string/jumbo v0, "name"

    invoke-interface {p0, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    const-string v4, "android.app.device_admin"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 893
    move v2, v3

    .line 895
    :cond_58
    goto :goto_1a

    .line 897
    :cond_59
    return v2
.end method

.method private static blacklist normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 863
    const-string v0, ":"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    sget-object v0, Landroid/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 832
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 834
    :goto_6
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_59

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    .line 836
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_59

    .line 837
    :cond_16
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1a

    .line 838
    goto :goto_6

    .line 840
    :cond_1a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 841
    const-string v3, "additional-certificate"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 842
    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "certDigest"

    invoke-interface {p1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 844
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 845
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad additional-certificate declaration with empty certDigest:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 849
    :cond_4c
    invoke-static {v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 850
    const-class v3, Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 853
    :cond_58
    goto :goto_6

    .line 855
    :cond_59
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 69
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/SigningDetails;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 419
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-static {v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 421
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 423
    :cond_13
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 425
    nop

    .line 426
    invoke-static {v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseRequiredSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 427
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_29

    .line 428
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 430
    :cond_29
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/Pair;

    .line 432
    const-string v0, "installLocation"

    const-string v6, "http://schemas.android.com/apk/res/android"

    const/4 v7, -0x1

    invoke-interface {v2, v6, v0, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    .line 434
    const-string/jumbo v0, "versionCode"

    const/4 v8, 0x0

    invoke-interface {v2, v6, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    .line 435
    const-string/jumbo v0, "versionCodeMajor"

    invoke-interface {v2, v6, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v17

    .line 438
    const-string/jumbo v0, "revisionCode"

    invoke-interface {v2, v6, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18

    .line 439
    const-string v0, "coreApp"

    const/4 v9, 0x0

    invoke-interface {v2, v9, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v22

    .line 440
    const-string/jumbo v0, "updatableSystem"

    const/4 v10, 0x1

    invoke-interface {v2, v9, v0, v10}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v49

    .line 441
    const-string/jumbo v0, "isolatedSplits"

    invoke-interface {v2, v6, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v29

    .line 443
    const-string v0, "isFeatureSplit"

    invoke-interface {v2, v6, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 445
    const-string/jumbo v0, "isSplitRequired"

    invoke-interface {v2, v6, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 447
    const-string v0, "configForSplit"

    invoke-interface {v2, v9, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 448
    const-string v0, "emergencyInstaller"

    invoke-interface {v2, v9, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 450
    nop

    .line 451
    nop

    .line 452
    nop

    .line 453
    nop

    .line 454
    nop

    .line 455
    nop

    .line 456
    nop

    .line 457
    nop

    .line 458
    nop

    .line 459
    nop

    .line 460
    nop

    .line 461
    nop

    .line 462
    nop

    .line 463
    nop

    .line 465
    nop

    .line 466
    nop

    .line 468
    nop

    .line 470
    nop

    .line 471
    nop

    .line 472
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 473
    new-array v0, v8, [J

    .line 474
    const/4 v14, 0x2

    new-array v9, v14, [I

    aput v8, v9, v10

    aput v8, v9, v8

    const-class v7, Ljava/lang/String;

    invoke-static {v7, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Ljava/lang/String;

    .line 476
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 477
    move/from16 v23, v10

    new-array v10, v8, [J

    .line 478
    move/from16 v24, v8

    new-array v8, v14, [I

    aput v24, v8, v23

    aput v24, v8, v24

    const-class v14, Ljava/lang/String;

    invoke-static {v14, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[Ljava/lang/String;

    .line 480
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v26

    move-object/from16 v27, v7

    add-int/lit8 v7, v26, 0x1

    .line 486
    move-object/from16 v26, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v43, v0

    move-object/from16 v47, v10

    move/from16 v38, v12

    move-object/from16 v39, v13

    move/from16 v28, v23

    move/from16 v35, v28

    move/from16 v25, v24

    move/from16 v30, v25

    move/from16 v32, v30

    move/from16 v33, v32

    move/from16 v34, v33

    move/from16 v36, v34

    move/from16 v37, v36

    move/from16 v40, v37

    move/from16 v41, v40

    move/from16 v45, v41

    move/from16 v52, v45

    move-object/from16 v48, v26

    move-object/from16 v44, v27

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v31, 0x0

    const/16 v42, 0x2

    move/from16 v26, v52

    move/from16 v27, v26

    .line 487
    :goto_105
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move/from16 v46, v15

    const-string v15, "ApkLiteParseUtils"

    move-object/from16 v51, v5

    move/from16 v5, v23

    if-eq v0, v5, :cond_711

    const/4 v5, 0x3

    if-ne v0, v5, :cond_12c

    .line 488
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-lt v5, v7, :cond_11d

    goto :goto_12c

    :cond_11d
    move-object/from16 v56, v4

    move-object/from16 v55, v8

    move-object/from16 v57, v10

    move-object v8, v11

    move-object/from16 v58, v12

    move-object/from16 v59, v13

    move/from16 v10, p4

    goto/16 :goto_71e

    .line 489
    :cond_12c
    :goto_12c
    const/4 v5, 0x3

    if-eq v0, v5, :cond_6e9

    const/4 v5, 0x4

    if-ne v0, v5, :cond_147

    .line 490
    move-object/from16 v56, v4

    move/from16 v54, v7

    move-object/from16 v55, v8

    move-object/from16 v57, v10

    move-object v8, v11

    move-object/from16 v58, v12

    move-object/from16 v59, v13

    move/from16 v4, v24

    const/16 v23, 0x1

    move/from16 v10, p4

    goto/16 :goto_6fc

    .line 493
    :cond_147
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    if-eq v0, v7, :cond_162

    .line 494
    move-object/from16 v56, v4

    move/from16 v54, v7

    move-object/from16 v55, v8

    move-object/from16 v57, v10

    move-object v8, v11

    move-object/from16 v58, v12

    move-object/from16 v59, v13

    move/from16 v4, v24

    const/16 v23, 0x1

    move/from16 v10, p4

    goto/16 :goto_6fc

    .line 497
    :cond_162
    const-string/jumbo v0, "package-verifier"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 498
    invoke-static {v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_178

    .line 500
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_178
    move-object/from16 v56, v4

    move/from16 v54, v7

    move-object/from16 v55, v8

    move-object/from16 v57, v10

    move-object v8, v11

    move-object/from16 v58, v12

    move-object/from16 v59, v13

    move/from16 v4, v24

    const/16 v23, 0x1

    move/from16 v10, p4

    goto/16 :goto_6fc

    :cond_18d
    const-string v0, "application"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v5, "name"

    if-eqz v0, :cond_5a1

    .line 503
    const-string v0, "debuggable"

    move/from16 v15, v24

    invoke-interface {v2, v6, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v32

    .line 505
    const-string/jumbo v0, "multiArch"

    invoke-interface {v2, v6, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v25

    .line 507
    const-string/jumbo v0, "use32bitAbi"

    invoke-interface {v2, v6, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v27

    .line 509
    const-string v0, "extractNativeLibs"

    const/4 v15, 0x1

    invoke-interface {v2, v6, v0, v15}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v28

    .line 511
    const-string/jumbo v15, "useEmbeddedDex"

    move/from16 v54, v7

    const/4 v7, 0x0

    invoke-interface {v2, v6, v15, v7}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 514
    move/from16 v30, v0

    const-string/jumbo v0, "rollbackDataPolicy"

    invoke-interface {v2, v6, v0, v7}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v37

    .line 516
    const-string/jumbo v0, "permission"

    invoke-interface {v2, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    nop

    .line 519
    const-string v7, "android.permission.BIND_DEVICE_ADMIN"

    invoke-virtual {v7, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 521
    const-string/jumbo v0, "pageSizeCompat"

    move-object/from16 v55, v8

    const/4 v8, 0x0

    invoke-interface {v2, v6, v0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v52

    .line 525
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    move-object/from16 v56, v4

    move-object/from16 v57, v10

    move-object/from16 v58, v12

    move-object/from16 v59, v13

    move/from16 v4, v26

    move-object/from16 v0, v43

    move-object/from16 v10, v44

    move-object/from16 v12, v47

    move-object/from16 v13, v48

    .line 527
    :goto_1fa
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    move/from16 v26, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_57b

    const/4 v4, 0x3

    if-ne v3, v4, :cond_214

    .line 528
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v8, :cond_20d

    goto :goto_214

    :cond_20d
    move-object v15, v10

    move-object v8, v11

    move-object v10, v12

    move/from16 v7, v26

    goto/16 :goto_580

    .line 529
    :cond_214
    :goto_214
    const/4 v4, 0x3

    if-eq v3, v4, :cond_564

    const/4 v4, 0x4

    if-ne v3, v4, :cond_228

    .line 530
    move v3, v7

    move/from16 v60, v8

    move-object v8, v11

    move-object/from16 v62, v15

    move/from16 v7, v26

    const/16 v53, 0x4

    move-object v15, v10

    move-object v10, v12

    goto/16 :goto_570

    .line 533
    :cond_228
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    add-int/lit8 v4, v8, 0x1

    if-eq v3, v4, :cond_23e

    .line 535
    move v3, v7

    move/from16 v60, v8

    move-object v8, v11

    move-object/from16 v62, v15

    move/from16 v7, v26

    const/16 v53, 0x4

    move-object v15, v10

    move-object v10, v12

    goto/16 :goto_570

    .line 538
    :cond_23e
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_7c2

    :cond_249
    goto :goto_2a3

    :sswitch_24a
    const-string/jumbo v4, "profileable"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x0

    goto :goto_2a4

    :sswitch_255
    const-string/jumbo v4, "library"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x6

    goto :goto_2a4

    :sswitch_260
    const-string/jumbo v4, "uses-static-library"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x3

    goto :goto_2a4

    :sswitch_26b
    const-string/jumbo v4, "receiver"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x1

    goto :goto_2a4

    :sswitch_276
    const-string/jumbo v4, "static-library"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x5

    goto :goto_2a4

    :sswitch_281
    const-string/jumbo v4, "processes"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x7

    goto :goto_2a4

    :sswitch_28c
    const-string/jumbo v4, "uses-sdk-library"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    move/from16 v3, v42

    goto :goto_2a4

    :sswitch_298
    const-string/jumbo v4, "sdk-library"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/4 v3, 0x4

    goto :goto_2a4

    :goto_2a3
    const/4 v3, -0x1

    :goto_2a4
    const-wide/16 v43, 0x0

    const-string/jumbo v4, "version"

    move/from16 v47, v3

    const-string v3, "certDigest"

    move/from16 v60, v8

    const-string/jumbo v8, "versionMajor"

    move/from16 v61, v7

    const-string v7, " version: "

    packed-switch v47, :pswitch_data_7e4

    move-object v8, v11

    move-object/from16 v62, v15

    move/from16 v7, v26

    move/from16 v3, v61

    const/16 v53, 0x4

    move-object v15, v10

    move-object v10, v12

    goto/16 :goto_559

    .line 700
    :pswitch_2c6
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 702
    :cond_2ca
    :goto_2ca
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v7, 0x1

    if-eq v4, v7, :cond_309

    const/4 v7, 0x3

    if-ne v4, v7, :cond_2dd

    .line 704
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_2db

    goto :goto_2dd

    :cond_2db
    const/4 v7, 0x4

    goto :goto_30a

    .line 705
    :cond_2dd
    :goto_2dd
    if-eq v4, v7, :cond_307

    const/4 v7, 0x4

    if-ne v4, v7, :cond_2e3

    .line 707
    goto :goto_2ca

    .line 710
    :cond_2e3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    add-int/lit8 v8, v3, 0x1

    if-eq v4, v8, :cond_2ec

    .line 712
    goto :goto_2ca

    .line 715
    :cond_2ec
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "process"

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2ca

    .line 716
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/pm/pkg/component/flags/Flags;->enablePerProcessUseEmbeddedDexAttr()Z

    move-result v4

    if-eqz v4, :cond_2ca

    .line 717
    const/4 v8, 0x0

    invoke-interface {v2, v6, v15, v8}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    or-int v30, v30, v4

    goto :goto_2ca

    .line 705
    :cond_307
    const/4 v7, 0x4

    goto :goto_2ca

    .line 702
    :cond_309
    const/4 v7, 0x4

    .line 721
    :goto_30a
    move/from16 v53, v7

    move-object v8, v11

    move-object/from16 v62, v15

    move/from16 v4, v26

    move/from16 v3, v61

    goto/16 :goto_55c

    .line 689
    :pswitch_315
    const/4 v7, 0x4

    invoke-interface {v2, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 691
    if-nez v3, :cond_323

    .line 692
    const-string v0, "Bad library declaration name: null"

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 694
    :cond_323
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 695
    new-instance v4, Landroid/content/pm/SharedLibraryInfo;

    const-wide/16 v7, -0x1

    move-object/from16 v62, v15

    const/4 v15, 0x1

    invoke-direct {v4, v3, v7, v8, v15}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    move-object v15, v10

    move-object v8, v11

    move-object v10, v12

    move/from16 v7, v26

    move/from16 v3, v61

    const/16 v53, 0x4

    goto/16 :goto_559

    .line 669
    :pswitch_33f
    move-object/from16 v62, v15

    const/16 v53, 0x4

    .line 672
    invoke-interface {v2, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 674
    const/4 v15, -0x1

    invoke-interface {v2, v6, v4, v15}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 676
    const/4 v15, 0x0

    invoke-interface {v2, v6, v8, v15}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 678
    if-eqz v3, :cond_372

    if-gez v4, :cond_356

    goto :goto_372

    .line 682
    :cond_356
    new-instance v7, Landroid/content/pm/SharedLibraryInfo;

    .line 683
    move-object v15, v10

    move-object/from16 v63, v11

    invoke-static {v8, v4}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v10

    move/from16 v8, v42

    invoke-direct {v7, v3, v10, v11, v8}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JI)V

    .line 682
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    move-object v10, v15

    move/from16 v4, v26

    move/from16 v3, v61

    move-object/from16 v8, v63

    const/16 v45, 0x1

    goto/16 :goto_55c

    .line 679
    :cond_372
    :goto_372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad static-library declaration name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 651
    :pswitch_392
    move-object/from16 v63, v11

    move-object/from16 v62, v15

    const/16 v53, 0x4

    move-object v15, v10

    .line 654
    invoke-interface {v2, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 656
    const/4 v4, -0x1

    invoke-interface {v2, v6, v8, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 658
    if-eqz v3, :cond_3bc

    if-gez v8, :cond_3a7

    goto :goto_3bc

    .line 664
    :cond_3a7
    new-instance v4, Landroid/content/pm/SharedLibraryInfo;

    int-to-long v7, v8

    const/4 v10, 0x3

    invoke-direct {v4, v3, v7, v8, v10}, Landroid/content/pm/SharedLibraryInfo;-><init>(Ljava/lang/String;JI)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    move-object v10, v15

    move/from16 v4, v26

    move/from16 v3, v61

    move-object/from16 v8, v63

    const/16 v41, 0x1

    goto/16 :goto_55c

    .line 659
    :cond_3bc
    :goto_3bc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad sdk-library declaration name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x6c

    invoke-interface {v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 601
    :pswitch_3de
    move-object/from16 v63, v11

    move-object/from16 v62, v15

    const/16 v53, 0x4

    move-object v15, v10

    const/4 v10, 0x3

    invoke-interface {v2, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 603
    const/4 v11, -0x1

    invoke-interface {v2, v6, v4, v11}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    int-to-long v10, v4

    .line 605
    invoke-interface {v2, v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 608
    if-eqz v8, :cond_463

    invoke-virtual {v8}, Ljava/lang/String;->isBlank()Z

    move-result v4

    if-nez v4, :cond_463

    cmp-long v4, v10, v43

    if-ltz v4, :cond_463

    if-nez v3, :cond_403

    goto :goto_463

    .line 619
    :cond_403
    invoke-interface {v9, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_423

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad uses-sdk-library declaration. Depending on multiple versions of static library: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x6c

    invoke-interface {v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 627
    :cond_423
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    const/4 v4, 0x1

    invoke-static {v12, v10, v11, v4}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v12

    .line 632
    invoke-static {v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 634
    nop

    .line 635
    invoke-static {v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseAdditionalCertificates(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v4

    .line 636
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-eqz v7, :cond_43f

    .line 637
    invoke-interface {v1, v4}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 639
    :cond_43f
    invoke-interface {v4}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 640
    array-length v7, v4

    const/4 v8, 0x1

    add-int/2addr v7, v8

    new-array v7, v7, [Ljava/lang/String;

    .line 642
    const/4 v10, 0x0

    aput-object v3, v7, v10

    .line 643
    array-length v3, v4

    invoke-static {v4, v10, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 646
    const-class v3, [Ljava/lang/String;

    invoke-static {v3, v13, v7, v8}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, [[Ljava/lang/String;

    .line 649
    move-object v10, v15

    move/from16 v4, v26

    move/from16 v3, v61

    move-object/from16 v8, v63

    goto/16 :goto_55c

    .line 611
    :cond_463
    :goto_463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad uses-static-library declaration name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " certDigest: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x6c

    invoke-interface {v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 548
    :pswitch_48f
    move-object/from16 v63, v11

    move-object/from16 v62, v15

    const/16 v53, 0x4

    move-object v15, v10

    invoke-interface {v2, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 553
    invoke-interface {v2, v6, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 555
    const/4 v11, -0x1

    invoke-static {v8, v11}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v8

    move-object v10, v12

    int-to-long v11, v8

    .line 557
    invoke-interface {v2, v6, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 560
    if-eqz v4, :cond_50e

    invoke-virtual {v4}, Ljava/lang/String;->isBlank()Z

    move-result v8

    if-nez v8, :cond_50e

    cmp-long v8, v11, v43

    if-gez v8, :cond_4b6

    goto :goto_50e

    .line 569
    :cond_4b6
    move-object/from16 v8, v63

    invoke-interface {v8, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d8

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad uses-sdk-library declaration. Depending on multiple versions of SDK library: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x6c

    invoke-interface {v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 577
    :cond_4d8
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    const/4 v4, 0x1

    invoke-static {v0, v11, v12, v4}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v7

    .line 582
    invoke-static {v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->normalizeCertDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f9

    .line 586
    const-string v0, "debug.pm.uses_sdk_library_default_cert_digest"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 590
    const/4 v4, 0x0

    :try_start_4f3
    invoke-static {v0, v4}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;Z)[B
    :try_end_4f6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f3 .. :try_end_4f6} :catch_4f7

    .line 593
    goto :goto_4f9

    .line 591
    :catch_4f7
    move-exception v0

    .line 592
    move-object v0, v3

    .line 596
    :cond_4f9
    :goto_4f9
    const-class v3, [Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v3, v15, v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 599
    move-object v12, v10

    move/from16 v4, v26

    move/from16 v3, v61

    move-object v10, v0

    move-object v0, v7

    goto :goto_55c

    .line 562
    :cond_50e
    :goto_50e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad uses-sdk-library declaration name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, -0x6c

    invoke-interface {v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 544
    :pswitch_530
    move-object v8, v11

    move-object/from16 v62, v15

    const/16 v53, 0x4

    move-object v15, v10

    move-object v10, v12

    move/from16 v3, v61

    invoke-static {v2, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isDeviceAdminReceiver(Landroid/content/res/XmlResourceParser;Z)Z

    move-result v4

    or-int v4, v40, v4

    .line 546
    move/from16 v40, v4

    move-object v10, v15

    move/from16 v4, v26

    goto :goto_55c

    .line 540
    :pswitch_545
    move-object v8, v11

    move-object/from16 v62, v15

    move/from16 v3, v61

    const/16 v53, 0x4

    move-object v15, v10

    move-object v10, v12

    const-string/jumbo v4, "shell"

    move/from16 v7, v26

    invoke-interface {v2, v6, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 542
    move-object v10, v15

    goto :goto_55c

    .line 721
    :goto_559
    move v4, v7

    move-object v12, v10

    move-object v10, v15

    :goto_55c
    move v7, v3

    move-object v11, v8

    move/from16 v8, v60

    move-object/from16 v15, v62

    goto/16 :goto_1fa

    .line 529
    :cond_564
    move v3, v7

    move/from16 v60, v8

    move-object v8, v11

    move-object/from16 v62, v15

    move/from16 v7, v26

    const/16 v53, 0x4

    move-object v15, v10

    move-object v10, v12

    .line 527
    :goto_570
    move v4, v7

    move-object v11, v8

    move-object v12, v10

    move-object v10, v15

    move/from16 v8, v60

    move-object/from16 v15, v62

    move v7, v3

    goto/16 :goto_1fa

    :cond_57b
    move-object v15, v10

    move-object v8, v11

    move-object v10, v12

    move/from16 v7, v26

    .line 723
    :goto_580
    move-object/from16 v43, v0

    move/from16 v26, v7

    move-object v11, v8

    move-object/from16 v47, v10

    move-object/from16 v48, v13

    move-object/from16 v44, v15

    move/from16 v15, v46

    move-object/from16 v5, v51

    move/from16 v7, v54

    move-object/from16 v8, v55

    move-object/from16 v4, v56

    move-object/from16 v10, v57

    move-object/from16 v12, v58

    move-object/from16 v13, v59

    const/16 v23, 0x1

    const/16 v24, 0x0

    goto/16 :goto_105

    :cond_5a1
    move-object/from16 v56, v4

    move/from16 v54, v7

    move-object/from16 v55, v8

    move-object/from16 v57, v10

    move-object v8, v11

    move-object/from16 v58, v12

    move-object/from16 v59, v13

    const-string/jumbo v0, "overlay"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f0

    .line 724
    const-string/jumbo v0, "requiredSystemPropertyName"

    invoke-interface {v2, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 726
    const-string/jumbo v0, "requiredSystemPropertyValue"

    invoke-interface {v2, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 728
    const-string/jumbo v0, "targetPackage"

    invoke-interface {v2, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 729
    const-string/jumbo v0, "isStatic"

    const/4 v4, 0x0

    invoke-interface {v2, v6, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v33

    .line 731
    const-string/jumbo v0, "priority"

    invoke-interface {v2, v6, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v34

    move/from16 v24, v4

    move-object v11, v8

    move/from16 v15, v46

    move-object/from16 v5, v51

    move/from16 v7, v54

    move-object/from16 v8, v55

    move-object/from16 v4, v56

    const/16 v23, 0x1

    goto/16 :goto_105

    .line 732
    :cond_5f0
    const/4 v4, 0x0

    const-string/jumbo v0, "uses-split"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_631

    .line 733
    if-eqz v31, :cond_60b

    .line 734
    const-string v0, "Only one <uses-split> permitted. Ignoring others."

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move/from16 v10, p4

    const/16 v23, 0x1

    goto/16 :goto_6fc

    .line 738
    :cond_60b
    invoke-interface {v2, v6, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 739
    if-nez v31, :cond_61a

    .line 740
    const-string v0, "<uses-split> tag requires \'android:name\' attribute"

    const/16 v2, -0x6c

    invoke-interface {v1, v2, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 739
    :cond_61a
    move/from16 v24, v4

    move-object v11, v8

    move/from16 v15, v46

    move-object/from16 v5, v51

    move/from16 v7, v54

    move-object/from16 v8, v55

    move-object/from16 v4, v56

    move-object/from16 v10, v57

    move-object/from16 v12, v58

    move-object/from16 v13, v59

    const/16 v23, 0x1

    goto/16 :goto_105

    .line 743
    :cond_631
    const-string/jumbo v0, "uses-sdk"

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e4

    .line 745
    const-string/jumbo v0, "minSdkVersion"

    invoke-interface {v2, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 747
    const-string/jumbo v0, "targetSdkVersion"

    invoke-interface {v2, v6, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 750
    nop

    .line 751
    nop

    .line 752
    nop

    .line 753
    nop

    .line 754
    nop

    .line 756
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_670

    .line 758
    :try_start_657
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_65b
    .catch Ljava/lang/NumberFormatException; {:try_start_657 .. :try_end_65b} :catch_662

    .line 759
    nop

    .line 763
    move v7, v0

    const/4 v3, 0x0

    const/4 v10, 0x1

    const/16 v23, 0x1

    goto :goto_676

    .line 760
    :catch_662
    move-exception v0

    .line 761
    nop

    .line 762
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v23, 0x1

    xor-int/lit8 v0, v0, 0x1

    move v10, v0

    move/from16 v7, v23

    goto :goto_676

    .line 756
    :cond_670
    const/16 v23, 0x1

    move v10, v4

    move/from16 v7, v23

    const/4 v3, 0x0

    .line 766
    :goto_676
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_689

    .line 768
    :try_start_67c
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15
    :try_end_680
    .catch Ljava/lang/NumberFormatException; {:try_start_67c .. :try_end_680} :catch_682

    .line 774
    const/4 v5, 0x0

    goto :goto_68c

    .line 769
    :catch_682
    move-exception v0

    .line 770
    nop

    .line 771
    if-nez v10, :cond_687

    .line 772
    move-object v3, v5

    .line 774
    :cond_687
    move v15, v4

    goto :goto_68c

    .line 776
    :cond_689
    nop

    .line 777
    move-object v5, v3

    move v15, v7

    .line 780
    :goto_68c
    nop

    .line 781
    move/from16 v10, p4

    and-int/lit16 v0, v10, 0x200

    if-eqz v0, :cond_696

    .line 782
    move/from16 v0, v23

    goto :goto_697

    .line 781
    :cond_696
    move v0, v4

    .line 785
    :goto_697
    sget-object v11, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v15, v5, v11, v1, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeTargetSdkVersion(ILjava/lang/String;[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 788
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_6a8

    .line 789
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 791
    :cond_6a8
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 793
    sget v0, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_VERSION:I

    sget-object v5, Landroid/content/pm/parsing/ApkLiteParseUtils;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v7, v3, v0, v5, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->computeMinSdkVersion(ILjava/lang/String;I[Ljava/lang/String;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 795
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_6c5

    .line 796
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 798
    :cond_6c5
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v35

    .line 799
    move/from16 v24, v4

    move-object v11, v8

    move/from16 v15, v46

    move-object/from16 v5, v51

    move/from16 v7, v54

    move-object/from16 v8, v55

    move-object/from16 v4, v56

    move-object/from16 v10, v57

    move-object/from16 v12, v58

    move-object/from16 v13, v59

    goto/16 :goto_105

    .line 743
    :cond_6e4
    move/from16 v10, p4

    const/16 v23, 0x1

    goto :goto_6fc

    .line 489
    :cond_6e9
    move-object/from16 v56, v4

    move/from16 v54, v7

    move-object/from16 v55, v8

    move-object/from16 v57, v10

    move-object v8, v11

    move-object/from16 v58, v12

    move-object/from16 v59, v13

    move/from16 v4, v24

    const/16 v23, 0x1

    move/from16 v10, p4

    .line 487
    :goto_6fc
    move/from16 v24, v4

    move-object v11, v8

    move/from16 v15, v46

    move-object/from16 v5, v51

    move/from16 v7, v54

    move-object/from16 v8, v55

    move-object/from16 v4, v56

    move-object/from16 v10, v57

    move-object/from16 v12, v58

    move-object/from16 v13, v59

    goto/16 :goto_105

    :cond_711
    move-object/from16 v56, v4

    move-object/from16 v55, v8

    move-object/from16 v57, v10

    move-object v8, v11

    move-object/from16 v58, v12

    move-object/from16 v59, v13

    move/from16 v10, p4

    .line 803
    :goto_71e
    and-int/lit16 v0, v10, 0x80

    if-nez v0, :cond_76e

    .line 804
    move-object/from16 v12, v58

    move-object/from16 v13, v59

    invoke-static {v12, v13}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->checkRequiredSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_769

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping target and overlay pair "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v10, v57

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": overlay ignored due to required system property: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    invoke-interface {v1, v0}, Landroid/content/pm/parsing/result/ParseInput;->skip(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 804
    :cond_769
    move-object/from16 v2, p1

    move-object/from16 v10, v57

    goto :goto_776

    .line 803
    :cond_76e
    move-object/from16 v2, p1

    move-object/from16 v10, v57

    move-object/from16 v12, v58

    move-object/from16 v13, v59

    .line 813
    :goto_776
    move-object/from16 v63, v8

    new-instance v8, Landroid/content/pm/parsing/ApkLite;

    move-object/from16 v4, v56

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    move-object/from16 v3, v51

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    move-object/from16 v21, p3

    move-object/from16 v51, v14

    move/from16 v24, v26

    move/from16 v26, v27

    move/from16 v27, v30

    move-object/from16 v14, v31

    move/from16 v23, v32

    move/from16 v31, v33

    move/from16 v32, v34

    move/from16 v15, v46

    move-object/from16 v20, v55

    move-object/from16 v42, v63

    move-object/from16 v46, v9

    move-object/from16 v30, v10

    move-object/from16 v33, v12

    move-object/from16 v34, v13

    move/from16 v12, v38

    move-object/from16 v13, v39

    move-object v10, v0

    move-object v9, v2

    move-object/from16 v39, v3

    move-object/from16 v38, v4

    invoke-direct/range {v8 .. v52}, Landroid/content/pm/parsing/ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/SigningDetails;ZZZZZZZZLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;IIILjava/util/Set;Ljava/util/Set;ZZLjava/util/List;[J[[Ljava/lang/String;ZLjava/util/List;[J[[Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;I)V

    invoke-interface {v1, v8}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_7c2
    .sparse-switch
        -0x6b7c15d8 -> :sswitch_298
        -0x5aaa6a59 -> :sswitch_28c
        -0x4140b4a3 -> :sswitch_281
        -0x3efb77a4 -> :sswitch_276
        -0x30341611 -> :sswitch_26b
        0x88b87d -> :sswitch_260
        0x9e824bb -> :sswitch_255
        0xa9d2283 -> :sswitch_24a
    .end sparse-switch

    :pswitch_data_7e4
    .packed-switch 0x0
        :pswitch_545
        :pswitch_530
        :pswitch_48f
        :pswitch_3de
        :pswitch_392
        :pswitch_33f
        :pswitch_315
        :pswitch_2c6
    .end packed-switch
.end method

.method private static blacklist parseApkLiteInner(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/ApkLite;",
            ">;"
        }
    .end annotation

    .line 362
    move-object/from16 v0, p2

    move/from16 v7, p4

    if-eqz v0, :cond_9

    move-object/from16 v8, p3

    goto :goto_e

    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    .line 364
    :goto_e
    nop

    .line 365
    nop

    .line 368
    const/4 v1, 0x0

    const-string v9, "Failed to parse "

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 369
    move-object/from16 v3, p3

    :try_start_18
    invoke-static {v0, v3, v1, v2}, Landroid/content/res/ApkAssets;->loadFromFd(Ljava/io/FileDescriptor;Ljava/lang/String;ILandroid/content/res/loader/AssetsProvider;)Landroid/content/res/ApkAssets;

    move-result-object v0

    move-object v10, v0

    goto :goto_23

    .line 370
    :cond_1e
    invoke-static {v8}, Landroid/content/res/ApkAssets;->loadFromPath(Ljava/lang/String;)Landroid/content/res/ApkAssets;

    move-result-object v0
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_94
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_22} :catch_91
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_22} :catch_91
    .catchall {:try_start_18 .. :try_end_22} :catchall_8d

    move-object v10, v0

    :goto_23
    nop

    .line 374
    nop

    .line 376
    :try_start_25
    const-string v0, "AndroidManifest.xml"

    invoke-virtual {v10, v0}, Landroid/content/res/ApkAssets;->openXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25 .. :try_end_2b} :catch_8b
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2b} :catch_8b
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_2b} :catch_8b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_e9

    .line 379
    and-int/lit8 v0, v7, 0x20

    if-eqz v0, :cond_73

    .line 380
    and-int/lit8 v0, v7, 0x10

    if-eqz v0, :cond_34

    const/4 v1, 0x1

    :cond_34
    move v3, v1

    .line 381
    :try_start_35
    const-string v0, "collectCertificates"

    const-wide/32 v12, 0x40000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_3d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_35 .. :try_end_3d} :catch_88
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3d} :catch_88
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_3d} :catch_88
    .catchall {:try_start_35 .. :try_end_3d} :catchall_84

    .line 383
    nop

    .line 385
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 384
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->getSigningDetails(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZLandroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 388
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 389
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2
    :try_end_55
    .catchall {:try_start_3e .. :try_end_55} :catchall_6e

    .line 393
    :try_start_55
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_58
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_58} :catch_88
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_88
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_58} :catch_88
    .catchall {:try_start_55 .. :try_end_58} :catchall_84

    .line 405
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    if-eqz v10, :cond_62

    .line 408
    :try_start_5d
    invoke-virtual {v10}, Landroid/content/res/ApkAssets;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    .line 410
    goto :goto_62

    .line 409
    :catchall_61
    move-exception v0

    .line 389
    :cond_62
    :goto_62
    return-object v2

    .line 391
    :cond_63
    :try_start_63
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SigningDetails;
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_6e

    .line 393
    :try_start_69
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 394
    nop

    .line 395
    goto :goto_75

    .line 393
    :catchall_6e
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 394
    throw v0

    .line 396
    :cond_73
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    .line 399
    :goto_75
    invoke-static {p0, v8, v11, v0, v7}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;Landroid/content/res/XmlResourceParser;Landroid/content/pm/SigningDetails;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_79
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_69 .. :try_end_79} :catch_88
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_79} :catch_88
    .catch Ljava/lang/RuntimeException; {:try_start_69 .. :try_end_79} :catch_88
    .catchall {:try_start_69 .. :try_end_79} :catchall_84

    .line 405
    invoke-static {v11}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    if-eqz v10, :cond_83

    .line 408
    :try_start_7e
    invoke-virtual {v10}, Landroid/content/res/ApkAssets;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    .line 410
    goto :goto_83

    .line 409
    :catchall_82
    move-exception v0

    .line 399
    :cond_83
    :goto_83
    return-object v1

    .line 405
    :catchall_84
    move-exception v0

    move-object v1, v0

    move-object v2, v11

    goto :goto_eb

    .line 400
    :catch_88
    move-exception v0

    move-object v2, v11

    goto :goto_b1

    :catch_8b
    move-exception v0

    goto :goto_b1

    .line 405
    :catchall_8d
    move-exception v0

    move-object v1, v0

    move-object v10, v2

    goto :goto_eb

    .line 400
    :catch_91
    move-exception v0

    move-object v10, v2

    goto :goto_b1

    .line 371
    :catch_94
    move-exception v0

    .line 372
    :try_start_95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x64

    invoke-interface {p0, v4, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_95 .. :try_end_ac} :catch_91
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_ac} :catch_91
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_ac} :catch_91
    .catchall {:try_start_95 .. :try_end_ac} :catchall_8d

    .line 405
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    nop

    .line 372
    return-object v0

    .line 401
    :goto_b1
    :try_start_b1
    const-string v3, "ApkLiteParseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, -0x66

    invoke-interface {p0, v4, v3, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;Ljava/lang/Exception;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1
    :try_end_de
    .catchall {:try_start_b1 .. :try_end_de} :catchall_e9

    .line 405
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    if-eqz v10, :cond_e8

    .line 408
    :try_start_e3
    invoke-virtual {v10}, Landroid/content/res/ApkAssets;->close()V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_e7

    .line 410
    goto :goto_e8

    .line 409
    :catchall_e7
    move-exception v0

    .line 402
    :cond_e8
    :goto_e8
    return-object v1

    .line 405
    :catchall_e9
    move-exception v0

    move-object v1, v0

    :goto_eb
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 406
    if-eqz v10, :cond_f5

    .line 408
    :try_start_f0
    invoke-virtual {v10}, Landroid/content/res/ApkAssets;->close()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_f4

    .line 410
    goto :goto_f5

    .line 409
    :catchall_f4
    move-exception v0

    .line 413
    :cond_f5
    :goto_f5
    throw v1
.end method

.method public static blacklist parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 183
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 184
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 185
    const/16 v1, -0x64

    const-string v2, "No packages found in split"

    invoke-interface {v0, v1, v2}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 189
    :cond_17
    array-length v3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v4, :cond_2b

    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 190
    aget-object v2, v2, v5

    invoke-static {v0, v2, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 193
    :cond_2b
    nop

    .line 194
    nop

    .line 195
    nop

    .line 197
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 198
    const-string/jumbo v4, "parseApkLite"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 200
    :try_start_3c
    array-length v4, v2

    const/4 v8, 0x0

    move v9, v5

    move-object v10, v8

    :goto_40
    if-ge v5, v4, :cond_132

    aget-object v11, v2, v5

    .line 201
    invoke-static {v11}, Landroid/content/pm/parsing/ApkLiteParseUtils;->isApkFile(Ljava/io/File;)Z

    move-result v12

    if-nez v12, :cond_4e

    .line 202
    move-wide/from16 v16, v6

    goto/16 :goto_12c

    .line 205
    :cond_4e
    invoke-static {v0, v11, v1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v12

    .line 206
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v13

    if-eqz v13, :cond_60

    .line 207
    invoke-interface {v0, v12}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_147

    .line 240
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 207
    return-object v0

    .line 210
    :cond_60
    :try_start_60
    invoke-interface {v12}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/parsing/ApkLite;

    .line 213
    const/16 v13, -0x65

    if-nez v10, :cond_75

    .line 214
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 215
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v9

    move-wide/from16 v16, v6

    goto :goto_e9

    .line 217
    :cond_75
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14
    :try_end_7d
    .catchall {:try_start_60 .. :try_end_7d} :catchall_147

    const-string v15, "; expected "

    move-wide/from16 v16, v6

    const-string v6, " in "

    if-nez v14, :cond_b4

    .line 218
    :try_start_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 219
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-interface {v0, v13, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_b0
    .catchall {:try_start_85 .. :try_end_b0} :catchall_145

    .line 240
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 218
    return-object v0

    .line 222
    :cond_b4
    :try_start_b4
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v7

    if-eq v9, v7, :cond_e9

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 224
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-interface {v0, v13, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_e5
    .catchall {:try_start_b4 .. :try_end_e5} :catchall_145

    .line 240
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 223
    return-object v0

    .line 230
    :cond_e9
    :goto_e9
    :try_start_e9
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/parsing/ApkLite;

    .line 231
    if-eqz v6, :cond_12c

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Split name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 233
    invoke-virtual {v12}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " defined more than once; most recent was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previous was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 235
    invoke-virtual {v6}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-interface {v0, v13, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_128
    .catchall {:try_start_e9 .. :try_end_128} :catchall_145

    .line 240
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 232
    return-object v0

    .line 200
    :cond_12c
    :goto_12c
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v6, v16

    goto/16 :goto_40

    .line 238
    :cond_132
    move-wide/from16 v16, v6

    :try_start_134
    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/parsing/ApkLite;
    :try_end_13a
    .catchall {:try_start_134 .. :try_end_13a} :catchall_145

    .line 240
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 241
    nop

    .line 242
    move-object/from16 v2, p1

    invoke-static {v0, v2, v1, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    return-object v0

    .line 240
    :catchall_145
    move-exception v0

    goto :goto_14a

    :catchall_147
    move-exception v0

    move-wide/from16 v16, v6

    :goto_14a
    invoke-static/range {v16 .. v17}, Landroid/os/Trace;->traceEnd(J)V

    .line 241
    throw v0
.end method

.method public static blacklist parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 129
    move-object/from16 v0, p0

    const-string/jumbo v1, "parseApkLite"

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 131
    :try_start_b
    invoke-static/range {p0 .. p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 133
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_46

    .line 145
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 133
    return-object v0

    .line 136
    :cond_1d
    :try_start_1d
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/pm/parsing/ApkLite;

    .line 137
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 138
    new-instance v4, Landroid/content/pm/parsing/PackageLite;

    .line 139
    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v16}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 138
    invoke-interface {v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_42
    .catchall {:try_start_1d .. :try_end_42} :catchall_46

    .line 145
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 138
    return-object v0

    .line 145
    :catchall_46
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 146
    throw v0
.end method

.method public static blacklist parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/FileDescriptor;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 154
    move-object/from16 v0, p0

    const-string/jumbo v1, "parseApkLite"

    const-wide/32 v2, 0x40000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 156
    :try_start_b
    invoke-static/range {p0 .. p3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 158
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 159
    invoke-interface {v0, v1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_45

    .line 171
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 159
    return-object v0

    .line 162
    :cond_1d
    :try_start_1d
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/content/pm/parsing/ApkLite;

    .line 163
    nop

    .line 164
    new-instance v4, Landroid/content/pm/parsing/PackageLite;

    .line 165
    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual {v7}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p2

    invoke-direct/range {v4 .. v16}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 164
    invoke-interface {v0, v4}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_45

    .line 171
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 164
    return-object v0

    .line 171
    :catchall_45
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    throw v0
.end method

.method public static blacklist parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/io/File;",
            "I)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/content/pm/parsing/PackageLite;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 118
    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseClusterPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 120
    :cond_b
    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseMonolithicPackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parsePackageSplitNames(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 903
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_b

    if-eq v0, v2, :cond_b

    goto :goto_0

    .line 907
    :cond_b
    const/16 v3, -0x6c

    if-eq v0, v1, :cond_16

    .line 908
    const-string p1, "No start tag found"

    invoke-interface {p0, v3, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 911
    :cond_16
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "manifest"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 912
    const-string p1, "No <manifest> tag"

    invoke-interface {p0, v3, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 916
    :cond_2a
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    const-string v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, -0x6a

    if-nez v3, :cond_62

    .line 918
    invoke-static {p0, v0, v2, v2}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 920
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 921
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid manifest package: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 922
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 921
    invoke-interface {p0, v4, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 926
    :cond_62
    const-string/jumbo v2, "split"

    invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 927
    if-eqz p1, :cond_99

    .line 928
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_72

    .line 929
    goto :goto_9a

    .line 931
    :cond_72
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 933
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 934
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid manifest split: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 935
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 934
    invoke-interface {p0, v4, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 940
    :cond_99
    move-object v1, p1

    :goto_9a
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 941
    if-eqz v1, :cond_a4

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 940
    :cond_a4
    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseRequiredSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Landroid/content/res/XmlResourceParser;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Landroid/util/Pair<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 949
    nop

    .line 950
    nop

    .line 951
    const-string/jumbo v0, "requiredSplitTypes"

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {p1, v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_28

    .line 953
    invoke-static {p0, v0}, Landroid/content/pm/parsing/ApkLiteParseUtils;->separateAndValidateSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 954
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 955
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 957
    :cond_21
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_29

    .line 952
    :cond_28
    move-object v0, v3

    .line 960
    :goto_29
    const-string/jumbo v2, "splitTypes"

    invoke-interface {p1, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 961
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 962
    invoke-static {p0, p1}, Landroid/content/pm/parsing/ApkLiteParseUtils;->separateAndValidateSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 963
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 964
    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(Landroid/content/pm/parsing/result/ParseResult;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 966
    :cond_45
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/util/Set;

    .line 969
    :cond_4c
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseVerifier(Landroid/util/AttributeSet;)Landroid/content/pm/VerifierInfo;
    .registers 5

    .line 993
    const-string/jumbo v0, "name"

    const-string v1, "http://schemas.android.com/apk/res/android"

    invoke-interface {p0, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 994
    const-string/jumbo v2, "publicKey"

    invoke-interface {p0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 996
    const/4 v1, 0x0

    const-string v2, "ApkLiteParseUtils"

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_3f

    .line 1001
    :cond_1c
    invoke-static {p0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    .line 1002
    if-nez p0, :cond_39

    .line 1003
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse verifier public key for "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return-object v1

    .line 1007
    :cond_39
    new-instance v1, Landroid/content/pm/VerifierInfo;

    invoke-direct {v1, v0, p0}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v1

    .line 997
    :cond_3f
    :goto_3f
    const-string/jumbo p0, "verifier package name was null; skipping"

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-object v1
.end method

.method private static blacklist separateAndValidateSplitTypes(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 974
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 975
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_64

    aget-object v4, p1, v3

    .line 976
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 979
    const/4 v5, 0x1

    invoke-static {p0, v4, v2, v5}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;ZZ)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 981
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v6

    if-eqz v6, :cond_43

    .line 982
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid manifest split types: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 983
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 982
    const/16 v0, -0x6c

    invoke-interface {p0, v0, p1}, Landroid/content/pm/parsing/result/ParseInput;->error(ILjava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 985
    :cond_43
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 986
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was defined multiple times"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ApkLiteParseUtils"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 989
    :cond_64
    invoke-interface {p0, v0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;
    .registers 3

    .line 329
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {p0}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string p0, "base"

    goto :goto_24

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "split_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 331
    :goto_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
