.class public final Lcom/android/net/module/util/LinkPropertiesUtils;
.super Ljava/lang/Object;
.source "LinkPropertiesUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;,
        Lcom/android/net/module/util/LinkPropertiesUtils$CompareOrUpdateResult;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist compareAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "Landroid/net/LinkProperties;",
            ")",
            "Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 145
    new-instance v0, Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p0

    goto :goto_b

    :cond_a
    move-object p0, v1

    .line 146
    :goto_b
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v1

    :cond_11
    invoke-direct {v0, p0, v1}, Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 145
    return-object v0
.end method

.method public static blacklist compareAllAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            "Landroid/net/LinkProperties;",
            ")",
            "Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 159
    const/4 v0, 0x0

    if-eqz p0, :cond_11

    .line 160
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object p0

    new-instance v1, Lcom/android/net/module/util/LinkPropertiesUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/net/module/util/LinkPropertiesUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v1}, Lcom/android/net/module/util/CollectionUtils;->map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_12

    .line 161
    :cond_11
    move-object p0, v0

    .line 162
    :goto_12
    if-eqz p1, :cond_22

    .line 163
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/android/net/module/util/LinkPropertiesUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/net/module/util/LinkPropertiesUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcom/android/net/module/util/CollectionUtils;->map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_23

    .line 164
    :cond_22
    nop

    .line 168
    :goto_23
    new-instance p1, Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;

    invoke-direct {p1, p0, v0}, Lcom/android/net/module/util/LinkPropertiesUtils$CompareResult;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    return-object p1
.end method

.method public static blacklist isIdenticalAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 4

    .line 198
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object p0

    .line 199
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object p1

    .line 200
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 201
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    .line 200
    :goto_18
    return p0
.end method

.method public static blacklist isIdenticalAllLinkAddresses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 5

    .line 181
    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    .line 182
    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_22

    if-nez p1, :cond_a

    goto :goto_22

    .line 183
    :cond_a
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object p0

    .line 184
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object p1

    .line 185
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1d

    return v0

    .line 186
    :cond_1d
    invoke-interface {p0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 182
    :cond_22
    :goto_22
    return v0
.end method

.method public static blacklist isIdenticalDnses(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 5

    .line 213
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    .line 216
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object p0

    .line 217
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object p1

    .line 218
    const/4 v2, 0x0

    if-nez p0, :cond_16

    .line 219
    if-eqz p1, :cond_1d

    return v2

    .line 221
    :cond_16
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    return v2

    .line 223
    :cond_1d
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p0, p1, :cond_2c

    .line 224
    invoke-interface {v0, v1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    goto :goto_2d

    :cond_2c
    nop

    .line 223
    :goto_2d
    return v2
.end method

.method public static blacklist isIdenticalHttpProxy(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 2

    .line 236
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isIdenticalInterfaceName(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 2

    .line 248
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static blacklist isIdenticalRoutes(Landroid/net/LinkProperties;Landroid/net/LinkProperties;)Z
    .registers 4

    .line 260
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p0

    .line 261
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p1

    .line 262
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ne v0, v1, :cond_17

    .line 263
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    .line 262
    :goto_18
    return p0
.end method
