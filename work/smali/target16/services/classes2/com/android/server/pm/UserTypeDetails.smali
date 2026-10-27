.class public final Lcom/android/server/pm/UserTypeDetails;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# instance fields
.field public final mAccessibilityString:I

.field public final mBadgeColors:[I

.field public final mBadgeLabels:[I

.field public final mBadgeNoBackground:I

.field public final mBadgePlain:I

.field public final mBaseType:I

.field public final mDarkThemeBadgeColors:[I

.field public final mDefaultCrossProfileIntentFilters:Ljava/util/List;

.field public final mDefaultRestrictions:Landroid/os/Bundle;

.field public final mDefaultSecureSettings:Landroid/os/Bundle;

.field public final mDefaultSystemSettings:Landroid/os/Bundle;

.field public final mDefaultUserInfoPropertyFlags:I

.field public final mDefaultUserProperties:Landroid/content/pm/UserProperties;

.field public final mEnabled:Z

.field public final mIconBadge:I

.field public final mLabels:[I

.field public final mMaxAllowed:I

.field public final mMaxAllowedPerParent:I

.field public final mName:Ljava/lang/String;

.field public final mProfileParentRequired:Z

.field public final mStatusBarIcon:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;)V
    .registers 22

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    .line 183
    iput-boolean p2, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    .line 184
    iput p3, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    .line 185
    iput p7, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    .line 186
    iput p4, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    .line 187
    iput p5, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    move-object/from16 p1, p16

    .line 188
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 p1, p17

    .line 189
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSystemSettings:Landroid/os/Bundle;

    move-object/from16 p1, p18

    .line 190
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 p1, p19

    .line 191
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    .line 192
    iput-boolean p8, p0, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    .line 193
    iput p9, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    .line 194
    iput p10, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    .line 195
    iput p11, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    .line 196
    iput p12, p0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    .line 197
    iput-object p6, p0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    .line 198
    iput-object p13, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    .line 199
    iput-object p14, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    .line 200
    iput-object p15, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    move/from16 p1, p20

    .line 201
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails;->mAccessibilityString:I

    move-object/from16 p1, p21

    .line 202
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;Lcom/android/server/pm/UserTypeDetails-IA;)V
    .registers 23

    .line 0
    invoke-direct/range {p0 .. p21}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIII[IIZIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ILandroid/content/pm/UserProperties;)V

    return-void
.end method


# virtual methods
.method public addDefaultRestrictionsTo(Landroid/os/Bundle;)V
    .registers 2

    .line 362
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 393
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBaseType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMaxAllowed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mMaxAllowedPerParent: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 398
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultUserInfoFlags: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 399
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/UserProperties;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mDefaultRestrictions: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProfileParentRequired: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 407
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIconBadge: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 408
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBadgePlain: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBadgeNoBackground: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 410
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStatusBarIcon: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 411
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBadgeLabels.length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    const-string v1, "0(null)"

    if-eqz v0, :cond_ce

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_cf

    :cond_ce
    move-object v0, v1

    :goto_cf
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 413
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBadgeColors.length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz v0, :cond_e4

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_e5

    :cond_e4
    move-object v0, v1

    :goto_e5
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 415
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDarkThemeBadgeColors.length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v0, :cond_fa

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_fb

    :cond_fa
    move-object v0, v1

    :goto_fb
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 417
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mLabels.length: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    if-eqz p0, :cond_10f

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_10f
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getAccessibilityString()I
    .registers 1

    .line 334
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mAccessibilityString:I

    return p0
.end method

.method public getBadgeColor(I)I
    .registers 3

    .line 305
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz p0, :cond_14

    array-length v0, p0

    if-eqz v0, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 308
    :cond_a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public getBadgeLabel(I)I
    .registers 3

    .line 293
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    if-eqz p0, :cond_14

    array-length v0, p0

    if-eqz v0, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 296
    :cond_a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public getBadgeNoBackground()I
    .registers 1

    .line 279
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    return p0
.end method

.method public getBadgePlain()I
    .registers 1

    .line 274
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    return p0
.end method

.method public getDarkThemeBadgeColor(I)I
    .registers 4

    .line 318
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v0, :cond_14

    array-length v1, v0

    if-eqz v1, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 321
    :cond_a
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget p0, v0, p0

    return p0

    .line 319
    :cond_14
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result p0

    return p0
.end method

.method public getDefaultCrossProfileIntentFilters()Ljava/util/List;
    .registers 2

    .line 377
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 379
    :cond_c
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public getDefaultRestrictions()Landroid/os/Bundle;
    .registers 1

    .line 357
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSecureSettings()Landroid/os/Bundle;
    .registers 1

    .line 372
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSystemSettings()Landroid/os/Bundle;
    .registers 1

    .line 367
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSystemSettings:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultUserInfoFlags()I
    .registers 2

    .line 239
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getDefaultUserPropertiesReference()Landroid/content/pm/UserProperties;
    .registers 1

    .line 330
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserProperties:Landroid/content/pm/UserProperties;

    return-object p0
.end method

.method public getIconBadge()I
    .registers 1

    .line 269
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    return p0
.end method

.method public getLabel(I)I
    .registers 3

    .line 256
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabels:[I

    if-eqz p0, :cond_14

    array-length v0, p0

    if-eqz v0, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 259
    :cond_a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public getMaxAllowed()I
    .registers 1

    .line 222
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    return p0
.end method

.method public getMaxAllowedPerParent()I
    .registers 1

    .line 233
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getStatusBarIcon()I
    .registers 1

    .line 284
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mStatusBarIcon:I

    return p0
.end method

.method public hasBadge()Z
    .registers 1

    .line 264
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isDemo()Z
    .registers 1

    .line 684
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeDemo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 217
    iget-boolean p0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    return p0
.end method

.method public isFull()Z
    .registers 1

    .line 342
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isGuest()Z
    .registers 1

    .line 679
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeGuest(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isProfile()Z
    .registers 1

    .line 338
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isProfileParentRequired()Z
    .registers 1

    .line 247
    iget-boolean p0, p0, Lcom/android/server/pm/UserTypeDetails;->mProfileParentRequired:Z

    return p0
.end method

.method public isSystem()Z
    .registers 1

    .line 346
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public supportsSwitchTo()Z
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    invoke-static {v0, p0}, Landroid/content/pm/UserInfo;->supportsSwitchTo(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
