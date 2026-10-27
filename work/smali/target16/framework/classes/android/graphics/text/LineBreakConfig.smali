.class public final Landroid/graphics/text/LineBreakConfig;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/LineBreakConfig$Builder;,
        Landroid/graphics/text/LineBreakConfig$LineBreakWordStyle;,
        Landroid/graphics/text/LineBreakConfig$LineBreakStyle;,
        Landroid/graphics/text/LineBreakConfig$Hyphenation;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/text/LineBreakConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HYPHENATION_DISABLED:I = 0x0

.field public static final whitelist HYPHENATION_ENABLED:I = 0x1

.field public static final whitelist HYPHENATION_UNSPECIFIED:I = -0x1

.field public static final whitelist LINE_BREAK_STYLE_AUTO:I = 0x5

.field public static final whitelist LINE_BREAK_STYLE_LOOSE:I = 0x1

.field public static final whitelist LINE_BREAK_STYLE_NONE:I = 0x0

.field public static final whitelist LINE_BREAK_STYLE_NORMAL:I = 0x2

.field public static final whitelist LINE_BREAK_STYLE_NO_BREAK:I = 0x4

.field public static final whitelist LINE_BREAK_STYLE_STRICT:I = 0x3

.field public static final whitelist LINE_BREAK_STYLE_UNSPECIFIED:I = -0x1

.field public static final whitelist LINE_BREAK_WORD_STYLE_AUTO:I = 0x2

.field public static final whitelist LINE_BREAK_WORD_STYLE_NONE:I = 0x0

.field public static final whitelist LINE_BREAK_WORD_STYLE_PHRASE:I = 0x1

.field public static final whitelist LINE_BREAK_WORD_STYLE_UNSPECIFIED:I = -0x1

.field public static final blacklist NONE:Landroid/graphics/text/LineBreakConfig;


# instance fields
.field private final blacklist mHyphenation:I

.field private final blacklist mLineBreakStyle:I

.field private final blacklist mLineBreakWordStyle:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHyphenation(Landroid/graphics/text/LineBreakConfig;)I
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I
    .registers 1

    iget p0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 448
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 449
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    .line 639
    new-instance v0, Landroid/graphics/text/LineBreakConfig$1;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$1;-><init>()V

    sput-object v0, Landroid/graphics/text/LineBreakConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput p1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    .line 467
    iput p2, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    .line 468
    iput p3, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    .line 469
    return-void
.end method

.method public static blacklist getLineBreakConfig(II)Landroid/graphics/text/LineBreakConfig;
    .registers 3

    .line 441
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 442
    invoke-virtual {v0, p0}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p0

    .line 443
    invoke-virtual {p0, p1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object p0

    .line 444
    invoke-virtual {p0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object p0

    .line 442
    return-object p0
.end method

.method public static blacklist getResolvedHyphenation(Landroid/graphics/text/LineBreakConfig;)I
    .registers 4

    .line 558
    const/4 v0, 0x1

    if-nez p0, :cond_4

    .line 559
    return v0

    .line 561
    :cond_4
    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 562
    goto :goto_c

    :cond_a
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    .line 561
    :goto_c
    return v0
.end method

.method public static blacklist getResolvedLineBreakStyle(Landroid/graphics/text/LineBreakConfig;)I
    .registers 4

    .line 489
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 492
    const/16 v1, 0x23

    if-lt v0, v1, :cond_e

    .line 493
    const/4 v0, 0x5

    goto :goto_f

    .line 495
    :cond_e
    const/4 v0, 0x0

    .line 497
    :goto_f
    if-nez p0, :cond_12

    .line 498
    return v0

    .line 500
    :cond_12
    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 501
    goto :goto_1a

    :cond_18
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    .line 500
    :goto_1a
    return v0
.end method

.method public static blacklist getResolvedLineBreakWordStyle(Landroid/graphics/text/LineBreakConfig;)I
    .registers 4

    .line 523
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->getTargetSdkVersion()I

    move-result v0

    .line 526
    const/16 v1, 0x23

    if-lt v0, v1, :cond_e

    .line 527
    const/4 v0, 0x2

    goto :goto_f

    .line 529
    :cond_e
    const/4 v0, 0x0

    .line 531
    :goto_f
    if-nez p0, :cond_12

    .line 532
    return v0

    .line 534
    :cond_12
    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    .line 535
    goto :goto_1a

    :cond_18
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    .line 534
    :goto_1a
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 627
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 601
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 602
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 603
    :cond_8
    instance-of v2, p1, Landroid/graphics/text/LineBreakConfig;

    if-nez v2, :cond_d

    return v0

    .line 604
    :cond_d
    check-cast p1, Landroid/graphics/text/LineBreakConfig;

    .line 605
    iget v2, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    iget v3, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    iget v3, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    if-ne v2, v3, :cond_22

    iget v2, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    iget p1, p1, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    if-ne v2, p1, :cond_22

    move v0, v1

    :cond_22
    return v0
.end method

.method public whitelist getHyphenation()I
    .registers 2

    .line 545
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    return v0
.end method

.method public whitelist getLineBreakStyle()I
    .registers 2

    .line 477
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    return v0
.end method

.method public whitelist getLineBreakWordStyle()I
    .registers 2

    .line 510
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 612
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig;
    .registers 7

    .line 590
    new-instance v0, Landroid/graphics/text/LineBreakConfig;

    .line 591
    iget v1, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    .line 592
    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    goto :goto_c

    :cond_a
    iget v1, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    .line 593
    :goto_c
    iget v3, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    if-ne v3, v2, :cond_13

    .line 594
    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    goto :goto_15

    :cond_13
    iget v3, p1, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    .line 595
    :goto_15
    iget v4, p1, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    if-ne v4, v2, :cond_1c

    .line 596
    iget p1, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    goto :goto_1e

    :cond_1c
    iget p1, p1, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    :goto_1e
    invoke-direct {v0, v1, v3, p1}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    .line 590
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineBreakConfig{mLineBreakStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLineBreakWordStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHyphenation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 633
    iget p2, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget p2, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget p2, p0, Landroid/graphics/text/LineBreakConfig;->mHyphenation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    return-void
.end method
