.class public Lcom/miui/internal/url/UrlResolver;
.super Ljava/lang/Object;
.source "UrlResolver.java"


# static fields
.field private static blacklist mResolveIntent:Ljava/lang/reflect/Method;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/internal/url/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static blacklist checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 33
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/miui/internal/url/UrlResolver;->checkMiuiIntent(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist checkMiuiIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pms"    # Ljava/lang/Object;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 29
    .local p5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/miui/internal/url/UrlResolver;->checkMiuiIntent(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist checkMiuiIntent(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 29
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fromWebView"    # Z
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "pms"    # Ljava/lang/Object;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "flags"    # I
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/Object;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .line 40
    .local p7, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const/4 v4, 0x0

    if-eqz p1, :cond_f

    .line 42
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .end local p7    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v0, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    goto :goto_11

    .line 40
    .end local v0    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local p7    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_f
    move-object/from16 v5, p7

    .line 45
    .end local p7    # "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v5, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 47
    .local v6, "matchedSystemApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_19
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x1

    if-ge v7, v0, :cond_7d

    .line 48
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 49
    .local v9, "r":Landroid/content/pm/ResolveInfo;
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.android.browser"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 50
    const-string v10, "com.mi.globalbrowser"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 51
    goto :goto_7a

    .line 53
    :cond_40
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/url/UrlResolverHelper;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 55
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 59
    :cond_4e
    :try_start_4e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 60
    .local v10, "token":J
    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 61
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4e .. :try_end_5d} :catch_78

    .line 64
    .end local v10    # "token":J
    nop

    .line 65
    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_7a

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_7a

    .line 66
    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v10, "com.android.chrome"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 67
    goto :goto_7a

    .line 70
    :cond_74
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 62
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_78
    move-exception v0

    .line 63
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .line 47
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "r":Landroid/content/pm/ResolveInfo;
    :cond_7a
    :goto_7a
    add-int/lit8 v7, v7, 0x1

    goto :goto_19

    .line 75
    .end local v7    # "i":I
    :cond_7d
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_8a

    .line 76
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    .line 77
    :cond_8a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v7, 0x0

    if-le v0, v8, :cond_92

    .line 78
    return-object v7

    .line 81
    :cond_92
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 82
    .local v9, "uri":Landroid/net/Uri;
    if-nez v9, :cond_99

    .line 84
    return-object v7

    .line 86
    :cond_99
    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 87
    .local v10, "host":Ljava/lang/String;
    if-nez v10, :cond_a0

    .line 89
    return-object v7

    .line 91
    :cond_a0
    invoke-static {v10}, Lcom/miui/internal/url/UrlResolverHelper;->isMiHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 93
    return-object v7

    .line 97
    :cond_a7
    invoke-static {v9}, Lcom/miui/internal/url/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 98
    .local v11, "fallback":Ljava/lang/String;
    if-eqz v11, :cond_134

    .line 99
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, "fallbackUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 101
    .local v12, "scheme":Ljava/lang/String;
    const/4 v13, 0x0

    .line 103
    .local v13, "browserFallback":Z
    invoke-static {v12}, Lcom/miui/internal/url/UrlResolverHelper;->isBrowserFallbackScheme(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c4

    .line 104
    const/4 v13, 0x1

    .line 105
    invoke-static {v11}, Lcom/miui/internal/url/UrlResolverHelper;->getBrowserFallbackUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move v14, v13

    move-object v13, v0

    goto :goto_c6

    .line 103
    :cond_c4
    move v14, v13

    move-object v13, v0

    .line 107
    .end local v0    # "fallbackUri":Landroid/net/Uri;
    .local v13, "fallbackUri":Landroid/net/Uri;
    .local v14, "browserFallback":Z
    :goto_c6
    invoke-virtual {v3, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    if-eqz p1, :cond_db

    .line 110
    if-eqz v14, :cond_d6

    .line 112
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    return-object v0

    .line 116
    :cond_d6
    invoke-static {v1, v2, v3}, Lcom/miui/internal/url/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    .line 124
    :cond_db
    :try_start_db
    sget-object v0, Lcom/miui/internal/url/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    const/16 v16, 0x2

    const/4 v7, 0x4

    if-nez v0, :cond_10a

    .line 125
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v15, "com.android.server.pm.PackageManagerService"

    invoke-virtual {v0, v15}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 126
    .local v0, "clazz":Ljava/lang/Class;
    const-string v15, "resolveIntent"

    new-array v8, v7, [Ljava/lang/Class;

    const-class v19, Landroid/content/Intent;

    aput-object v19, v8, v4

    const-class v19, Ljava/lang/String;

    const/16 v18, 0x1

    aput-object v19, v8, v18

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v19, v8, v16

    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x3

    aput-object v19, v8, v17

    invoke-virtual {v0, v15, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    sput-object v8, Lcom/miui/internal/url/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    .line 128
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_10a
    sget-object v0, Lcom/miui/internal/url/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v4

    const/4 v4, 0x1

    aput-object p5, v7, v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v16

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v7, v8
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_120} :catch_12c

    move-object/from16 v4, p3

    :try_start_122
    invoke-virtual {v0, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_128} :catch_12a

    .line 132
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    nop

    .line 133
    return-object v0

    .line 129
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_12a
    move-exception v0

    goto :goto_12f

    :catch_12c
    move-exception v0

    move-object/from16 v4, p3

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    :goto_12f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const/4 v7, 0x0

    return-object v7

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v12    # "scheme":Ljava/lang/String;
    .end local v13    # "fallbackUri":Landroid/net/Uri;
    .end local v14    # "browserFallback":Z
    :cond_134
    move-object/from16 v4, p3

    return-object v7
.end method
