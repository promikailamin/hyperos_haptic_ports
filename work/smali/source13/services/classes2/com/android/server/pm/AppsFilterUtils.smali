.class final Lcom/android/server/pm/AppsFilterUtils;
.super Ljava/lang/Object;
.source "AppsFilterUtils.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canQueryAsInstaller(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 6
    .param p0, "querying"    # Lcom/android/server/pm/pkg/PackageStateInternal;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 71
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    .line 72
    .local v0, "installSource":Lcom/android/server/pm/InstallSource;
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 73
    return v2

    .line 75
    :cond_12
    iget-boolean v1, v0, Lcom/android/server/pm/InstallSource;->isInitiatingPackageUninstalled:Z

    if-nez v1, :cond_23

    .line 76
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 77
    return v2

    .line 79
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method public static canQueryViaComponents(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArrayList;)Z
    .registers 7
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/utils/WatchedArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 49
    .local p2, "protectedBroadcasts":Lcom/android/server/utils/WatchedArrayList;, "Lcom/android/server/utils/WatchedArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_27

    .line 50
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 51
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2, p1, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 52
    return v1

    .line 54
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_26
    goto :goto_13

    .line 56
    :cond_27
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 57
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesProviders()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/pm/AppsFilterUtils;->matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 58
    return v1

    .line 60
    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method public static canQueryViaPackage(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 4
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 65
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 66
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getQueriesPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 65
    :goto_1b
    return v0
.end method

.method public static canQueryViaUsesLibrary(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 8
    .param p0, "querying"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 84
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 85
    return v1

    .line 87
    :cond_c
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v0

    .line 88
    .local v0, "libNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_15
    if-ge v2, v3, :cond_37

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 90
    .local v4, "libName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 91
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    goto :goto_35

    .line 88
    .end local v4    # "libName":Ljava/lang/String;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 92
    .restart local v4    # "libName":Ljava/lang/String;
    :cond_35
    :goto_35
    const/4 v1, 0x1

    return v1

    .line 95
    .end local v2    # "i":I
    .end local v3    # "size":I
    .end local v4    # "libName":Ljava/lang/String;
    :cond_37
    return v1
.end method

.method private static matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArrayList;)Z
    .registers 7
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">;",
            "Lcom/android/server/utils/WatchedArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 142
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/pm/pkg/component/ParsedMainComponent;>;"
    .local p2, "protectedBroadcasts":Lcom/android/server/utils/WatchedArrayList;, "Lcom/android/server/utils/WatchedArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1f

    .line 143
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/pkg/component/ParsedMainComponent;

    .line 144
    .local v2, "component":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    invoke-interface {v2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v3

    if-nez v3, :cond_15

    .line 145
    goto :goto_1c

    .line 147
    :cond_15
    invoke-static {p0, v2, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyFilter(Landroid/content/Intent;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 148
    return v1

    .line 142
    .end local v2    # "component":Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 151
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesAnyFilter(Landroid/content/Intent;Lcom/android/server/pm/pkg/component/ParsedComponent;Lcom/android/server/utils/WatchedArrayList;)Z
    .registers 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "component"    # Lcom/android/server/pm/pkg/component/ParsedComponent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/server/pm/pkg/component/ParsedComponent;",
            "Lcom/android/server/utils/WatchedArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 156
    .local p2, "protectedBroadcasts":Lcom/android/server/utils/WatchedArrayList;, "Lcom/android/server/utils/WatchedArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/pkg/component/ParsedIntentInfo;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_20

    .line 158
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 159
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0, v3, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 160
    return v2

    .line 157
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 163
    .end local v1    # "i":I
    :cond_20
    const/4 v1, 0x0

    return v1
.end method

.method private static matchesIntentFilter(Landroid/content/Intent;Landroid/content/IntentFilter;Lcom/android/server/utils/WatchedArrayList;)Z
    .registers 12
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "intentFilter"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/IntentFilter;",
            "Lcom/android/server/utils/WatchedArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 168
    .local p2, "protectedBroadcasts":Lcom/android/server/utils/WatchedArrayList;, "Lcom/android/server/utils/WatchedArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v5

    .line 170
    if-eqz p2, :cond_1b

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArrayList;->untrackedStorage()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    move-object v8, v0

    .line 168
    const-string v6, "AppsFilter"

    const/4 v7, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_29

    const/4 v0, 0x1

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0
.end method

.method private static matchesPackage(Landroid/content/Intent;Lcom/android/server/pm/parsing/pkg/AndroidPackage;Lcom/android/server/utils/WatchedArrayList;)Z
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Lcom/android/server/utils/WatchedArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 121
    .local p2, "protectedBroadcasts":Lcom/android/server/utils/WatchedArrayList;, "Lcom/android/server/utils/WatchedArrayList<Ljava/lang/String;>;"
    nop

    .line 122
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getServices()Ljava/util/List;

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 123
    return v2

    .line 125
    :cond_e
    nop

    .line 126
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getActivities()Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 127
    return v2

    .line 129
    :cond_1a
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 130
    return v2

    .line 132
    :cond_25
    nop

    .line 133
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    .line 132
    invoke-static {p0, v0, v1}, Lcom/android/server/pm/AppsFilterUtils;->matchesAnyComponents(Landroid/content/Intent;Ljava/util/List;Lcom/android/server/utils/WatchedArrayList;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 134
    return v2

    .line 136
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private static matchesProviders(Ljava/util/Set;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 9
    .param p1, "potentialTarget"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")Z"
        }
    .end annotation

    .line 100
    .local p0, "queriesAuthorities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "p":I
    :goto_a
    const/4 v2, 0x0

    if-ltz v0, :cond_45

    .line 101
    invoke-interface {p1}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProviders()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedProvider;

    .line 102
    .local v3, "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProvider;->isExported()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 103
    goto :goto_42

    .line 105
    :cond_1e
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_25

    .line 106
    goto :goto_42

    .line 108
    :cond_25
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-direct {v4, v5, v6, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v2, v4

    .line 110
    .local v2, "authorities":Ljava/util/StringTokenizer;
    :cond_31
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 111
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 112
    return v1

    .line 100
    .end local v2    # "authorities":Ljava/util/StringTokenizer;
    .end local v3    # "provider":Lcom/android/server/pm/pkg/component/ParsedProvider;
    :cond_42
    :goto_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 116
    .end local v0    # "p":I
    :cond_45
    return v2
.end method

.method public static requestsQueryAllPackages(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 3
    .param p0, "pkg"    # Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 42
    invoke-interface {p0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
