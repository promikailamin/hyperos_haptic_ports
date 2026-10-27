.class public Lcom/android/server/notification/ValidateNotificationPeople;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;,
        Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_PEOPLE_VALIDATOR:Z = true

.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MAX_PEOPLE:I = 0xa

.field static final NONE:F = 0.0f

.field private static final PEOPLE_CACHE_SIZE:I = 0xc8

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final SETTING_ENABLE_PEOPLE_VALIDATOR:Ljava/lang/String; = "validate_notification_people_enabled"

.field static final STARRED_CONTACT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ValidateNoPeople"

.field static final VALID_CONTACT:F = 0.5f

.field private static final VERBOSE:Z


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field protected mEnabled:Z

.field private mEvictionCount:I

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPeopleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUserToContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPeopleCache(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageStats(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmEvictionCount(Lcom/android/server/notification/ValidateNotificationPeople;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCacheKey(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresolveEmailContact(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresolvePhoneContact(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetVERBOSE()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 65
    const-string v0, "ValidateNoPeople"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 66
    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 71
    const-string v0, "_id"

    const-string v1, "lookup"

    const-string/jumbo v2, "starred"

    const-string v3, "has_phone_number"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 78
    const-string v0, "data4"

    const-string v1, "data1"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 11
    .param p1, "lookupResult"    # Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # Landroid/net/Uri;

    .line 474
    const-string v0, "ValidateNoPeople"

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_39

    .line 476
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_1d

    .line 477
    :try_start_12
    const-string v2, "Null cursor from contacts query."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_2d

    .line 483
    if-eqz v1, :cond_1c

    :try_start_19
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_39

    .line 478
    :cond_1c
    return-void

    .line 480
    :cond_1d
    :goto_1d
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 481
    invoke-virtual {p1, v1}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2d

    goto :goto_1d

    .line 483
    :cond_27
    if-eqz v1, :cond_2c

    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_39

    .line 485
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_2c
    goto :goto_3f

    .line 474
    .restart local v1    # "c":Landroid/database/Cursor;
    :catchall_2d
    move-exception v2

    if-eqz v1, :cond_38

    :try_start_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v3

    :try_start_35
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/notification/ValidateNotificationPeople;
    .end local p1    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .end local p2    # "context":Landroid/content/Context;
    .end local p3    # "uri":Landroid/net/Uri;
    :cond_38
    :goto_38
    throw v2
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 483
    .end local v1    # "c":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/android/server/notification/ValidateNotificationPeople;
    .restart local p1    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .restart local p2    # "context":Landroid/content/Context;
    .restart local p3    # "uri":Landroid/net/Uri;
    :catchall_39
    move-exception v1

    .line 484
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Problem getting content resolver or performing contacts query."

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_3f
    return-void
.end method

.method private addWorkContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 7
    .param p1, "lookupResult"    # Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "corpLookupUri"    # Landroid/net/Uri;

    .line 449
    invoke-direct {p0, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->findWorkUserId(Landroid/content/Context;)I

    move-result v0

    .line 450
    .local v0, "workUserId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Work profile user ID not found for work contact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateNoPeople"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return-void

    .line 454
    :cond_20
    nop

    .line 455
    invoke-static {p3, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 456
    .local v1, "corpLookupUriWithUserId":Landroid/net/Uri;
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    .line 457
    return-void
.end method

.method private static combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "first"    # [Ljava/lang/String;
    .param p1, "second"    # [Ljava/lang/String;

    .line 304
    if-nez p0, :cond_3

    .line 305
    return-object p1

    .line 307
    :cond_3
    if-nez p1, :cond_6

    .line 308
    return-object p0

    .line 310
    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 311
    .local v0, "people":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    if-ge v3, v1, :cond_1b

    aget-object v4, p0, v3

    .line 312
    .local v4, "person":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v4    # "person":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 314
    :cond_1b
    array-length v1, p1

    :goto_1c
    if-ge v2, v1, :cond_26

    aget-object v3, p1, v2

    .line 315
    .local v3, "person":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 314
    .end local v3    # "person":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 317
    :cond_26
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private findWorkUserId(Landroid/content/Context;)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 461
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 462
    .local v0, "userManager":Landroid/os/UserManager;
    nop

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v1

    .line 464
    .local v1, "profileIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_22

    aget v4, v1, v3

    .line 465
    .local v4, "profileId":I
    invoke-virtual {v0, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 466
    return v4

    .line 464
    .end local v4    # "profileId":I
    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 469
    :cond_22
    const/4 v2, -0x1

    return v2
.end method

.method private getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "handle"    # Ljava/lang/String;

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 215
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 216
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_32

    .line 218
    :try_start_12
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    const-string v2, "android"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    move-object v0, v1

    .line 219
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_29} :catch_2a

    .line 222
    goto :goto_32

    .line 220
    :catch_2a
    move-exception v1

    .line 221
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ValidateNoPeople"

    const-string v3, "failed to create package context for lookups"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_32
    :goto_32
    return-object v0
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .registers 4
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 298
    const-string v0, "android.people.list"

    invoke-static {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "peopleList":[Ljava/lang/String;
    const-string v1, "android.people"

    invoke-static {p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "legacyPeople":[Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->combineLists([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getExtraPeopleForKey(Landroid/os/Bundle;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "extras"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .line 322
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 323
    .local v0, "people":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 324
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    return-object v1

    .line 327
    :cond_c
    instance-of v1, v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_77

    .line 328
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    .line 330
    .local v1, "arrayList":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 331
    return-object v2

    .line 334
    :cond_1c
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_32

    .line 335
    move-object v2, v1

    .line 336
    .local v2, "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 339
    .end local v2    # "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_32
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/CharSequence;

    if-eqz v4, :cond_54

    .line 340
    move-object v2, v1

    .line 341
    .local v2, "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 342
    .local v3, "N":I
    new-array v4, v3, [Ljava/lang/String;

    .line 343
    .local v4, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_42
    if-ge v5, v3, :cond_53

    .line 344
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 343
    add-int/lit8 v5, v5, 0x1

    goto :goto_42

    .line 346
    .end local v5    # "i":I
    :cond_53
    return-object v4

    .line 349
    .end local v2    # "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3    # "N":I
    .end local v4    # "array":[Ljava/lang/String;
    :cond_54
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Person;

    if-eqz v3, :cond_76

    .line 350
    move-object v2, v1

    .line 351
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 352
    .restart local v3    # "N":I
    new-array v4, v3, [Ljava/lang/String;

    .line 353
    .restart local v4    # "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_64
    if-ge v5, v3, :cond_75

    .line 354
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    invoke-virtual {v6}, Landroid/app/Person;->resolveToLegacyUri()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 353
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 356
    .end local v5    # "i":I
    :cond_75
    return-object v4

    .line 359
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    .end local v3    # "N":I
    .end local v4    # "array":[Ljava/lang/String;
    :cond_76
    return-object v2

    .line 362
    .end local v1    # "arrayList":Ljava/util/ArrayList;
    :cond_77
    instance-of v1, v0, Ljava/lang/String;

    const/4 v4, 0x1

    if-eqz v1, :cond_84

    .line 363
    new-array v1, v4, [Ljava/lang/String;

    .line 364
    .local v1, "array":[Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v3

    .line 365
    return-object v1

    .line 368
    .end local v1    # "array":[Ljava/lang/String;
    :cond_84
    instance-of v1, v0, [C

    if-eqz v1, :cond_95

    .line 369
    new-array v1, v4, [Ljava/lang/String;

    .line 370
    .restart local v1    # "array":[Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    move-object v4, v0

    check-cast v4, [C

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([C)V

    aput-object v2, v1, v3

    .line 371
    return-object v1

    .line 374
    .end local v1    # "array":[Ljava/lang/String;
    :cond_95
    instance-of v1, v0, Ljava/lang/CharSequence;

    if-eqz v1, :cond_a5

    .line 375
    new-array v1, v4, [Ljava/lang/String;

    .line 376
    .restart local v1    # "array":[Ljava/lang/String;
    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 377
    return-object v1

    .line 380
    .end local v1    # "array":[Ljava/lang/String;
    :cond_a5
    instance-of v1, v0, [Ljava/lang/CharSequence;

    if-eqz v1, :cond_be

    .line 381
    move-object v1, v0

    check-cast v1, [Ljava/lang/CharSequence;

    .line 382
    .local v1, "charSeqArray":[Ljava/lang/CharSequence;
    array-length v2, v1

    .line 383
    .local v2, "N":I
    new-array v3, v2, [Ljava/lang/String;

    .line 384
    .local v3, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b0
    if-ge v4, v2, :cond_bd

    .line 385
    aget-object v5, v1, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 384
    add-int/lit8 v4, v4, 0x1

    goto :goto_b0

    .line 387
    .end local v4    # "i":I
    :cond_bd
    return-object v3

    .line 390
    .end local v1    # "charSeqArray":[Ljava/lang/CharSequence;
    .end local v2    # "N":I
    .end local v3    # "array":[Ljava/lang/String;
    :cond_be
    return-object v2
.end method

.method private resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;

    .line 400
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 402
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 403
    .local v0, "numberUri":Landroid/net/Uri;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .line 394
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 395
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 396
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 229
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v7, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 231
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v8, 0x1

    new-array v9, v8, [F

    .line 232
    .local v9, "affinityOut":[F
    nop

    .line 233
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v6

    move-object v3, v7

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v0

    .line 234
    .local v0, "rr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v1, 0x0

    aget v2, v9, v1

    .line 235
    .local v2, "affinity":F
    invoke-virtual {p2, v2}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 236
    if-nez v0, :cond_38

    .line 237
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2c

    move v4, v8

    goto :goto_2d

    :cond_2c
    move v4, v1

    :goto_2d
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v5

    if-nez v5, :cond_34

    move v1, v8

    :cond_34
    invoke-virtual {v3, p2, v4, v1, v8}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    goto :goto_3b

    .line 240
    :cond_38
    invoke-virtual {v0, p2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->setRecord(Lcom/android/server/notification/NotificationRecord;)V

    .line 242
    :goto_3b
    return-object v0
.end method

.method private validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p5, "affinityOut"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[F)",
            "Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;"
        }
    .end annotation

    .line 247
    .local p4, "peopleOverride":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const/4 v0, 0x0

    .line 248
    .local v0, "affinity":F
    const/4 v1, 0x0

    if-nez p3, :cond_9

    .line 249
    return-object v1

    .line 251
    :cond_9
    new-instance v2, Landroid/util/ArraySet;

    move-object/from16 v9, p4

    invoke-direct {v2, v9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v10, v2

    .line 252
    .local v10, "people":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v11

    .line 253
    .local v11, "notificationPeople":[Ljava/lang/String;
    if-eqz v11, :cond_1e

    .line 254
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 257
    :cond_1e
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v2, :cond_48

    const-string v2, "ValidateNoPeople"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_48
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v12, v2

    .line 259
    .local v12, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 260
    .local v2, "personIdx":I
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    move v2, v0

    .end local v0    # "affinity":F
    .local v2, "affinity":F
    .local v4, "personIdx":I
    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 261
    .local v5, "handle":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_69

    goto :goto_55

    .line 263
    :cond_69
    iget-object v6, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v6

    .line 264
    :try_start_6c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {v7, v0, v5}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v13, v7, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v13, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 266
    .local v13, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    if-eqz v13, :cond_92

    invoke-static {v13}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->-$$Nest$misExpired(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    move-result v14

    if-eqz v14, :cond_85

    goto :goto_92

    .line 269
    :cond_85
    sget-boolean v14, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v14, :cond_95

    const-string v14, "ValidateNoPeople"

    const-string/jumbo v15, "using cached lookupResult"

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 267
    :cond_92
    :goto_92
    invoke-virtual {v12, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_95
    :goto_95
    if-eqz v13, :cond_a0

    .line 272
    invoke-virtual {v13}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v14

    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    move v2, v14

    .line 274
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v13    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :cond_a0
    monitor-exit v6

    .line 275
    add-int/lit8 v4, v4, 0x1

    const/16 v0, 0xa

    if-ne v4, v0, :cond_aa

    .line 276
    move v0, v2

    move v13, v4

    goto :goto_b0

    .line 278
    .end local v5    # "handle":Ljava/lang/String;
    :cond_aa
    goto :goto_55

    .line 274
    .restart local v5    # "handle":Ljava/lang/String;
    :catchall_ab
    move-exception v0

    monitor-exit v6
    :try_end_ad
    .catchall {:try_start_6c .. :try_end_ad} :catchall_ab

    throw v0

    .line 260
    .end local v5    # "handle":Ljava/lang/String;
    :cond_ae
    move v0, v2

    move v13, v4

    .line 281
    .end local v2    # "affinity":F
    .end local v4    # "personIdx":I
    .local v0, "affinity":F
    .local v13, "personIdx":I
    :goto_b0
    const/4 v2, 0x0

    aput v0, p5, v2

    .line 283
    invoke-virtual {v12}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d6

    .line 284
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v2, :cond_d5

    const-string v2, "ValidateNoPeople"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "final affinity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_d5
    return-object v1

    .line 288
    :cond_d6
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v1, :cond_f2

    const-string v1, "ValidateNoPeople"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pending: future work scheduled for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_f2
    new-instance v14, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    const/4 v6, 0x0

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration-IA;)V

    return-object v14
.end method


# virtual methods
.method public getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
    .registers 16
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "timeoutMs"    # I
    .param p4, "timeoutAffinity"    # F

    .line 173
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    const-string v1, "ValidateNoPeople"

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checking affinity for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1c
    const/4 v0, 0x0

    if-nez p2, :cond_20

    return v0

    .line 175
    :cond_20
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "key":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [F

    .line 177
    .local v3, "affinityOut":[F
    invoke-direct {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    .line 178
    .local v10, "context":Landroid/content/Context;
    if-nez v10, :cond_32

    .line 179
    return v0

    .line 181
    :cond_32
    const/4 v8, 0x0

    .line 182
    move-object v4, p0

    move-object v5, v10

    move-object v6, v2

    move-object v7, p2

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v0

    .line 183
    .local v0, "prr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v4, 0x0

    aget v5, v3, v4

    .line 185
    .local v5, "affinity":F
    if-eqz v0, :cond_a7

    .line 188
    new-instance v6, Ljava/util/concurrent/Semaphore;

    invoke-direct {v6, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    move-object v4, v6

    .line 189
    .local v4, "s":Ljava/util/concurrent/Semaphore;
    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/server/notification/ValidateNotificationPeople$2;

    invoke-direct {v7, p0, v0, v4}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 198
    int-to-long v6, p3

    :try_start_52
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v8}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-nez v6, :cond_7b

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout while waiting for affinity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Returning timeoutAffinity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_7a} :catch_85

    .line 201
    return p4

    .line 207
    :cond_7b
    nop

    .line 209
    invoke-virtual {v0}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->getContactAffinity()F

    move-result v1

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    goto :goto_a7

    .line 203
    :catch_85
    move-exception v6

    .line 204
    .local v6, "e":Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "InterruptedException while waiting for affinity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Returning affinity="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    return v5

    .line 211
    .end local v4    # "s":Ljava/util/concurrent/Semaphore;
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_a7
    :goto_a7
    return v5
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 109
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initializing  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ValidateNoPeople"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2a
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 111
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 113
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 114
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    const-string/jumbo v1, "validate_notification_people_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v2, v0, :cond_50

    move v0, v2

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    .line 116
    if-eqz v0, :cond_73

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    .line 118
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$1;

    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    .line 129
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 132
    :cond_73
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 6
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 135
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    const-string v1, "ValidateNoPeople"

    const/4 v2, 0x0

    if-nez v0, :cond_11

    .line 136
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_10

    const-string v0, "disabled"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_10
    return-object v2

    .line 139
    :cond_11
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_46

    .line 143
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2c

    .line 144
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_2b

    const-string/jumbo v0, "skipping global notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_2b
    return-object v2

    .line 147
    :cond_2c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_41

    .line 149
    sget-boolean v3, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v3, :cond_40

    const-string/jumbo v3, "skipping notification that lacks a context"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_40
    return-object v2

    .line 152
    :cond_41
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v1

    return-object v1

    .line 140
    .end local v0    # "context":Landroid/content/Context;
    :cond_46
    :goto_46
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v0, :cond_50

    const-string/jumbo v0, "skipping empty notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_50
    return-object v2
.end method

.method searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .line 408
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 409
    .local v0, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    nop

    .line 410
    invoke-static {p2}, Landroid/provider/ContactsContract$Contacts;->createCorpLookupUriFromEnterpriseLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 411
    .local v1, "corpLookupUri":Landroid/net/Uri;
    if-nez v1, :cond_10

    .line 412
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->addContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_13

    .line 414
    :cond_10
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->addWorkContacts(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;Landroid/content/Context;Landroid/net/Uri;)V

    .line 416
    :goto_13
    return-object v0
.end method

.method searchContactsAndLookupNumbers(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .line 425
    const-string v0, "ValidateNoPeople"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    .line 426
    .local v1, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    invoke-virtual {v1}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getPhoneLookupKey()Ljava/lang/String;

    move-result-object v2

    .line 427
    .local v2, "phoneLookupKey":Ljava/lang/String;
    if-eqz v2, :cond_52

    .line 428
    const-string v9, "lookup = ?"

    .line 429
    .local v9, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v7, v3

    .line 430
    .local v7, "selectionArgs":[Ljava/lang/String;
    :try_start_14
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/server/notification/ValidateNotificationPeople;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    move-object v6, v9

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_4c

    .line 433
    .local v3, "cursor":Landroid/database/Cursor;
    if-nez v3, :cond_30

    .line 434
    :try_start_24
    const-string v4, "Cursor is null when querying contact phone number."

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_40

    .line 435
    nop

    .line 441
    if-eqz v3, :cond_2f

    :try_start_2c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_4c

    .line 435
    :cond_2f
    return-object v1

    .line 438
    :cond_30
    :goto_30
    :try_start_30
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 439
    invoke-virtual {v1, v3}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergePhoneNumber(Landroid/database/Cursor;)V
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_40

    goto :goto_30

    .line 441
    :cond_3a
    if-eqz v3, :cond_3f

    :try_start_3c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4c

    .line 443
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3f
    goto :goto_52

    .line 430
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_40
    move-exception v4

    if-eqz v3, :cond_4b

    :try_start_43
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_47

    goto :goto_4b

    :catchall_47
    move-exception v5

    :try_start_48
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .end local v2    # "phoneLookupKey":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "selection":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/notification/ValidateNotificationPeople;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "lookupUri":Landroid/net/Uri;
    :cond_4b
    :goto_4b
    throw v4
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_4c

    .line 441
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .restart local v2    # "phoneLookupKey":Ljava/lang/String;
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "selection":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/notification/ValidateNotificationPeople;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "lookupUri":Landroid/net/Uri;
    :catchall_4c
    move-exception v3

    .line 442
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "Problem getting content resolver or querying phone numbers."

    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "selection":Ljava/lang/String;
    :cond_52
    :goto_52
    return-object v1
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .line 158
    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2
    .param p1, "helper"    # Lcom/android/server/notification/ZenModeHelper;

    .line 163
    return-void
.end method
