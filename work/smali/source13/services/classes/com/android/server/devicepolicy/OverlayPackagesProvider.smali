.class public Lcom/android/server/devicepolicy/OverlayPackagesProvider;
.super Ljava/lang/Object;
.source "OverlayPackagesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;,
        Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "OverlayPackagesProvider"

.field private static final sActionToMetadataKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAllowedActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector;-><init>(Lcom/android/server/devicepolicy/OverlayPackagesProvider$DefaultInjector-IA;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;-><init>(Landroid/content/Context;Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;)V

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    const-string v1, "android.app.action.PROVISION_MANAGED_USER"

    const-string v2, "android.app.REQUIRED_APP_MANAGED_USER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "android.app.action.PROVISION_MANAGED_PROFILE"

    const-string v3, "android.app.REQUIRED_APP_MANAGED_PROFILE"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v3, "android.app.action.PROVISION_MANAGED_DEVICE"

    const-string v4, "android.app.REQUIRED_APP_MANAGED_DEVICE"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    .line 130
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    iput-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 131
    return-void
.end method

.method private getDeviceManagerRoleHolders()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 168
    .local v0, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    .line 169
    invoke-interface {v1, v2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getDevicePolicyManagementRoleHolderPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "deviceManagerRoleHolderPackageName":Ljava/lang/String;
    if-eqz v1, :cond_12

    .line 171
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_12
    return-object v0
.end method

.method private getDisallowedApps(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p1, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 271
    .local v0, "disallowedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getVendorDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 273
    return-object v0
.end method

.method private getDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p1, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    :cond_7
    goto :goto_26

    :sswitch_8
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :sswitch_12
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :sswitch_1c
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_78

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :pswitch_49
    const v0, 0x10700d3

    .line 306
    .local v0, "resId":I
    goto :goto_55

    .line 302
    .end local v0    # "resId":I
    :pswitch_4d
    const v0, 0x10700d4

    .line 303
    .restart local v0    # "resId":I
    goto :goto_55

    .line 299
    .end local v0    # "resId":I
    :pswitch_51
    const v0, 0x10700d5

    .line 300
    .restart local v0    # "resId":I
    nop

    .line 311
    :goto_55
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x36de2734 -> :sswitch_1c
        -0x1ea9303f -> :sswitch_12
        -0x1450e22d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4d
        :pswitch_49
    .end packed-switch
.end method

.method private getLaunchableApps(I)Ljava/util/Set;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "launcherIntent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    const v2, 0xc2200

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 243
    .local v2, "apps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 244
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 245
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    goto :goto_1e

    .line 246
    :cond_32
    return-object v2
.end method

.method private getRequiredApps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p1, "provisioningAction"    # Ljava/lang/String;
    .param p2, "dpcPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 263
    .local v0, "requiredApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 264
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getVendorRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 266
    return-object v0
.end method

.method private getRequiredAppsMainlineModules(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .param p2, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 187
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .local v2, "packageName":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isMainlineModule(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 189
    goto :goto_9

    .line 191
    :cond_1c
    invoke-direct {p0, v2, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isRequiredAppDeclaredInMetadata(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 192
    goto :goto_9

    .line 194
    :cond_23
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v2    # "packageName":Ljava/lang/String;
    goto :goto_9

    .line 196
    :cond_27
    return-object v0
.end method

.method private getRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p1, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    :cond_7
    goto :goto_26

    :sswitch_8
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :sswitch_12
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :sswitch_1c
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_78

    .line 289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :pswitch_49
    const v0, 0x10700e8

    .line 287
    .local v0, "resId":I
    goto :goto_55

    .line 283
    .end local v0    # "resId":I
    :pswitch_4d
    const v0, 0x10700e9

    .line 284
    .restart local v0    # "resId":I
    goto :goto_55

    .line 280
    .end local v0    # "resId":I
    :pswitch_51
    const v0, 0x10700ea

    .line 281
    .restart local v0    # "resId":I
    nop

    .line 292
    :goto_55
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x36de2734 -> :sswitch_1c
        -0x1ea9303f -> :sswitch_12
        -0x1450e22d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4d
        :pswitch_49
    .end packed-switch
.end method

.method private getSystemInputMethods(I)Ljava/util/Set;
    .registers 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 251
    .local v0, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 252
    .local v1, "systemInputMethods":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 253
    .local v3, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 254
    .local v4, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 255
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v3    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    .end local v4    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_2e
    goto :goto_f

    .line 258
    :cond_2f
    return-object v1
.end method

.method private getVendorDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p1, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    :cond_7
    goto :goto_26

    :sswitch_8
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :sswitch_12
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :sswitch_1c
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_78

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :pswitch_49
    const v0, 0x10700f5

    .line 344
    .local v0, "resId":I
    goto :goto_55

    .line 340
    .end local v0    # "resId":I
    :pswitch_4d
    const v0, 0x10700f6

    .line 341
    .restart local v0    # "resId":I
    goto :goto_55

    .line 337
    .end local v0    # "resId":I
    :pswitch_51
    const v0, 0x10700f7

    .line 338
    .restart local v0    # "resId":I
    nop

    .line 349
    :goto_55
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x36de2734 -> :sswitch_1c
        -0x1ea9303f -> :sswitch_12
        -0x1450e22d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4d
        :pswitch_49
    .end packed-switch
.end method

.method private getVendorRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p1, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 316
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_6a

    :cond_7
    goto :goto_26

    :sswitch_8
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_27

    :sswitch_12
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_27

    :sswitch_1c
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_27

    :goto_26
    const/4 v0, -0x1

    :goto_27
    packed-switch v0, :pswitch_data_78

    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :pswitch_49
    const v0, 0x10700f9

    .line 325
    .local v0, "resId":I
    goto :goto_55

    .line 321
    .end local v0    # "resId":I
    :pswitch_4d
    const v0, 0x10700fa

    .line 322
    .restart local v0    # "resId":I
    goto :goto_55

    .line 318
    .end local v0    # "resId":I
    :pswitch_51
    const v0, 0x10700fb

    .line 319
    .restart local v0    # "resId":I
    nop

    .line 330
    :goto_55
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x36de2734 -> :sswitch_1c
        -0x1ea9303f -> :sswitch_12
        -0x1450e22d -> :sswitch_8
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_51
        :pswitch_4d
        :pswitch_49
    .end packed-switch
.end method

.method private isApkInApexMainlineModule(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    .line 229
    invoke-interface {v0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "apexPackageName":Ljava/lang/String;
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private isMainlineModule(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isRegularMainlineModule(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->isApkInApexMainlineModule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private isRegularMainlineModule(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_6} :catch_8

    .line 221
    const/4 v0, 0x1

    return v0

    .line 222
    :catch_8
    move-exception v1

    .line 223
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isRequiredAppDeclaredInMetadata(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "provisioningAction"    # Ljava/lang/String;

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_1a

    .line 205
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 206
    sget-object v1, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 207
    .local v1, "metadataKey":Ljava/lang/String;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 203
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "metadataKey":Ljava/lang/String;
    :catch_1a
    move-exception v0

    .line 204
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method dump(Landroid/util/IndentingPrintWriter;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;

    .line 353
    const-string v0, "OverlayPackagesProvider"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 356
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "required_apps_managed_device"

    const v2, 0x10700e8

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 358
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "required_apps_managed_user"

    const v2, 0x10700ea

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 360
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "required_apps_managed_profile"

    const v2, 0x10700e9

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 363
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string v1, "disallowed_apps_managed_device"

    const v2, 0x10700d3

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 365
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string v3, "disallowed_apps_managed_user"

    const v4, 0x10700d5

    invoke-static {p1, v0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 367
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 370
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_required_apps_managed_device"

    const v2, 0x10700f9

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 372
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_required_apps_managed_user"

    const v2, 0x10700fb

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 374
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_required_apps_managed_profile"

    const v2, 0x10700fa

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 377
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_disallowed_apps_managed_user"

    const v2, 0x10700f7

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 379
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_disallowed_apps_managed_device"

    const v2, 0x10700f5

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 381
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vendor_disallowed_apps_managed_profile"

    const v2, 0x10700f6

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpResources(Landroid/util/IndentingPrintWriter;Landroid/content/Context;Ljava/lang/String;I)V

    .line 384
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 385
    return-void
.end method

.method public getNonRequiredApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "provisioningAction"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 154
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getLaunchableApps(I)Ljava/util/Set;

    move-result-object v0

    .line 157
    .local v0, "nonRequiredApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredApps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 158
    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getSystemInputMethods(I)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 159
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDisallowedApps(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 160
    nop

    .line 161
    invoke-direct {p0, v0, p3}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredAppsMainlineModules(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 160
    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 162
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDeviceManagerRoleHolders()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 163
    return-object v0
.end method
