.class public final Landroid/content/pm/PackageManager$Property;
.super Ljava/lang/Object;
.source "PackageManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Property"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TYPE_BOOLEAN:I = 0x1

.field private static final blacklist TYPE_FLOAT:I = 0x2

.field private static final blacklist TYPE_INTEGER:I = 0x3

.field private static final blacklist TYPE_RESOURCE:I = 0x4

.field private static final blacklist TYPE_STRING:I = 0x5


# instance fields
.field private blacklist mBooleanValue:Z

.field private final blacklist mClassName:Ljava/lang/String;

.field private blacklist mFloatValue:F

.field private blacklist mIntegerValue:I

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mStringValue:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 547
    new-instance v0, Landroid/content/pm/PackageManager$Property$1;

    invoke-direct {v0}, Landroid/content/pm/PackageManager$Property$1;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManager$Property;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 379
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 380
    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    .line 381
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1e

    const/4 v0, 0x5

    if-gt p2, v0, :cond_1e

    .line 365
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    .line 366
    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    .line 367
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    .line 368
    iput-object p4, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    .line 369
    return-void

    .line 363
    :cond_1e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 385
    if-eqz p3, :cond_4

    const/4 p3, 0x4

    goto :goto_5

    :cond_4
    const/4 p3, 0x3

    :goto_5
    invoke-direct {p0, p1, p3, p4, p5}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 386
    iput p2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    .line 387
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 391
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 392
    iput-object p2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 373
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p3, p4}, Landroid/content/pm/PackageManager$Property;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 374
    iput-boolean p2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    .line 375
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 524
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 576
    instance-of v0, p1, Landroid/content/pm/PackageManager$Property;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 577
    return v1

    .line 579
    :cond_6
    check-cast p1, Landroid/content/pm/PackageManager$Property;

    .line 580
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    iget v2, p1, Landroid/content/pm/PackageManager$Property;->mType:I

    if-ne v0, v2, :cond_6c

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    .line 581
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    .line 582
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    .line 583
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_38

    iget-boolean v0, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    iget-boolean p1, p1, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    if-ne v0, p1, :cond_6c

    goto :goto_6a

    :cond_38
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_48

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    iget p1, p1, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    .line 585
    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-nez p1, :cond_6c

    :goto_47
    goto :goto_6a

    :cond_48
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_54

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    iget p1, p1, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    if-ne v0, p1, :cond_6c

    goto :goto_47

    :cond_54
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_60

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    iget p1, p1, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    if-ne v0, p1, :cond_6c

    goto :goto_47

    :cond_60
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    .line 588
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6c

    :goto_6a
    move v1, v2

    goto :goto_6d

    :cond_6c
    nop

    .line 580
    :goto_6d
    return v1
.end method

.method public whitelist getBoolean()Z
    .registers 2

    .line 429
    iget-boolean v0, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    return v0
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .registers 2

    .line 421
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFloat()F
    .registers 2

    .line 444
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    return v0
.end method

.method public whitelist getInteger()I
    .registers 3

    .line 459
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 405
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResourceId()I
    .registers 3

    .line 474
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getString()Ljava/lang/String;
    .registers 2

    .line 489
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .registers 2

    .line 398
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 593
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 594
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 595
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    add-int/2addr v0, v1

    goto :goto_52

    .line 596
    :cond_1f
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    .line 597
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_52

    .line 598
    :cond_2e
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_39

    .line 599
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    add-int/2addr v0, v1

    goto :goto_52

    .line 600
    :cond_39
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_44

    .line 601
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    add-int/2addr v0, v1

    goto :goto_52

    .line 602
    :cond_44
    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_52

    .line 603
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 605
    :cond_52
    :goto_52
    return v0
.end method

.method public whitelist isBoolean()Z
    .registers 3

    .line 436
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public whitelist isFloat()Z
    .registers 3

    .line 451
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isInteger()Z
    .registers 3

    .line 466
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isResourceId()Z
    .registers 3

    .line 481
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist isString()Z
    .registers 3

    .line 496
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 4

    .line 506
    if-eqz p1, :cond_8

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-ne p1, v0, :cond_7

    goto :goto_8

    .line 507
    :cond_7
    goto :goto_d

    :cond_8
    :goto_8
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 508
    :goto_d
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 509
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-boolean v1, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4d

    .line 510
    :cond_1a
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 511
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_4d

    .line 512
    :cond_27
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    .line 513
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4d

    .line 514
    :cond_34
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_41

    .line 515
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_4d

    .line 516
    :cond_41
    iget v0, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4d

    .line 517
    iget-object v0, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_4d
    :goto_4d
    return-object p1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 529
    iget-object p2, p0, Landroid/content/pm/PackageManager$Property;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 530
    iget p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object p2, p0, Landroid/content/pm/PackageManager$Property;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    iget-object p2, p0, Landroid/content/pm/PackageManager$Property;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    iget p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1f

    .line 534
    iget-boolean p2, p0, Landroid/content/pm/PackageManager$Property;->mBooleanValue:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_4a

    .line 535
    :cond_1f
    iget p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_2a

    .line 536
    iget p2, p0, Landroid/content/pm/PackageManager$Property;->mFloatValue:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_4a

    .line 537
    :cond_2a
    iget p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_35

    .line 538
    iget p2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a

    .line 539
    :cond_35
    iget p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_40

    .line 540
    iget p2, p0, Landroid/content/pm/PackageManager$Property;->mIntegerValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a

    .line 541
    :cond_40
    iget p2, p0, Landroid/content/pm/PackageManager$Property;->mType:I

    const/4 v0, 0x5

    if-ne p2, v0, :cond_4a

    .line 542
    iget-object p2, p0, Landroid/content/pm/PackageManager$Property;->mStringValue:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    :cond_4a
    :goto_4a
    return-void
.end method
