.class public Lcom/android/internal/app/ChooserActivityStubImpl;
.super Lcom/android/internal/app/ChooserActivityStub;
.source "ChooserActivityStubImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ChooserActivityInjector"

.field public static blacklist mShowMoreResolverButton:Z

.field private static final blacklist sMiAppsInterceptedResolver:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/app/ChooserActivityStubImpl;->sMiAppsInterceptedResolver:Ljava/util/HashSet;

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/app/ChooserActivityStubImpl;->mShowMoreResolverButton:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivityStub;-><init>()V

    return-void
.end method

.method private static blacklist addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ResolveInfo;",
            ")V"
        }
    .end annotation

    .line 168
    .local p0, "into":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    const/4 v0, 0x0

    .line 169
    .local v0, "found":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 171
    .local v2, "componentInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 172
    .local v3, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->name:Landroid/content/ComponentName;

    .line 173
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 174
    const/4 v0, 0x1

    .line 175
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->add(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 176
    goto :goto_35

    .line 178
    .end local v2    # "componentInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_34
    goto :goto_5

    .line 179
    :cond_35
    :goto_35
    if-nez v0, :cond_4c

    .line 180
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, p2}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    :cond_4c
    return-void
.end method

.method private static blacklist createSortedResloveListByResolverController(Ljava/lang/Object;Landroid/content/Intent;)Ljava/util/List;
    .registers 12
    .param p0, "controller"    # Ljava/lang/Object;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 99
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getResolversForIntent"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/util/List;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 100
    .local v0, "getResolvers":Ljava/lang/reflect/Method;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    new-array v2, v2, [Ljava/lang/Object;

    .line 103
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v1, v2, v7

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 104
    .local v2, "componentInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "filterIneligibleActivities"

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Ljava/util/List;

    aput-object v9, v8, v5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    invoke-virtual {v3, v4, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 105
    .local v3, "filter":Ljava/lang/reflect/Method;
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v7, "sort"

    new-array v8, v6, [Ljava/lang/Class;

    const-class v9, Ljava/util/List;

    aput-object v9, v8, v5

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 107
    .local v4, "sort":Ljava/lang/reflect/Method;
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    .line 108
    return-object v2

    .line 109
    .end local v0    # "getResolvers":Ljava/lang/reflect/Method;
    .end local v1    # "intents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Intent;>;"
    .end local v2    # "componentInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    .end local v3    # "filter":Ljava/lang/reflect/Method;
    .end local v4    # "sort":Ljava/lang/reflect/Method;
    :catch_73
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooserActivityInjector"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist createSortedResolveList(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/app/ResolverRankerServiceResolverComparator;I)Ljava/util/ArrayList;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "comparator"    # Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
    .param p3, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/android/internal/app/ResolverRankerServiceResolverComparator;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x100c0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v1, "currentResolveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    if-eqz v0, :cond_26

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 123
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-static {v1, p1, v3}, Lcom/android/internal/app/ChooserActivityStubImpl;->addResolveListDedupe(Ljava/util/List;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    .line 124
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_16

    .line 127
    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2c
    const/4 v3, 0x0

    if-ltz v2, :cond_5d

    .line 128
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 129
    invoke-virtual {v4, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 130
    .local v3, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v6, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v4, p3, v5, v6}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v4

    .line 133
    .local v4, "granted":I
    if-nez v4, :cond_57

    sget-boolean v5, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-eqz v5, :cond_5a

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 134
    const-string v6, "com.android.htmlviewer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 136
    :cond_57
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 127
    .end local v3    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v4    # "granted":I
    :cond_5a
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    .line 140
    .end local v2    # "i":I
    :cond_5d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 141
    .local v2, "N":I
    if-lez v2, :cond_91

    .line 144
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 145
    .local v4, "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    invoke-virtual {v4, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 146
    .local v5, "r0":Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_6e
    if-ge v6, v2, :cond_91

    .line 147
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    invoke-virtual {v7, v3}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 148
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    iget v8, v5, Landroid/content/pm/ResolveInfo;->priority:I

    iget v9, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v8, v9, :cond_86

    iget-boolean v8, v5, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v9, v7, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v8, v9, :cond_8e

    .line 150
    :cond_86
    :goto_86
    if-ge v6, v2, :cond_8e

    .line 151
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 152
    add-int/lit8 v2, v2, -0x1

    goto :goto_86

    .line 146
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 163
    .end local v4    # "rci0":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    .end local v5    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v6    # "i":I
    :cond_91
    return-object v1
.end method


# virtual methods
.method public blacklist canBindService(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 36
    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    .line 37
    .local v0, "securityManager":Lmiui/security/SecurityManager;
    invoke-virtual {v0, p2, p3}, Lmiui/security/SecurityManager;->isAllowStartService(Landroid/content/Intent;I)Z

    move-result v1

    return v1
.end method

.method public blacklist canInterceptByMiAppStore(Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 11
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 42
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 43
    return v1

    .line 46
    :cond_6
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 47
    .local v0, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_13

    .line 48
    return v1

    .line 51
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 52
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 54
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_44

    :try_start_29
    const-string v5, "mi_use_custom_resolver"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_35} :catch_39

    if-eqz v5, :cond_44

    .line 55
    const/4 v1, 0x1

    return v1

    .line 57
    :catch_39
    move-exception v5

    .line 58
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ChooserActivityInjector"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 59
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_44
    nop

    .line 60
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :goto_45
    goto :goto_17

    .line 61
    :cond_46
    return v1
.end method

.method public blacklist dealWithActonViewIntent(Landroid/content/Intent;[Landroid/content/Intent;)V
    .registers 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "initialIntents"    # [Landroid/content/Intent;

    .line 207
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "android.intent.action.WEB_SEARCH"

    if-nez v0, :cond_1b

    .line 208
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 209
    sput-boolean v2, Lcom/android/internal/app/ChooserActivityStubImpl;->mShowMoreResolverButton:Z

    .line 211
    :cond_1b
    sget-boolean v0, Lcom/android/internal/app/ChooserActivityStubImpl;->mShowMoreResolverButton:Z

    if-eqz v0, :cond_41

    if-eqz p2, :cond_41

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    array-length v4, p2

    if-ge v0, v4, :cond_41

    .line 213
    aget-object v4, p2, v0

    .line 214
    .local v4, "ii":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 215
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    .line 216
    sput-boolean v2, Lcom/android/internal/app/ChooserActivityStubImpl;->mShowMoreResolverButton:Z

    .line 217
    goto :goto_41

    .line 212
    .end local v4    # "ii":Landroid/content/Intent;
    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 221
    .end local v0    # "i":I
    :cond_41
    :goto_41
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 222
    return-void
.end method

.method public blacklist isInterceptedByMiAppStore(Landroid/app/Activity;)Z
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 66
    sget-object v0, Lcom/android/internal/app/ChooserActivityStubImpl;->sMiAppsInterceptedResolver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist notAllowHomeLaunchedAgain(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 193
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 194
    .local v0, "categoriesM":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_2b

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v1, :cond_2b

    .line 196
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    if-eqz v0, :cond_2b

    .line 198
    const-string v1, "android.intent.category.HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 199
    const-string v1, "ChooserActivityInjector"

    const-string v2, "Default Home Already Exists"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v1, 0x1

    return v1

    .line 202
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist startInterceptByMiAppStore(Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/Object;Lcom/android/internal/app/ResolverRankerServiceResolverComparator;I)V
    .registers 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolverController"    # Ljava/lang/Object;
    .param p4, "resolverComparator"    # Lcom/android/internal/app/ResolverRankerServiceResolverComparator;
    .param p5, "launchedFromUid"    # I

    .line 73
    if-eqz p3, :cond_7

    .line 74
    invoke-static {p3, p2}, Lcom/android/internal/app/ChooserActivityStubImpl;->createSortedResloveListByResolverController(Ljava/lang/Object;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    .local v0, "sortedComponentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    goto :goto_b

    .line 76
    .end local v0    # "sortedComponentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :cond_7
    invoke-static {p1, p2, p4, p5}, Lcom/android/internal/app/ChooserActivityStubImpl;->createSortedResolveList(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/app/ResolverRankerServiceResolverComparator;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    .restart local v0    # "sortedComponentInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;>;"
    :goto_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "sortedResolveInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;

    .line 81
    .local v3, "resolvedComponentInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;->getResolveInfoAt(I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v3    # "resolvedComponentInfo":Lcom/android/internal/app/ResolverActivity$ResolvedComponentInfo;
    goto :goto_14

    .line 84
    :cond_29
    sget-object v2, Lcom/android/internal/app/ChooserActivityStubImpl;->sMiAppsInterceptedResolver:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.xiaomi.market.RESOLVER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, "miAppStoreResolverIntent":Landroid/content/Intent;
    const-string v3, "targetIntent"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const-string v3, "sortedResolveInfos"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 88
    const-string v3, "com.xiaomi.mipicks"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "callerPackage"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v3, "callerUid"

    invoke-virtual {v2, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const v3, 0x110f0043

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appChooserTitle"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const v3, 0x10405ff

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "moreItemLabel"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const v3, 0x110f0008

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rememberChoiceText"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    return-void
.end method

.method public blacklist stopInterceptByMiAppStore(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 188
    sget-object v0, Lcom/android/internal/app/ChooserActivityStubImpl;->sMiAppsInterceptedResolver:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 189
    return-void
.end method
