.class final Lcom/android/server/app/GameServiceProviderSelectorImpl;
.super Ljava/lang/Object;
.source "GameServiceProviderSelectorImpl.java"

# interfaces
.implements Lcom/android/server/app/GameServiceProviderSelector;


# static fields
.field private static final DEBUG:Z = false

.field private static final GAME_SERVICE_NODE_NAME:Ljava/lang/String; = "game-service"

.field private static final TAG:Ljava/lang/String; = "GameServiceProviderSelector"


# instance fields
.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mResources:Landroid/content/res/Resources;

    .line 56
    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    return-void
.end method

.method private determineGameSessionServiceFromGameService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .registers 12
    .param p1, "gameServiceServiceInfo"    # Landroid/content/pm/ServiceInfo;

    .line 140
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.game_service"

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_9} :catch_b0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_b0

    .line 142
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const-string v2, "GameServiceProviderSelector"

    if-nez v1, :cond_2e

    .line 143
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No android.game_service meta-data found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_a4

    .line 145
    nop

    .line 169
    if-eqz v1, :cond_2d

    :try_start_2a
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_2d} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_2d} :catch_b0
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_b0

    .line 145
    :cond_2d
    return-object v0

    .line 148
    :cond_2e
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 151
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 153
    .local v4, "attributeSet":Landroid/util/AttributeSet;
    :goto_3a
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_46

    const/4 v5, 0x2

    if-eq v6, v5, :cond_46

    goto :goto_3a

    .line 158
    :cond_46
    const-string v5, "game-service"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 159
    .local v5, "isStartingTagGameService":Z
    if-nez v5, :cond_5e

    .line 160
    const-string v7, "Meta-data does not start with game-service tag"

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_2e .. :try_end_57} :catchall_a4

    .line 161
    nop

    .line 169
    if-eqz v1, :cond_5d

    :try_start_5a
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a .. :try_end_5d} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5a .. :try_end_5d} :catch_b0
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_b0

    .line 161
    :cond_5d
    return-object v0

    .line 164
    :cond_5e
    :try_start_5e
    sget-object v7, Lcom/android/internal/R$styleable;->GameService:[I

    invoke-virtual {v3, v4, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 166
    .local v7, "array":Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "gameSessionService":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_6c
    .catchall {:try_start_5e .. :try_end_6c} :catchall_a4

    .line 169
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "attributeSet":Landroid/util/AttributeSet;
    .end local v5    # "isStartingTagGameService":Z
    .end local v6    # "type":I
    .end local v7    # "array":Landroid/content/res/TypedArray;
    if-eqz v1, :cond_71

    :try_start_6e
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6e .. :try_end_71} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6e .. :try_end_71} :catch_b0
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_b0

    .line 173
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_71
    nop

    .line 175
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 176
    const-string v1, "No gameSessionService specified"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-object v0

    .line 179
    :cond_7e
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v3, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v1, "componentName":Landroid/content/ComponentName;
    :try_start_85
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v8}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_8a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_85 .. :try_end_8a} :catch_8c

    .line 187
    nop

    .line 189
    return-object v1

    .line 184
    :catch_8c
    move-exception v3

    .line 185
    .local v3, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GameSessionService does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-object v0

    .line 140
    .end local v3    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "gameSessionService":Ljava/lang/String;
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_a4
    move-exception v2

    if-eqz v1, :cond_af

    :try_start_a7
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    goto :goto_af

    :catchall_ab
    move-exception v3

    :try_start_ac
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/app/GameServiceProviderSelectorImpl;
    .end local p1    # "gameServiceServiceInfo":Landroid/content/pm/ServiceInfo;
    :cond_af
    :goto_af
    throw v2
    :try_end_b0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ac .. :try_end_b0} :catch_b0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ac .. :try_end_b0} :catch_b0
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b0} :catch_b0

    .line 169
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Lcom/android/server/app/GameServiceProviderSelectorImpl;
    .restart local p1    # "gameServiceServiceInfo":Landroid/content/pm/ServiceInfo;
    :catch_b0
    move-exception v1

    .line 170
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while parsing meta-data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    return-object v0
.end method


