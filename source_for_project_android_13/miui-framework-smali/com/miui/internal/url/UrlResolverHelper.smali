.class public Lcom/miui/internal/url/UrlResolverHelper;
.super Ljava/lang/Object;
.source "UrlResolverHelper.java"


# static fields
.field private static final blacklist BROWSER_HTTPS_SCHEME:Ljava/lang/String; = "mihttps"

.field private static final blacklist BROWSER_HTTP_SCHEME:Ljava/lang/String; = "mihttp"

.field private static final blacklist BROWSER_SCHEME_PREFIX:Ljava/lang/String; = "mi"

.field private static final blacklist FALLBACK_PARAMETER:Ljava/lang/String; = "mifb"

.field private static final blacklist HTTPS_SCHEME:Ljava/lang/String; = "https"

.field private static final blacklist HTTP_SCHEME:Ljava/lang/String; = "http"

.field private static final blacklist MI_LIST:[Ljava/lang/String;

.field private static final blacklist WHITE_LIST:[Ljava/lang/String;

.field private static final blacklist WHITE_PACKAGE_LIST:[Ljava/lang/String;

.field private static blacklist sBrowserFallbackSchemeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sFallbackSchemeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 28

    .line 22
    const-string v0, ".xiaomi.com"

    const-string v1, ".mi.com"

    const-string v2, ".miui.com"

    const-string v3, ".mipay.com"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/url/UrlResolverHelper;->MI_LIST:[Ljava/lang/String;

    .line 29
    const-string v0, ".duokan.com"

    const-string v1, ".duokanbox.com"

    const-string v2, ".mijiayoupin.com"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/url/UrlResolverHelper;->WHITE_LIST:[Ljava/lang/String;

    .line 36
    const-string v1, "com.xiaomi.channel"

    const-string v2, "com.duokan.reader"

    const-string v3, "com.duokan.hdreader"

    const-string v4, "com.duokan.fiction"

    const-string v5, "com.duokan.free"

    const-string v6, "com.xiaomi.router"

    const-string v7, "com.xiaomi.smarthome"

    const-string v8, "com.xiaomi.o2o"

    const-string v9, "com.xiaomi.shop"

    const-string v10, "com.xiaomi.jr"

    const-string v11, "com.xiaomi.jr.security"

    const-string v12, "com.xiaomi.mifisecurity"

    const-string v13, "com.xiaomi.loan"

    const-string v14, "com.xiaomi.loanx"

    const-string v15, "com.mi.credit.in"

    const-string v16, "com.mi.credit.id"

    const-string v17, "com.miui.miuibbs"

    const-string v18, "com.wali.live"

    const-string v19, "com.mi.live"

    const-string v20, "com.xiaomi.ab"

    const-string v21, "com.mfashiongallery.emag"

    const-string v22, "com.xiaomi.pass"

    const-string v23, "com.xiaomi.youpin"

    const-string v24, "com.mi.liveassistant"

    const-string v25, "com.xiangkan.android"

    const-string v26, "com.xiaomi.gamecenter"

    const-string v27, "com.xiaomi.vipaccount"

    filled-new-array/range {v1 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/url/UrlResolverHelper;->WHITE_PACKAGE_LIST:[Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/internal/url/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    .line 69
    const-string v1, "mihttp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/miui/internal/url/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    const-string v1, "mihttps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/internal/url/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    .line 76
    const-string v1, "http"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/miui/internal/url/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/miui/internal/url/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    sget-object v1, Lcom/miui/internal/url/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getBrowserFallbackUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2
    .param p0, "fallback"    # Ljava/lang/String;

    .line 125
    const-string v0, "mi"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getFallbackParameter(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/internal/url/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "fallback":Ljava/lang/String;
    if-eqz v0, :cond_19

    .line 131
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 132
    .local v2, "fallbackUri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, "scheme":Ljava/lang/String;
    sget-object v4, Lcom/miui/internal/url/UrlResolverHelper;->sFallbackSchemeSet:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 134
    return-object v0

    .line 137
    .end local v2    # "fallbackUri":Landroid/net/Uri;
    .end local v3    # "scheme":Ljava/lang/String;
    :cond_19
    return-object v1
.end method

.method private static blacklist getFallbackParameter(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "parameterSuffix"    # I
    .param p2, "lastFallbackParameter"    # Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mifb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p1, :cond_10

    .line 143
    const-string v1, ""

    goto :goto_14

    :cond_10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "fallbackParameter":Ljava/lang/String;
    if-eqz v0, :cond_29

    .line 145
    add-int/lit8 p1, p1, 0x1

    .line 146
    invoke-static {p0, p1, v0}, Lcom/miui/internal/url/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 148
    :cond_29
    return-object p2
.end method

.method public static blacklist isBrowserFallbackScheme(Ljava/lang/String;)Z
    .registers 2
    .param p0, "scheme"    # Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/miui/internal/url/UrlResolverHelper;->sBrowserFallbackSchemeSet:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMiHost(Ljava/lang/String;)Z
    .registers 8
    .param p0, "host"    # Ljava/lang/String;

    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 96
    return v1

    .line 98
    :cond_8
    sget-object v0, Lcom/miui/internal/url/UrlResolverHelper;->MI_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_c
    const/4 v4, 0x1

    if-ge v3, v2, :cond_1b

    aget-object v5, v0, v3

    .line 99
    .local v5, "h":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 100
    return v4

    .line 98
    .end local v5    # "h":Ljava/lang/String;
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 103
    :cond_1b
    sget-object v0, Lcom/miui/internal/url/UrlResolverHelper;->WHITE_LIST:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_1f
    if-ge v3, v2, :cond_2d

    aget-object v5, v0, v3

    .line 104
    .restart local v5    # "h":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 105
    return v4

    .line 103
    .end local v5    # "h":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 108
    :cond_2d
    return v1
.end method

.method public static blacklist isMiUrl(Ljava/lang/String;)Z
    .registers 5
    .param p0, "url"    # Ljava/lang/String;

    .line 82
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 83
    return v1

    .line 86
    :cond_8
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 87
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 88
    return v1

    .line 91
    :cond_25
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/internal/url/UrlResolverHelper;->isMiHost(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist isWhiteListPackage(Ljava/lang/String;)Z
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/miui/internal/url/UrlResolverHelper;->WHITE_PACKAGE_LIST:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    .line 113
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 114
    const/4 v0, 0x1

    return v0

    .line 112
    .end local v4    # "name":Ljava/lang/String;
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 117
    :cond_14
    return v2
.end method
