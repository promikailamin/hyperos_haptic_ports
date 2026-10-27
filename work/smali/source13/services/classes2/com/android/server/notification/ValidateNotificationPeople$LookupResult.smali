.class Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupResult"
.end annotation


# static fields
.field private static final CONTACT_REFRESH_MILLIS:J = 0x36ee80L


# instance fields
.field private mAffinity:F

.field private final mExpireMillis:J

.field private mHasPhone:Z

.field private mPhoneLookupKey:Ljava/lang/String;

.field private mPhoneNumbers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$misExpired(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 5

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    .line 495
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    .line 498
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    .line 499
    return-void
.end method

.method private isExpired()Z
    .registers 5

    .line 578
    iget-wide v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mExpireMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isInvalid()Z
    .registers 3

    .line 582
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method


# virtual methods
.method public getAffinity()F
    .registers 2

    .line 586
    invoke-direct {p0}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 587
    const/4 v0, 0x0

    return v0

    .line 589
    :cond_8
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    return v0
.end method

.method public getPhoneLookupKey()Ljava/lang/String;
    .registers 2

    .line 549
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    if-nez v0, :cond_6

    .line 550
    const/4 v0, 0x0

    return-object v0

    .line 552
    :cond_6
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumbers()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 574
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    return-object v0
.end method

.method public mergeContact(Landroid/database/Cursor;)V
    .registers 12
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 502
    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 506
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 507
    .local v0, "idIdx":I
    const-string v1, "ValidateNoPeople"

    if-ltz v0, :cond_35

    .line 508
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 509
    .local v2, "id":I
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_3b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact _ID is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 511
    .end local v2    # "id":I
    :cond_35
    const/4 v2, -0x1

    .line 512
    .restart local v2    # "id":I
    const-string v3, "invalid cursor: no _ID"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_3b
    :goto_3b
    const-string v3, "lookup"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 517
    .local v3, "lookupKeyIdx":I
    if-ltz v3, :cond_68

    .line 518
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    .line 519
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_73

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact LOOKUP_KEY is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneLookupKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 521
    :cond_68
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_73

    const-string v4, "invalid cursor: no LOOKUP_KEY"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_73
    :goto_73
    const-string/jumbo v4, "starred"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 526
    .local v4, "starIdx":I
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ltz v4, :cond_b0

    .line 527
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_86

    move v7, v5

    goto :goto_87

    :cond_86
    move v7, v6

    .line 528
    .local v7, "isStarred":Z
    :goto_87
    if-eqz v7, :cond_93

    .line 529
    iget v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mAffinity:F

    .line 531
    :cond_93
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v8

    if-eqz v8, :cond_af

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact STARRED is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    .end local v7    # "isStarred":Z
    :cond_af
    goto :goto_bb

    .line 533
    :cond_b0
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_bb

    const-string v7, "invalid cursor: no STARRED"

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_bb
    :goto_bb
    const-string v7, "has_phone_number"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 538
    .local v7, "hasPhoneIdx":I
    if-ltz v7, :cond_ec

    .line 539
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v8, :cond_ca

    goto :goto_cb

    :cond_ca
    move v5, v6

    :goto_cb
    iput-boolean v5, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    .line 540
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_f7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact HAS_PHONE_NUMBER is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mHasPhone:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f7

    .line 542
    :cond_ec
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v5

    if-eqz v5, :cond_f7

    const-string v5, "invalid cursor: no HAS_PHONE_NUMBER"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_f7
    :goto_f7
    return-void
.end method

.method public mergePhoneNumber(Landroid/database/Cursor;)V
    .registers 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 557
    const-string v0, "data4"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 559
    .local v0, "normalizedNumIdx":I
    const-string v1, "ValidateNoPeople"

    if-ltz v0, :cond_14

    .line 560
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 562
    :cond_14
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "cursor data not found: no NORMALIZED_NUMBER"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_1f
    :goto_1f
    const-string v2, "data1"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 566
    .local v2, "numIdx":I
    if-ltz v2, :cond_31

    .line 567
    iget-object v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mPhoneNumbers:Landroid/util/ArraySet;

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3c

    .line 569
    :cond_31
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_3c

    const-string v3, "cursor data not found: no NUMBER"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_3c
    :goto_3c
    return-void
.end method
