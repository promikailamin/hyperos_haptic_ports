.class public final Lcom/android/server/pm/UserTypeDetails;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserTypeDetails$Builder;
    }
.end annotation


# static fields
.field public static final UNLIMITED_NUMBER_OF_USERS:I = -0x1


# instance fields
.field private final mBadgeColors:[I

.field private final mBadgeLabels:[I

.field private final mBadgeNoBackground:I

.field private final mBadgePlain:I

.field private final mBaseType:I

.field private final mDarkThemeBadgeColors:[I

.field private final mDefaultCrossProfileIntentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultRestrictions:Landroid/os/Bundle;

.field private final mDefaultSecureSettings:Landroid/os/Bundle;

.field private final mDefaultSystemSettings:Landroid/os/Bundle;

.field private final mDefaultUserInfoPropertyFlags:I

.field private final mEnabled:Z

.field private final mIconBadge:I

.field private final mIsCredentialSharableWithParent:Z

.field private final mIsMediaSharedWithParent:Z

.field private final mLabel:I

.field private final mMaxAllowed:I

.field private final mMaxAllowedPerParent:I

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ZZ)V
    .registers 36
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "maxAllowed"    # I
    .param p4, "baseType"    # I
    .param p5, "defaultUserInfoPropertyFlags"    # I
    .param p6, "label"    # I
    .param p7, "maxAllowedPerParent"    # I
    .param p8, "iconBadge"    # I
    .param p9, "badgePlain"    # I
    .param p10, "badgeNoBackground"    # I
    .param p11, "badgeLabels"    # [I
    .param p12, "badgeColors"    # [I
    .param p13, "darkThemeBadgeColors"    # [I
    .param p14, "defaultRestrictions"    # Landroid/os/Bundle;
    .param p15, "defaultSystemSettings"    # Landroid/os/Bundle;
    .param p16, "defaultSecureSettings"    # Landroid/os/Bundle;
    .param p18, "isMediaSharedWithParent"    # Z
    .param p19, "isCredentialSharableWithParent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIIIIIIII[I[I[I",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;ZZ)V"
        }
    .end annotation

    .line 177
    .local p17, "defaultCrossProfileIntentFilters":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/DefaultCrossProfileIntentFilter;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 178
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    .line 179
    move/from16 v2, p2

    iput-boolean v2, v0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    .line 180
    move/from16 v3, p3

    iput v3, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    .line 181
    move/from16 v4, p7

    iput v4, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    .line 182
    move/from16 v5, p4

    iput v5, v0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    .line 183
    move/from16 v6, p5

    iput v6, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    .line 184
    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 185
    move-object/from16 v8, p15

    iput-object v8, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSystemSettings:Landroid/os/Bundle;

    .line 186
    move-object/from16 v9, p16

    iput-object v9, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 187
    move-object/from16 v10, p17

    iput-object v10, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    .line 189
    move/from16 v11, p8

    iput v11, v0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    .line 190
    move/from16 v12, p9

    iput v12, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    .line 191
    move/from16 v13, p10

    iput v13, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    .line 192
    move/from16 v14, p6

    iput v14, v0, Lcom/android/server/pm/UserTypeDetails;->mLabel:I

    .line 193
    move-object/from16 v15, p11

    iput-object v15, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    .line 194
    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    .line 195
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    .line 196
    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/android/server/pm/UserTypeDetails;->mIsMediaSharedWithParent:Z

    .line 197
    move/from16 v1, p19

    iput-boolean v1, v0, Lcom/android/server/pm/UserTypeDetails;->mIsCredentialSharableWithParent:Z

    .line 198
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ZZLcom/android/server/pm/UserTypeDetails-IA;)V
    .registers 21

    invoke-direct/range {p0 .. p19}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public addDefaultRestrictionsTo(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "currentRestrictions"    # Landroid/os/Bundle;

    .line 337
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 338
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 359
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBaseType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 362
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMaxAllowed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMaxAllowedPerParent: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 364
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultUserInfoFlags: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLabel: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabel:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "restrictionsPrefix":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "config_defaultFirstUserRestrictions: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    :try_start_84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v1, "restrictions":Landroid/os/Bundle;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, "defaultFirstUserRestrictions":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_96
    if-ge v4, v3, :cond_a7

    aget-object v5, v2, v4

    .line 376
    .local v5, "userRestriction":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 377
    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 375
    .end local v5    # "userRestriction":Ljava/lang/String;
    :cond_a4
    add-int/lit8 v4, v4, 0x1

    goto :goto_96

    .line 380
    :cond_a7
    invoke-static {p1, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_aa
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_84 .. :try_end_aa} :catch_ab

    .end local v1    # "restrictions":Landroid/os/Bundle;
    .end local v2    # "defaultFirstUserRestrictions":[Ljava/lang/String;
    goto :goto_b5

    .line 381
    :catch_ab
    move-exception v1

    .line 382
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "none - resource not found"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_b5
    goto :goto_c3

    .line 385
    :cond_b6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDefaultRestrictions: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 389
    :goto_c3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mIconBadge: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mBadgePlain: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mBadgeNoBackground: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mBadgeLabels.length: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    const-string v2, "0(null)"

    if-eqz v1, :cond_fe

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_ff

    :cond_fe
    move-object v1, v2

    :goto_ff
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mBadgeColors.length: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz v1, :cond_114

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_115

    :cond_114
    move-object v1, v2

    :goto_115
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDarkThemeBadgeColors.length: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v1, :cond_129

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_129
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 398
    return-void
.end method

.method public getBadgeColor(I)I
    .registers 4
    .param p1, "badgeIndex"    # I

    .line 284
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz v0, :cond_14

    array-length v1, v0

    if-eqz v1, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 287
    :cond_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 285
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public getBadgeLabel(I)I
    .registers 4
    .param p1, "badgeIndex"    # I

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    if-eqz v0, :cond_14

    array-length v1, v0

    if-eqz v1, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 275
    :cond_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 273
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method public getBadgeNoBackground()I
    .registers 2

    .line 263
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    return v0
.end method

.method public getBadgePlain()I
    .registers 2

    .line 258
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    return v0
.end method

.method public getDarkThemeBadgeColor(I)I
    .registers 4
    .param p1, "badgeIndex"    # I

    .line 297
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v0, :cond_14

    array-length v1, v0

    if-eqz v1, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 300
    :cond_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 298
    :cond_14
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result v0

    return v0
.end method

.method getDefaultCrossProfileIntentFilters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_10

    .line 354
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 352
    :goto_10
    return-object v0
.end method

.method getDefaultRestrictions()Landroid/os/Bundle;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getDefaultSecureSettings()Landroid/os/Bundle;
    .registers 2

    .line 347
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method getDefaultSystemSettings()Landroid/os/Bundle;
    .registers 2

    .line 342
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSystemSettings:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserInfoFlags()I
    .registers 3

    .line 238
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    iget v1, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getIconBadge()I
    .registers 2

    .line 253
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    return v0
.end method

.method public getLabel()I
    .registers 2

    .line 243
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabel:I

    return v0
.end method

.method public getMaxAllowed()I
    .registers 2

    .line 220
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    return v0
.end method

.method public getMaxAllowedPerParent()I
    .registers 2

    .line 232
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hasBadge()Z
    .registers 2

    .line 248
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCredentialSharableWithParent()Z
    .registers 2

    .line 327
    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mIsCredentialSharableWithParent:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 212
    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    return v0
.end method

.method public isFull()Z
    .registers 2

    .line 308
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isManagedProfile()Z
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMediaSharedWithParent()Z
    .registers 2

    .line 319
    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mIsMediaSharedWithParent:Z

    return v0
.end method

.method public isProfile()Z
    .registers 2

    .line 304
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSystem()Z
    .registers 2

    .line 312
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
