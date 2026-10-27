.class public abstract Lcom/android/server/pm/pkg/PackageUserStateUtils;
.super Ljava/lang/Object;
.source "PackageUserStateUtils.java"


# direct methods
.method public static isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z
    .registers 11

    const-wide/32 v0, 0x400000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_e

    move v0, v4

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    const-wide/16 v5, 0x2000

    and-long/2addr v5, p1

    cmp-long v5, v5, v2

    if-eqz v5, :cond_18

    move v5, v4

    goto :goto_19

    :cond_18
    move v5, v1

    :goto_19
    const-wide v6, 0x100000000L

    and-long/2addr p1, v6

    cmp-long p1, p1, v2

    if-eqz p1, :cond_25

    move p1, v4

    goto :goto_26

    :cond_25
    move p1, v1

    :goto_26
    if-nez v5, :cond_2d

    if-eqz p1, :cond_2b

    goto :goto_2d

    :cond_2b
    move p1, v1

    goto :goto_2e

    :cond_2d
    :goto_2d
    move p1, v4

    :goto_2e
    if-eqz v0, :cond_31

    return v4

    .line 109
    :cond_31
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 110
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result p0

    if-nez p0, :cond_3e

    return v4

    :cond_3e
    return p1

    :cond_3f
    if-eqz p1, :cond_48

    .line 115
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->dataExists()Z

    move-result p0

    if-eqz p0, :cond_48

    return v4

    :cond_48
    return v1
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 11

    .line 130
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget-boolean v3, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v1, p0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z
    .registers 13

    const-wide/16 v0, 0x200

    and-long/2addr v0, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    return v1

    :cond_b
    const-wide v4, 0x200000000L

    and-long/2addr v4, p4

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_1d

    .line 150
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v0

    if-eqz v0, :cond_1d

    return v4

    .line 156
    :cond_1d
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v0

    if-eqz v0, :cond_36

    const/4 v5, 0x2

    if-eq v0, v5, :cond_35

    const/4 v5, 0x3

    if-eq v0, v5, :cond_35

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2d

    goto :goto_39

    :cond_2d
    const-wide/32 v5, 0x8000

    and-long/2addr p4, v5

    cmp-long p4, p4, v2

    if-nez p4, :cond_36

    :cond_35
    return v4

    :cond_36
    if-nez p1, :cond_39

    return v4

    .line 176
    :cond_39
    :goto_39
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    return v1

    .line 178
    :cond_40
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageUserState;->isComponentDisabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_47

    return v4

    :cond_47
    return p2
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;Landroid/content/pm/ComponentInfo;J)Z
    .registers 13

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

    move-result p0

    return p0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZLcom/android/internal/pm/pkg/component/ParsedMainComponent;J)Z
    .registers 14

    .line 47
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v3

    .line 48
    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v4

    invoke-interface {p3}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v6, p4

    .line 47
    invoke-static/range {v0 .. v7}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public static isMatch(Lcom/android/server/pm/pkg/PackageUserState;ZZZZLjava/lang/String;J)Z
    .registers 18

    move-wide/from16 v4, p6

    const-wide/32 v0, 0x402000

    and-long/2addr v0, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_10

    move v0, v8

    goto :goto_11

    :cond_10
    move v0, v9

    .line 64
    :goto_11
    invoke-static {p0, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isAvailable(Lcom/android/server/pm/pkg/PackageUserState;J)Z

    move-result v1

    if-nez v1, :cond_1c

    if-eqz p1, :cond_21

    if-nez v0, :cond_1c

    goto :goto_21

    :cond_1c
    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v3, p5

    goto :goto_26

    .line 65
    :cond_21
    :goto_21
    invoke-static {v9, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result p0

    return p0

    .line 68
    :goto_26
    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->isEnabled(Lcom/android/server/pm/pkg/PackageUserState;ZZLjava/lang/String;J)Z

    move-result p0

    if-nez p0, :cond_31

    .line 69
    invoke-static {v9, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result p0

    return p0

    :cond_31
    const-wide/32 p2, 0x100000

    and-long/2addr p2, v4

    cmp-long p0, p2, v6

    if-eqz p0, :cond_40

    if-nez p1, :cond_40

    .line 74
    invoke-static {v9, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result p0

    return p0

    :cond_40
    const-wide/32 p0, 0x40000

    and-long/2addr p0, v4

    cmp-long p0, p0, v6

    if-eqz p0, :cond_4c

    if-nez p4, :cond_4c

    move p0, v8

    goto :goto_4d

    :cond_4c
    move p0, v9

    :goto_4d
    const-wide/32 p1, 0x80000

    and-long/2addr p1, v4

    cmp-long p1, p1, v6

    if-eqz p1, :cond_59

    if-eqz p4, :cond_59

    move p1, v8

    goto :goto_5a

    :cond_59
    move p1, v9

    :goto_5a
    if-nez p0, :cond_60

    if-eqz p1, :cond_5f

    goto :goto_60

    :cond_5f
    move v8, v9

    .line 82
    :cond_60
    :goto_60
    invoke-static {v8, v4, v5}, Lcom/android/server/pm/pkg/PackageUserStateUtils;->reportIfDebug(ZJ)Z

    move-result p0

    return p0
.end method

.method public static isPackageEnabled(Lcom/android/server/pm/pkg/PackageUserState;Lcom/android/server/pm/pkg/AndroidPackage;)Z
    .registers 3

    .line 187
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_15

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    .line 196
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->isEnabled()Z

    move-result p0

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    return v0
.end method

.method public static reportIfDebug(ZJ)Z
    .registers 3

    .line 0
    return p0
.end method
