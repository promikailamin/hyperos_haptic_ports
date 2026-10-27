.class public final Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserServiceSupplier.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier<",
        "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field private static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final TAG:Ljava/lang/String; = "CurrentUserServiceSupplier"

.field private static final sBoundServiceInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManagerInternal;

.field private final mCallerPermission:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private volatile mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

.field private final mMatchSystemAppsOnly:Z

.field private final mServicePermission:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "explicitPackage"    # Ljava/lang/String;
    .param p4, "callerPermission"    # Ljava/lang/String;
    .param p5, "servicePermission"    # Ljava/lang/String;
    .param p6, "matchSystemAppsOnly"    # Z

    .line 219
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 221
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 222
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 221
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 225
    if-eqz p3, :cond_21

    .line 226
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    :cond_21
    iput-object p4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    .line 230
    iput-object p5, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    .line 231
    iput-boolean p6, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    .line 232
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "explicitPackage"    # Ljava/lang/String;
    .param p3, "callerPermission"    # Ljava/lang/String;
    .param p4, "servicePermission"    # Ljava/lang/String;

    .line 175
    const/4 v7, 0x1

    .line 176
    .local v7, "matchSystemAppsOnly":Z
    new-instance v8, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v8
.end method

.method public static createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "enableOverlayResId"    # I
    .param p3, "nonOverlayPackageResId"    # I

    .line 154
    invoke-static {p0, p2, p3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->retrieveExplicitPackage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "explicitPackage":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v1

    return-object v1
.end method

.method public static createUnsafeForTestsOnly(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "explicitPackage"    # Ljava/lang/String;
    .param p3, "callerPermission"    # Ljava/lang/String;
    .param p4, "servicePermission"    # Ljava/lang/String;

    .line 189
    const/4 v7, 0x0

    .line 190
    .local v7, "matchSystemAppsOnly":Z
    new-instance v8, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v8
.end method

.method static synthetic lambda$static$0(Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)I
    .registers 4
    .param p0, "o1"    # Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    .param p1, "o2"    # Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    .line 74
    if-ne p0, p1, :cond_4

    .line 75
    const/4 v0, 0x0

    return v0

    .line 76
    :cond_4
    if-nez p0, :cond_8

    .line 77
    const/4 v0, -0x1

    return v0

    .line 78
    :cond_8
    if-nez p1, :cond_c

    .line 79
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getVersion()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 86
    .local v0, "ret":I
    if-nez v0, :cond_35

    .line 87
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v1

    if-nez v1, :cond_28

    .line 88
    const/4 v0, -0x1

    goto :goto_35

    .line 89
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v1

    if-eqz v1, :cond_35

    .line 90
    const/4 v0, 0x1

    .line 93
    :cond_35
    :goto_35
    return v0
.end method

.method private static retrieveExplicitPackage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enableOverlayResId"    # I
    .param p2, "nonOverlayPackageResId"    # I

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 197
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 198
    .local v1, "enableOverlay":Z
    if-nez v1, :cond_f

    .line 199
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 201
    :cond_f
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    .registers 13

    .line 270
    const/4 v0, 0x0

    .line 273
    .local v0, "bestServiceInfo":Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    const v1, 0x10000080

    .line 274
    .local v1, "intentQueryFlags":I
    iget-boolean v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    if-eqz v2, :cond_b

    .line 275
    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    .line 277
    :cond_b
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    .line 278
    .local v2, "currentUserId":I
    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 282
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 283
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ServiceInfo;

    .line 285
    .local v6, "service":Landroid/content/pm/ServiceInfo;
    iget-object v7, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    const-string v8, "CurrentUserServiceSupplier"

    if-eqz v7, :cond_68

    .line 286
    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_68

    .line 287
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " disqualified due to not requiring "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    goto :goto_21

    .line 293
    :cond_68
    new-instance v7, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9, v5}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    .line 295
    .local v7, "serviceInfo":Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    iget-object v9, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    if-eqz v9, :cond_a9

    .line 296
    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 297
    invoke-virtual {v7}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v11

    .line 296
    invoke-static {v9, v10, v11}, Landroid/permission/PermissionManager;->checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_a9

    .line 298
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " disqualified due to not holding "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    goto/16 :goto_21

    .line 304
    :cond_a9
    sget-object v8, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Ljava/util/Comparator;

    invoke-interface {v8, v7, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-lez v8, :cond_b2

    .line 305
    move-object v0, v7

    .line 307
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "service":Landroid/content/pm/ServiceInfo;
    .end local v7    # "serviceInfo":Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    :cond_b2
    goto/16 :goto_21

    .line 309
    :cond_b4
    return-object v0
.end method

.method public bridge synthetic getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasMatchingService()Z
    .registers 5

    .line 236
    const/high16 v0, 0xc0000

    .line 237
    .local v0, "intentQueryFlags":I
    iget-boolean v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    if-eqz v1, :cond_9

    .line 238
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 240
    :cond_9
    iget-object v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    .line 241
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 244
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 314
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 316
    return-void

    .line 318
    :cond_7
    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 319
    .local v1, "userId":I
    if-ne v1, v2, :cond_12

    .line 320
    return-void

    .line 322
    :cond_12
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 323
    .local v2, "listener":Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;
    if-nez v2, :cond_17

    .line 324
    return-void

    .line 327
    :cond_17
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_48

    :cond_1f
    goto :goto_33

    :sswitch_20
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v3, 0x0

    goto :goto_33

    :sswitch_2a
    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v3, 0x1

    :goto_33
    packed-switch v3, :pswitch_data_52

    goto :goto_47

    .line 333
    :pswitch_37
    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v3

    if-ne v1, v3, :cond_47

    .line 334
    invoke-interface {v2}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;->onServiceChanged()V

    goto :goto_47

    .line 329
    :pswitch_43
    invoke-interface {v2}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;->onServiceChanged()V

    .line 330
    nop

    .line 340
    :cond_47
    :goto_47
    return-void

    :sswitch_data_48
    .sparse-switch
        0x31af1c32 -> :sswitch_2a
        0x392cb822 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_43
        :pswitch_37
    .end packed-switch
.end method

.method public register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 249
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 251
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    .line 257
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 256
    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    return-void
.end method

.method public unregister()V
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 265
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    return-void
.end method