# virtual methods
.method public get(Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;)Lcom/android/server/app/GameServiceConfiguration;
    .registers 19
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;
    .param p2, "packageNameOverride"    # Ljava/lang/String;

    .line 63
    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 64
    return-object v1

    .line 67
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    .line 68
    .local v2, "isUserSupported":Z
    :goto_15
    const-string v3, "GameServiceProviderSelector"

    if-nez v2, :cond_34

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Game Service not supported for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v1

    .line 75
    :cond_34
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, "resolveInfoQueryFlags":I
    move-object/from16 v5, p2

    .local v5, "gameServicePackage":Ljava/lang/String;
    goto :goto_49

    .line 79
    .end local v4    # "resolveInfoQueryFlags":I
    .end local v5    # "gameServicePackage":Ljava/lang/String;
    :cond_3e
    const/high16 v4, 0x100000

    .line 80
    .restart local v4    # "resolveInfoQueryFlags":I
    iget-object v5, v0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mResources:Landroid/content/res/Resources;

    const v6, 0x10402c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 84
    .restart local v5    # "gameServicePackage":Ljava/lang/String;
    :goto_49
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 85
    const-string v6, "No game service package defined"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-object v1

    .line 89
    :cond_55
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v6

    .line 90
    .local v6, "userId":I
    iget-object v7, v0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.service.games.action.GAME_SERVICE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    or-int/lit16 v9, v4, 0x80

    .line 91
    invoke-virtual {v7, v8, v9, v6}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    .line 100
    .local v7, "gameServiceResolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_c9

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_75

    goto :goto_c9

    .line 105
    :cond_75
    const/4 v8, 0x0

    .line 106
    .local v8, "selectedProvider":Lcom/android/server/app/GameServiceConfiguration;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_aa

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 107
    .local v10, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_8b

    .line 108
    goto :goto_7a

    .line 110
    :cond_8b
    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 112
    .local v11, "gameServiceServiceInfo":Landroid/content/pm/ServiceInfo;
    nop

    .line 113
    invoke-direct {v0, v11}, Lcom/android/server/app/GameServiceProviderSelectorImpl;->determineGameSessionServiceFromGameService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v12

    .line 114
    .local v12, "gameSessionServiceComponentName":Landroid/content/ComponentName;
    if-nez v12, :cond_95

    .line 115
    goto :goto_7a

    .line 118
    :cond_95
    new-instance v9, Lcom/android/server/app/GameServiceConfiguration;

    new-instance v13, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    new-instance v14, Landroid/os/UserHandle;

    invoke-direct {v14, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 123
    invoke-virtual {v11}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-direct {v13, v14, v15, v12}, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;-><init>(Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-direct {v9, v5, v13}, Lcom/android/server/app/GameServiceConfiguration;-><init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    move-object v8, v9

    .line 125
    nop

    .line 128
    .end local v10    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "gameServiceServiceInfo":Landroid/content/pm/ServiceInfo;
    .end local v12    # "gameSessionServiceComponentName":Landroid/content/ComponentName;
    :cond_aa
    if-nez v8, :cond_c8

    .line 129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No valid game service found for user id: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v3, Lcom/android/server/app/GameServiceConfiguration;

    invoke-direct {v3, v5, v1}, Lcom/android/server/app/GameServiceConfiguration;-><init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    return-object v3

    .line 133
    :cond_c8
    return-object v8

    .line 101
    .end local v8    # "selectedProvider":Lcom/android/server/app/GameServiceConfiguration;
    :cond_c9
    :goto_c9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No available game service found for user id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v3, Lcom/android/server/app/GameServiceConfiguration;

    invoke-direct {v3, v5, v1}, Lcom/android/server/app/GameServiceConfiguration;-><init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    return-object v3
.end method
