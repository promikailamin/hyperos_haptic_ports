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
.field private static final blacklist EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field private static final blacklist EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field private static final blacklist NO_MATCH_PACKAGE:Ljava/lang/String; = ""

.field private static final blacklist TAG:Ljava/lang/String; = "CurrentUserServiceSupplier"

.field private static final blacklist sBoundServiceInfoComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityManager:Landroid/app/ActivityManagerInternal;

.field private final blacklist mCallerPermission:Ljava/lang/String;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntent:Landroid/content/Intent;

.field private volatile blacklist mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

.field private final blacklist mMatchSystemAppsOnly:Z

.field private final blacklist mServicePermission:Ljava/lang/String;

.field private blacklist mUnstableService:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Ljava/util/Comparator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 240
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    .line 242
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 243
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 242
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    .line 244
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 246
    if-eqz p3, :cond_23

    .line 247
    iget-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_23
    iput-object p4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    .line 251
    iput-object p5, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    .line 252
    iput-boolean p6, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    .line 253
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 12

    .line 183
    nop

    .line 184
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 4

    .line 162
    invoke-static {p0, p2, p3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->retrieveExplicitPackage(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p2

    .line 164
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3, p3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist createUnsafeForTestsOnly(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
    .registers 12

    .line 197
    nop

    .line 198
    new-instance v0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)I
    .registers 6

    .line 82
    if-ne p0, p1, :cond_4

    .line 83
    const/4 p0, 0x0

    return p0

    .line 84
    :cond_4
    const/4 v0, -0x1

    if-nez p0, :cond_8

    .line 85
    return v0

    .line 86
    :cond_8
    const/4 v1, 0x1

    if-nez p1, :cond_c

    .line 87
    return v1

    .line 93
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getVersion()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getVersion()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    .line 94
    if-nez v2, :cond_35

    .line 95
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v3

    if-eqz v3, :cond_27

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result v3

    if-nez v3, :cond_27

    .line 96
    goto :goto_36

    .line 97
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result p0

    if-nez p0, :cond_35

    invoke-virtual {p1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getUserId()I

    move-result p0

    if-eqz p0, :cond_35

    .line 98
    move v0, v1

    goto :goto_36

    .line 101
    :cond_35
    move v0, v2

    :goto_36
    return v0
.end method

.method private static blacklist retrieveExplicitPackage(Landroid/content/Context;II)Ljava/lang/String;
    .registers 4

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 205
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 206
    if-nez p1, :cond_2c

    .line 207
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->fixServiceWatcher()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 209
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 211
    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p0

    .line 212
    if-nez p0, :cond_22

    .line 213
    const-string p0, ""

    return-object p0

    .line 215
    :cond_22
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 218
    :cond_27
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_2c
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist alertUnstableService(Ljava/lang/String;)V
    .registers 2

    .line 364
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public blacklist getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
    .registers 9

    .line 296
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->fixServiceWatcher()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 297
    return-object v1

    .line 300
    :cond_16
    nop

    .line 303
    nop

    .line 304
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    if-eqz v0, :cond_20

    .line 305
    const v0, 0x10100080

    goto :goto_23

    .line 304
    :cond_20
    const v0, 0x10000080

    .line 307
    :goto_23
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    .line 308
    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 313
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 315
    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    const-string v5, "CurrentUserServiceSupplier"

    if-eqz v4, :cond_82

    .line 316
    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    iget-object v6, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " disqualified due to not requiring "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    goto :goto_39

    .line 323
    :cond_82
    new-instance v3, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V

    .line 325
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    if-eqz v2, :cond_c4

    .line 326
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mServicePermission:Ljava/lang/String;

    const/4 v6, -0x1

    iget v7, v3, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mUid:I

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_c4

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " disqualified due to not holding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mCallerPermission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    goto/16 :goto_39

    .line 335
    :cond_c4
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    if-eqz v2, :cond_134

    if-eqz v1, :cond_134

    .line 336
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not choosing unstable service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as we already have a service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 338
    invoke-virtual {v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 337
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    goto/16 :goto_39

    .line 340
    :cond_fe
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_134

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Choosing service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " over the unstable service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mUnstableService:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    nop

    .line 344
    move-object v1, v3

    goto/16 :goto_39

    .line 348
    :cond_134
    sget-object v2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->sBoundServiceInfoComparator:Ljava/util/Comparator;

    invoke-interface {v2, v3, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_13d

    .line 349
    move-object v1, v3

    .line 351
    :cond_13d
    goto/16 :goto_39

    .line 353
    :cond_13f
    return-object v1
.end method

.method public bridge synthetic blacklist getServiceInfo()Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
    .registers 2

    .line 69
    invoke-virtual {p0}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->getServiceInfo()Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasMatchingService()Z
    .registers 5

    .line 257
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/location/flags/Flags;->fixServiceWatcher()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 258
    return v1

    .line 261
    :cond_16
    nop

    .line 262
    iget-boolean v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mMatchSystemAppsOnly:Z

    if-eqz v0, :cond_1e

    .line 263
    const/high16 v0, 0x1c0000

    goto :goto_20

    .line 262
    :cond_1e
    const/high16 v0, 0xc0000

    .line 265
    :goto_20
    iget-object v2, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mIntent:Landroid/content/Intent;

    .line 266
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 269
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 370
    if-nez p1, :cond_7

    .line 371
    return-void

    .line 373
    :cond_7
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 374
    if-ne p2, v1, :cond_12

    .line 375
    return-void

    .line 377
    :cond_12
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 378
    if-nez v0, :cond_17

    .line 379
    return-void

    .line 382
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_4a

    :cond_1e
    goto :goto_33

    :sswitch_1f
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    goto :goto_34

    :sswitch_29
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_34

    :goto_33
    const/4 p1, -0x1

    :goto_34
    packed-switch p1, :pswitch_data_54

    goto :goto_48

    .line 388
    :pswitch_38
    iget-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mActivityManager:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p1

    if-ne p2, p1, :cond_48

    .line 389
    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;->onServiceChanged()V

    goto :goto_48

    .line 384
    :pswitch_44
    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;->onServiceChanged()V

    .line 385
    nop

    .line 395
    :cond_48
    :goto_48
    return-void

    nop

    :sswitch_data_4a
    .sparse-switch
        0x31af1c32 -> :sswitch_29
        0x392cb822 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_44
        :pswitch_38
    .end packed-switch
.end method

.method public blacklist register(Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;)V
    .registers 9

    .line 274
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 276
    iput-object p1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 278
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 279
    const-string p1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string p1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const/16 p1, 0x3e8

    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 282
    iget-object v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 283
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 282
    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 284
    return-void
.end method

.method public blacklist unregister()V
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mListener:Lcom/android/server/servicewatcher/ServiceWatcher$ServiceChangedListener;

    .line 291
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    return-void
.end method
