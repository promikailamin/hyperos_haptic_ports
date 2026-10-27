.class public Landroid/content/RestrictionEntry;
.super Ljava/lang/Object;
.source "RestrictionEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_BOOLEAN:I = 0x1

.field public static final whitelist TYPE_BUNDLE:I = 0x7

.field public static final whitelist TYPE_BUNDLE_ARRAY:I = 0x8

.field public static final whitelist TYPE_CHOICE:I = 0x2

.field public static final greylist-max-o TYPE_CHOICE_LEVEL:I = 0x3

.field public static final whitelist TYPE_INTEGER:I = 0x5

.field public static final whitelist TYPE_MULTI_SELECT:I = 0x4

.field public static final whitelist TYPE_NULL:I = 0x0

.field public static final whitelist TYPE_STRING:I = 0x6


# instance fields
.field private greylist-max-o mChoiceEntries:[Ljava/lang/String;

.field private greylist-max-o mChoiceValues:[Ljava/lang/String;

.field private greylist-max-o mCurrentValue:Ljava/lang/String;

.field private greylist-max-o mCurrentValues:[Ljava/lang/String;

.field private greylist-max-o mDescription:Ljava/lang/String;

.field private greylist-max-o mKey:Ljava/lang/String;

.field private greylist-max-o mRestrictions:[Landroid/content/RestrictionEntry;

.field private greylist-max-o mTitle:Ljava/lang/String;

.field private greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 535
    new-instance v0, Landroid/content/RestrictionEntry$1;

    invoke-direct {v0}, Landroid/content/RestrictionEntry$1;-><init>()V

    sput-object v0, Landroid/content/RestrictionEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    .line 147
    iput-object p2, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/RestrictionEntry;->mType:I

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    .line 508
    const/4 v0, 0x0

    const-class v1, Landroid/content/RestrictionEntry;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/os/Parcelable;

    .line 509
    if-eqz p1, :cond_52

    .line 510
    array-length v0, p1

    new-array v0, v0, [Landroid/content/RestrictionEntry;

    iput-object v0, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    .line 511
    const/4 v0, 0x0

    :goto_44
    array-length v1, p1

    if-ge v0, v1, :cond_52

    .line 512
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    aget-object v2, p1, v0

    check-cast v2, Landroid/content/RestrictionEntry;

    aput-object v2, v1, v0

    .line 511
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 515
    :cond_52
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    .line 190
    const/4 p1, 0x5

    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    .line 191
    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setIntValue(I)V

    .line 192
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    .line 157
    const/4 p1, 0x2

    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    .line 158
    iput-object p2, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Z)V
    .registers 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    .line 168
    const/4 p1, 0x1

    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    .line 169
    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    .line 170
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;[Landroid/content/RestrictionEntry;Z)V
    .registers 6

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    .line 207
    const/4 p1, 0x7

    if-eqz p3, :cond_25

    .line 208
    const/16 p3, 0x8

    iput p3, p0, Landroid/content/RestrictionEntry;->mType:I

    .line 209
    if-eqz p2, :cond_27

    .line 210
    array-length p3, p2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, p3, :cond_27

    aget-object v1, p2, v0

    .line 211
    invoke-virtual {v1}, Landroid/content/RestrictionEntry;->getType()I

    move-result v1

    if-ne v1, p1, :cond_1d

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 212
    :cond_1d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bundle_array restriction can only have nested restriction entries of type bundle"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_25
    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    .line 220
    :cond_27
    invoke-virtual {p0, p2}, Landroid/content/RestrictionEntry;->setRestrictions([Landroid/content/RestrictionEntry;)V

    .line 221
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    .line 179
    const/4 p1, 0x4

    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    .line 180
    iput-object p2, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    .line 181
    return-void
.end method

.method public static whitelist createBundleArrayEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;
    .registers 4

    .line 243
    new-instance v0, Landroid/content/RestrictionEntry;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;[Landroid/content/RestrictionEntry;Z)V

    return-object v0
.end method

.method public static whitelist createBundleEntry(Ljava/lang/String;[Landroid/content/RestrictionEntry;)Landroid/content/RestrictionEntry;
    .registers 4

    .line 231
    new-instance v0, Landroid/content/RestrictionEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;[Landroid/content/RestrictionEntry;Z)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 457
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 458
    :cond_4
    instance-of v1, p1, Landroid/content/RestrictionEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 459
    :cond_a
    check-cast p1, Landroid/content/RestrictionEntry;

    .line 460
    iget v1, p0, Landroid/content/RestrictionEntry;->mType:I

    iget v3, p1, Landroid/content/RestrictionEntry;->mType:I

    if-ne v1, v3, :cond_6f

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_6f

    .line 463
    :cond_1d
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    if-nez v1, :cond_38

    iget-object v1, p1, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-nez v1, :cond_38

    iget-object v1, p1, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-nez v1, :cond_38

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    .line 465
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 466
    return v0

    .line 468
    :cond_38
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_53

    iget-object v1, p1, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_53

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-nez v1, :cond_53

    iget-object v1, p1, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-nez v1, :cond_53

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    iget-object v3, p1, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    .line 470
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 471
    return v0

    .line 473
    :cond_53
    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_6e

    iget-object v1, p1, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_6e

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_6e

    iget-object v1, p1, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-nez v1, :cond_6e

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    iget-object p1, p1, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    .line 475
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 476
    return v0

    .line 478
    :cond_6e
    return v2

    .line 461
    :cond_6f
    :goto_6f
    return v2
.end method

.method public whitelist getAllSelectedStrings()[Ljava/lang/String;
    .registers 2

    .line 277
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChoiceEntries()[Ljava/lang/String;
    .registers 2

    .line 410
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getChoiceValues()[Ljava/lang/String;
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .registers 2

    .line 418
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getIntValue()I
    .registers 2

    .line 293
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 2

    .line 436
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRestrictions()[Landroid/content/RestrictionEntry;
    .registers 2

    .line 363
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    return-object v0
.end method

.method public whitelist getSelectedState()Z
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist getSelectedString()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .registers 2

    .line 444
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 259
    iget v0, p0, Landroid/content/RestrictionEntry;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 483
    nop

    .line 484
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    .line 485
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 486
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_3d

    .line 487
    :cond_18
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 488
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_3d

    aget-object v4, v0, v3

    .line 489
    if-eqz v4, :cond_2d

    .line 490
    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int/2addr v1, v4

    .line 488
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 493
    :cond_30
    iget-object v0, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    if-eqz v0, :cond_3d

    .line 494
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    .line 496
    :cond_3d
    :goto_3d
    return v1
.end method

.method public whitelist setAllSelectedStrings([Ljava/lang/String;)V
    .registers 2

    .line 328
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    .line 329
    return-void
.end method

.method public whitelist setChoiceEntries(Landroid/content/Context;I)V
    .registers 3

    .line 402
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    .line 403
    return-void
.end method

.method public whitelist setChoiceEntries([Ljava/lang/String;)V
    .registers 2

    .line 393
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    .line 394
    return-void
.end method

.method public whitelist setChoiceValues(Landroid/content/Context;I)V
    .registers 3

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    .line 357
    return-void
.end method

.method public whitelist setChoiceValues([Ljava/lang/String;)V
    .registers 2

    .line 345
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    .line 346
    return-void
.end method

.method public whitelist setDescription(Ljava/lang/String;)V
    .registers 2

    .line 428
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public whitelist setIntValue(I)V
    .registers 2

    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public whitelist setRestrictions([Landroid/content/RestrictionEntry;)V
    .registers 2

    .line 372
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    .line 373
    return-void
.end method

.method public whitelist setSelectedState(Z)V
    .registers 2

    .line 319
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    .line 320
    return-void
.end method

.method public whitelist setSelectedString(Ljava/lang/String;)V
    .registers 2

    .line 310
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public whitelist setTitle(Ljava/lang/String;)V
    .registers 2

    .line 452
    iput-object p1, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public whitelist setType(I)V
    .registers 2

    .line 251
    iput p1, p0, Landroid/content/RestrictionEntry;->mType:I

    .line 252
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestrictionEntry{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/RestrictionEntry;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mChoiceEntries="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    .line 552
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mChoiceValues="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    .line 553
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mCurrentValue=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCurrentValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    .line 555
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRestrictions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    .line 556
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 547
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 524
    iget p2, p0, Landroid/content/RestrictionEntry;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-object p2, p0, Landroid/content/RestrictionEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object p2, p0, Landroid/content/RestrictionEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    iget-object p2, p0, Landroid/content/RestrictionEntry;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 528
    iget-object p2, p0, Landroid/content/RestrictionEntry;->mChoiceEntries:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 529
    iget-object p2, p0, Landroid/content/RestrictionEntry;->mChoiceValues:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 530
    iget-object p2, p0, Landroid/content/RestrictionEntry;->mCurrentValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 531
    iget-object p2, p0, Landroid/content/RestrictionEntry;->mCurrentValues:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 532
    iget-object p2, p0, Landroid/content/RestrictionEntry;->mRestrictions:[Landroid/content/RestrictionEntry;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 533
    return-void
.end method
