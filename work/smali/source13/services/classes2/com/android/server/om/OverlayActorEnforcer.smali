.class public Lcom/android/server/om/OverlayActorEnforcer;
.super Ljava/lang/Object;
.source "OverlayActorEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    }
.end annotation


# instance fields
.field private final mPackageManager:Lcom/android/server/om/PackageManagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/om/PackageManagerHelper;)V
    .registers 2
    .param p1, "packageManager"    # Lcom/android/server/om/PackageManagerHelper;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    .line 82
    return-void
.end method

.method static getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .registers 11
    .param p0, "actorUriString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/om/OverlayActorEnforcer$ActorState;",
            ">;"
        }
    .end annotation

    .line 53
    .local p1, "namedActors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    .local v0, "actorUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "actorScheme":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, "actorPathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "overlay"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_63

    invoke-static {v2}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1e

    goto :goto_63

    .line 61
    :cond_1e
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 62
    sget-object v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3

    .line 65
    :cond_2b
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "actorNamespace":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 67
    .local v5, "namespace":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 68
    sget-object v6, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 71
    :cond_42
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 72
    .local v6, "actorName":Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 73
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 74
    sget-object v8, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 77
    :cond_5c
    sget-object v4, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v7, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 58
    .end local v3    # "actorNamespace":Ljava/lang/String;
    .end local v5    # "namespace":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "actorName":Ljava/lang/String;
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_63
    :goto_63
    sget-object v3, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V
    .registers 10
    .param p1, "overlayInfo"    # Landroid/content/om/OverlayInfo;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/om/OverlayActorEnforcer;->isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    move-result-object v0

    .line 87
    .local v0, "actorState":Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    sget-object v1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-ne v0, v1, :cond_9

    .line 88
    return-void

    .line 91
    :cond_9
    iget-object v1, p1, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 92
    .local v1, "targetOverlayableName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UID"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    const-string v3, ""

    goto :goto_46

    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "errorMessage":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " because "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OverlayManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .registers 22
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "overlayInfo"    # Landroid/content/om/OverlayInfo;
    .param p3, "callingUid"    # I
    .param p4, "userId"    # I

    .line 108
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    sparse-switch v4, :sswitch_data_c0

    .line 114
    iget-object v6, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 115
    .local v6, "targetPackageName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v6, v5}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v7

    .line 117
    .local v7, "targetPkgInfo":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v7, :cond_1d

    .line 118
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->TARGET_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    .line 111
    .end local v6    # "targetPackageName":Ljava/lang/String;
    .end local v7    # "targetPkgInfo":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :sswitch_1a
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    .line 121
    .restart local v6    # "targetPackageName":Ljava/lang/String;
    .restart local v7    # "targetPkgInfo":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :cond_1d
    invoke-interface {v7}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 122
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    .line 125
    :cond_26
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v4}, Lcom/android/server/om/PackageManagerHelper;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "callingPackageNames":[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 127
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    .line 131
    :cond_35
    invoke-static {v8, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 132
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    .line 135
    :cond_3e
    iget-object v9, v3, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 137
    .local v9, "targetOverlayableName":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v10, "android.permission.CHANGE_OVERLAY_PACKAGES"

    if-eqz v0, :cond_63

    .line 139
    :try_start_48
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v6, v5}, Lcom/android/server/om/PackageManagerHelper;->doesTargetDefineOverlayable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 140
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_52} :catch_5f

    return-object v0

    .line 144
    :cond_53
    :try_start_53
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v10, v2}, Lcom/android/server/om/PackageManagerHelper;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_5a
    .catch Ljava/lang/SecurityException; {:try_start_53 .. :try_end_5a} :catch_5b
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5a} :catch_5f

    return-object v0

    .line 149
    :catch_5b
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_5c
    sget-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5e} :catch_5f

    return-object v10

    .line 153
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_5f
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v10

    .line 160
    .end local v0    # "e":Ljava/io/IOException;
    :cond_63
    :try_start_63
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v6, v9, v5}, Lcom/android/server/om/PackageManagerHelper;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object v0
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_69} :catch_bb

    move-object v11, v0

    .line 164
    .local v11, "targetOverlayable":Landroid/content/om/OverlayableInfo;
    nop

    .line 166
    if-nez v11, :cond_70

    .line 167
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v0

    .line 170
    :cond_70
    iget-object v12, v11, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    .line 171
    .local v12, "actor":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 174
    :try_start_78
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0, v10, v2}, Lcom/android/server/om/PackageManagerHelper;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_7f
    .catch Ljava/lang/SecurityException; {:try_start_78 .. :try_end_7f} :catch_80

    return-object v0

    .line 179
    :catch_80
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v10

    .line 184
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_84
    iget-object v0, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v0}, Lcom/android/server/om/PackageManagerHelper;->getNamedActors()Ljava/util/Map;

    move-result-object v0

    .line 185
    .local v0, "namedActors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {v12, v0}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v10

    .line 186
    .local v10, "actorUriPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/om/OverlayActorEnforcer$ActorState;>;"
    iget-object v13, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 187
    .local v13, "actorUriState":Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    sget-object v14, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-eq v13, v14, :cond_97

    .line 188
    return-object v13

    .line 191
    :cond_97
    iget-object v14, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    .line 192
    .local v14, "actorPackageName":Ljava/lang/String;
    iget-object v15, v1, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v15, v14, v5}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v15

    .line 193
    .local v15, "actorPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-nez v15, :cond_a6

    .line 194
    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    .line 198
    :cond_a6
    invoke-interface {v15}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->isSystem()Z

    move-result v16

    if-nez v16, :cond_af

    .line 199
    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    .line 202
    :cond_af
    invoke-static {v8, v14}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b8

    .line 203
    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    .line 206
    :cond_b8
    sget-object v16, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v16

    .line 162
    .end local v0    # "namedActors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "actorUriPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/om/OverlayActorEnforcer$ActorState;>;"
    .end local v11    # "targetOverlayable":Landroid/content/om/OverlayableInfo;
    .end local v12    # "actor":Ljava/lang/String;
    .end local v13    # "actorUriState":Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .end local v14    # "actorPackageName":Ljava/lang/String;
    .end local v15    # "actorPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    :catch_bb
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->UNABLE_TO_GET_TARGET_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object v10

    nop

    :sswitch_data_c0
    .sparse-switch
        0x0 -> :sswitch_1a
        0x3e8 -> :sswitch_1a
    .end sparse-switch
.end method
