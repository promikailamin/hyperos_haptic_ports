.class public Lcom/android/server/pm/pkg/PackageUserStateUtils;
.super Ljava/lang/Object;
.source "PackageUserStateUtils.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageUserStateUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z
    .registers 10
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "flags"    # J

    .line 88
    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v4

    .line 89
    .local v0, "matchAnyUser":Z
    :goto_f
    const-wide/16 v5, 0x2000

    and-long/2addr v5, p1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_18

    move v2, v1

    goto :goto_19

    :cond_18
    move v2, v4

    .line 90
    .local v2, "matchUninstalled":Z
    :goto_19
    if-nez v0, :cond_2c

    .line 91
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 92
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v3

    if-eqz v3, :cond_2c

    if-eqz v2, :cond_2a

    goto :goto_2c

    :cond_2a
    move v1, v4

    goto :goto_2d

    :cond_2c
    :goto_2c
    nop

    .line 90
    :goto_2d
    return v1
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 11
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 106
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z
    .registers 11
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "parsedComponent"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .param p3, "flags"    # J

    .line 112
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v2

    .line 113
    invoke-interface {p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v3

    .line 112
    move-object v0, p0

    move v1, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z
    .registers 13
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "isPackageEnabled"    # Z
    .param p2, "isComponentEnabled"    # Z
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "flags"    # J

    .line 122
    const-wide/16 v0, 0x200

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 123
    return v1

    .line 128
    :cond_b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_30

    :pswitch_13
    goto :goto_21

    .line 133
    :pswitch_14
    const-wide/32 v5, 0x8000

    and-long/2addr v5, p4

    cmp-long v0, v5, v2

    if-nez v0, :cond_1e

    .line 134
    return v4

    .line 131
    :pswitch_1d
    return v4

    .line 138
    :cond_1e
    :pswitch_1e
    if-nez p1, :cond_21

    .line 139
    return v4

    .line 148
    :cond_21
    :goto_21
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 149
    return v1

    .line 150
    :cond_28
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 151
    return v4

    .line 154
    :cond_2f
    return p2

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_13
        :pswitch_1d
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 13
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "componentInfo"    # Landroid/content/pm/ComponentInfo;
    .param p2, "flags"    # J

    .line 40
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v4, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-boolean v5, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    iget-object v6, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p2

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/server/pm/pkg/component/ParsedMainComponent;J)Z
    .registers 14
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "component"    # Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .param p4, "flags"    # J

    .line 47
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v3

    .line 48
    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v4

    invoke-interface {p3}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v5

    .line 47
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p4

    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z
    .registers 22
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "isSystem"    # Z
    .param p2, "isPackageEnabled"    # Z
    .param p3, "isComponentEnabled"    # Z
    .param p4, "isComponentDirectBootAware"    # Z
    .param p5, "componentName"    # Ljava/lang/String;
    .param p6, "flags"    # J

    .line 63
    move-wide/from16 v6, p6

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v6

    const-wide/16 v8, 0x0

    cmp-long v0, v0, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_10

    move v0, v10

    goto :goto_11

    :cond_10
    move v0, v11

    :goto_11
    move v12, v0

    .line 64
    .local v12, "matchUninstalled":Z
    move-object v13, p0

    invoke-static {p0, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v0

    if-nez v0, :cond_22

    if-eqz p1, :cond_1d

    if-nez v12, :cond_22

    .line 65
    :cond_1d
    invoke-static {v11, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 68
    :cond_22
    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-wide/from16 v4, p6

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_36

    .line 69
    invoke-static {v11, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 72
    :cond_36
    const-wide/32 v0, 0x100000

    and-long/2addr v0, v6

    cmp-long v0, v0, v8

    if-eqz v0, :cond_45

    .line 73
    if-nez p1, :cond_45

    .line 74
    invoke-static {v11, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v0

    return v0

    .line 78
    :cond_45
    const-wide/32 v0, 0x40000

    and-long/2addr v0, v6

    cmp-long v0, v0, v8

    if-eqz v0, :cond_51

    if-nez p4, :cond_51

    move v0, v10

    goto :goto_52

    :cond_51
    move v0, v11

    .line 80
    .local v0, "matchesUnaware":Z
    :goto_52
    const-wide/32 v1, 0x80000

    and-long/2addr v1, v6

    cmp-long v1, v1, v8

    if-eqz v1, :cond_5e

    if-eqz p4, :cond_5e

    move v1, v10

    goto :goto_5f

    :cond_5e
    move v1, v11

    .line 82
    .local v1, "matchesAware":Z
    :goto_5f
    if-nez v0, :cond_65

    if-eqz v1, :cond_64

    goto :goto_65

    :cond_64
    move v10, v11

    :cond_65
    :goto_65
    invoke-static {v10, v6, v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result v2

    return v2
.end method

.method public static isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;)Z
    .registers 3
    .param p0, "state"    # Lcom/android/server/pm/pkg/PackageUserState;
    .param p1, "pkg"    # Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;

    .line 159
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    packed-switch v0, :pswitch_data_10

    .line 168
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->isEnabled()Z

    move-result v0

    return v0

    .line 165
    :pswitch_c
    const/4 v0, 0x0

    return v0

    .line 161
    :pswitch_e
    const/4 v0, 0x1

    return v0

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_e
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method public static reportIfDebug(ZJ)Z
    .registers 3
    .param p0, "result"    # Z
    .param p1, "flags"    # J

    .line 101
    return p0
.end method
