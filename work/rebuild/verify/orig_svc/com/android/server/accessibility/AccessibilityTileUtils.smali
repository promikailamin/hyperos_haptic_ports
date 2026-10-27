.class public abstract Lcom/android/server/accessibility/AccessibilityTileUtils;
.super Ljava/lang/Object;
.source "AccessibilityTileUtils.java"


# direct methods
.method public static synthetic $r8$lambda$Oos7u-JbDCrRVuSrqmT1kE0YGRw(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;ILjava/util/Set;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .registers 8

    .line 144
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2b

    .line 146
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p4

    .line 147
    new-instance v1, Landroid/content/ComponentName;

    iget-object p4, p4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, p4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p4, p4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance p4, Landroid/content/ComponentName;

    .line 152
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p4, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {p0, p1, p4, p2}, Lcom/android/server/accessibility/AccessibilityTileUtils;->isComponentValidTileService(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Landroid/content/ComponentName;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 156
    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2b
    return-void
.end method

.method public static synthetic $r8$lambda$yloXV6SHJLyDBW74g8cd0k0xyrc(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;ILjava/util/Set;Landroid/accessibilityservice/AccessibilityShortcutInfo;)V
    .registers 7

    .line 166
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getTileServiceName()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 168
    invoke-virtual {p4}, Landroid/accessibilityservice/AccessibilityShortcutInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p4

    .line 169
    new-instance v1, Landroid/content/ComponentName;

    .line 170
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v1, p4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {p0, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityTileUtils;->isComponentValidTileService(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Landroid/content/ComponentName;I)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 173
    invoke-interface {p3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method public static getValidA11yTileServices(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Ljava/util/List;Ljava/util/List;I)Ljava/util/Set;
    .registers 7

    .line 136
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-nez p1, :cond_8

    goto :goto_1c

    :cond_8
    if-eqz p2, :cond_12

    .line 142
    new-instance v1, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p4, v0}, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;ILjava/util/Set;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_12
    if-eqz p3, :cond_1c

    .line 164
    new-instance p2, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1, p4, v0}, Lcom/android/server/accessibility/AccessibilityTileUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;ILjava/util/Set;)V

    invoke-interface {p3, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c
    :goto_1c
    return-object v0
.end method

.method public static isComponentValidTileService(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Landroid/content/ComponentName;I)Z
    .registers 11

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.service.quicksettings.action.QS_TILE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 66
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    move-object v0, p1

    move v5, p3

    .line 62
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->resolveService(Landroid/content/Intent;Ljava/lang/String;JII)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x0

    .line 68
    const-string p3, "AccessibilityTileUtils"

    if-eqz p0, :cond_8b

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez p0, :cond_28

    goto :goto_8b

    .line 74
    :cond_28
    iget-boolean v1, p0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-nez v1, :cond_41

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TileService is not exported: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 79
    :cond_41
    const-string v1, "android.permission.BIND_QUICK_SETTINGS_TILE"

    iget-object v2, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TileService is not protected by BIND_QUICK_SETTINGS_TILE permission: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 85
    :cond_60
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, p2, v1, v5}, Landroid/content/pm/PackageManagerInternal;->getComponentEnabledSetting(Landroid/content/ComponentName;II)I

    move-result v0

    .line 86
    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z

    invoke-static {v0, p0}, Lcom/android/server/accessibility/AccessibilityTileUtils;->resolveEnabledComponent(IZ)Z

    move-result p0

    if-nez p0, :cond_89

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TileService is not enabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_89
    const/4 p0, 0x1

    return p0

    .line 69
    :cond_8b
    :goto_8b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TileService could not be resolved: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static resolveEnabledComponent(IZ)Z
    .registers 3

    .line 0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    if-nez p0, :cond_7

    return p1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
