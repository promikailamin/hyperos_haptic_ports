.class public final Landroid/app/PictureInPictureParams;
.super Ljava/lang/Object;
.source "PictureInPictureParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PictureInPictureParams$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/PictureInPictureParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAspectRatio:Landroid/util/Rational;

.field private blacklist mAutoEnterEnabled:Ljava/lang/Boolean;

.field private blacklist mCloseAction:Landroid/app/RemoteAction;

.field private blacklist mExpandedAspectRatio:Landroid/util/Rational;

.field private blacklist mIsLaunchIntoPip:Ljava/lang/Boolean;

.field private blacklist mSeamlessResizeEnabled:Ljava/lang/Boolean;

.field private greylist-max-o mSourceRectHint:Landroid/graphics/Rect;

.field private blacklist mSubtitle:Ljava/lang/CharSequence;

.field private blacklist mTitle:Ljava/lang/CharSequence;

.field private greylist-max-o mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAspectRatio(Landroid/app/PictureInPictureParams;)Landroid/util/Rational;
    .registers 1

    iget-object p0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoEnterEnabled(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCloseAction(Landroid/app/PictureInPictureParams;)Landroid/app/RemoteAction;
    .registers 1

    iget-object p0, p0, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsLaunchIntoPip(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeamlessResizeEnabled(Landroid/app/PictureInPictureParams;)Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceRectHint(Landroid/app/PictureInPictureParams;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubtitle(Landroid/app/PictureInPictureParams;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTitle(Landroid/app/PictureInPictureParams;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserActions(Landroid/app/PictureInPictureParams;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 797
    new-instance v0, Landroid/app/PictureInPictureParams$1;

    invoke-direct {v0}, Landroid/app/PictureInPictureParams$1;-><init>()V

    sput-object v0, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>()V
    .registers 1

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/PictureInPictureParams;)V
    .registers 13

    .line 400
    iget-object v1, p1, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    iget-object v2, p1, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    iget-object v4, p1, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    .line 401
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    move-object v5, v0

    iget-object v6, p1, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    iget-object v7, p1, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    iget-object v8, p1, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v9, p1, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v10, p1, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    .line 400
    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Landroid/app/PictureInPictureParams;-><init>(Landroid/util/Rational;Landroid/util/Rational;Ljava/util/List;Landroid/app/RemoteAction;Landroid/graphics/Rect;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 404
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    invoke-direct {p0, p1}, Landroid/app/PictureInPictureParams;->readRationalFromParcel(Landroid/os/Parcel;)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    .line 352
    invoke-direct {p0, p1}, Landroid/app/PictureInPictureParams;->readRationalFromParcel(Landroid/os/Parcel;)Landroid/util/Rational;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    .line 355
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    sget-object v1, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 357
    :cond_23
    sget-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    .line 359
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    .line 361
    :cond_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4d

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    .line 364
    :cond_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5d

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    .line 367
    :cond_5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_69

    .line 368
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    .line 370
    :cond_69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_75

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    .line 373
    :cond_75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_85

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    .line 376
    :cond_85
    return-void
.end method

.method constructor blacklist <init>(Landroid/util/Rational;Landroid/util/Rational;Ljava/util/List;Landroid/app/RemoteAction;Landroid/graphics/Rect;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Rational;",
            "Landroid/util/Rational;",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/app/RemoteAction;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-object p1, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    .line 384
    iput-object p2, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    .line 385
    iput-object p3, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    .line 386
    iput-object p4, p0, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    .line 387
    iput-object p5, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    .line 388
    iput-object p6, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    .line 389
    iput-object p7, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    .line 390
    iput-object p8, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    .line 391
    iput-object p9, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    .line 392
    iput-object p10, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    .line 393
    return-void
.end method

.method public static blacklist isSameAspectRatio(Landroid/graphics/Rect;Landroid/util/Rational;)Z
    .registers 6

    .line 670
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_47

    invoke-virtual {p1}, Landroid/util/Rational;->floatValue()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_11

    goto :goto_47

    .line 674
    :cond_11
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/2addr v0, v2

    .line 675
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v2

    div-int/2addr v0, v2

    .line 676
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_2c

    .line 677
    return v2

    .line 679
    :cond_2c
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v0, v3

    .line 680
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result p1

    div-int/2addr v0, p1

    .line 681
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-gt p0, v2, :cond_46

    move v1, v2

    :cond_46
    return v1

    .line 671
    :cond_47
    :goto_47
    return v1
.end method

.method private blacklist readRationalFromParcel(Landroid/os/Parcel;)Landroid/util/Rational;
    .registers 4

    .line 775
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    .line 776
    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/util/Rational;-><init>(II)V

    return-object v0

    .line 778
    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method private blacklist writeRationalToParcel(Landroid/util/Rational;Landroid/os/Parcel;)V
    .registers 4

    .line 765
    if-eqz p1, :cond_15

    .line 766
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    invoke-virtual {p1}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    invoke-virtual {p1}, Landroid/util/Rational;->getDenominator()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 770
    :cond_15
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 772
    :goto_19
    return-void
.end method


# virtual methods
.method public greylist-max-o copyOnlySet(Landroid/app/PictureInPictureParams;)V
    .registers 4

    .line 411
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 412
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    .line 416
    :cond_a
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    .line 418
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 419
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    .line 421
    :cond_18
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetCloseAction()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 422
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    .line 424
    :cond_22
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 425
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    .line 427
    :cond_33
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_3b

    .line 428
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    .line 430
    :cond_3b
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_43

    .line 431
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    .line 433
    :cond_43
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetTitle()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 434
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    .line 436
    :cond_4d
    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->hasSetSubtitle()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 437
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    .line 439
    :cond_57
    iget-object v0, p1, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    if-eqz v0, :cond_5f

    .line 440
    iget-object p1, p1, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    iput-object p1, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    .line 442
    :cond_5f
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 710
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist empty()Z
    .registers 2

    .line 651
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetCloseAction()Z

    move-result v0

    if-nez v0, :cond_38

    .line 652
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetAspectRatio()Z

    move-result v0

    if-nez v0, :cond_38

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetExpandedAspectRatio()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    .line 653
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetTitle()Z

    move-result v0

    if-nez v0, :cond_38

    .line 654
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetSubtitle()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    if-nez v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    .line 651
    :goto_39
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 686
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 687
    :cond_4
    instance-of v1, p1, Landroid/app/PictureInPictureParams;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 688
    :cond_a
    check-cast p1, Landroid/app/PictureInPictureParams;

    .line 689
    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    .line 690
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    .line 691
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    .line 692
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    .line 693
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    .line 694
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    .line 695
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    .line 696
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    .line 697
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    iget-object p1, p1, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    .line 698
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_71

    goto :goto_72

    :cond_71
    move v0, v2

    .line 689
    :goto_72
    return v0
.end method

.method public whitelist getActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    if-nez v0, :cond_a

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 518
    :cond_a
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getAspectRatio()Landroid/util/Rational;
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public blacklist getAspectRatioFloat()F
    .registers 2

    .line 450
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_b

    .line 451
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0

    .line 453
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCloseAction()Landroid/app/RemoteAction;
    .registers 2

    .line 537
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    return-object v0
.end method

.method public whitelist getExpandedAspectRatio()Landroid/util/Rational;
    .registers 2

    .line 495
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public blacklist getExpandedAspectRatioFloat()F
    .registers 2

    .line 481
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_b

    .line 482
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0

    .line 484
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getSourceRectHint()Landroid/graphics/Rect;
    .registers 2

    .line 567
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 635
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 616
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o hasSetActions()Z
    .registers 2

    .line 526
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o hasSetAspectRatio()Z
    .registers 2

    .line 472
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasSetCloseAction()Z
    .registers 2

    .line 545
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasSetExpandedAspectRatio()Z
    .registers 2

    .line 503
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasSetSubtitle()Z
    .registers 2

    .line 624
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist hasSetTitle()Z
    .registers 2

    .line 605
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o hasSourceBoundsHint()Z
    .registers 2

    .line 575
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 11

    .line 703
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    iget-object v2, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    iget-object v3, p0, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    iget-object v4, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    iget-object v6, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    iget-object v7, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    iget-object v8, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAutoEnterEnabled()Z
    .registers 2

    .line 586
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public blacklist isLaunchIntoPip()Z
    .registers 2

    .line 643
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist isSeamlessResizeEnabled()Z
    .registers 2

    .line 597
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    :cond_6
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PictureInPictureParams( aspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 784
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getAspectRatio()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expandedAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sourceRectHint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 786
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasSetActions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 787
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hasSetCloseAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 788
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetCloseAction()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isAutoPipEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 789
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSeamlessResizeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 790
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->isSeamlessResizeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 791
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 792
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isLaunchIntoPip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 793
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 783
    return-object v0
.end method

.method public greylist-max-o truncateActions(I)V
    .registers 4

    .line 554
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 555
    iget-object v0, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    iget-object v1, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    .line 557
    :cond_19
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 715
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mAspectRatio:Landroid/util/Rational;

    invoke-direct {p0, p2, p1}, Landroid/app/PictureInPictureParams;->writeRationalToParcel(Landroid/util/Rational;Landroid/os/Parcel;)V

    .line 716
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mExpandedAspectRatio:Landroid/util/Rational;

    invoke-direct {p0, p2, p1}, Landroid/app/PictureInPictureParams;->writeRationalToParcel(Landroid/util/Rational;Landroid/os/Parcel;)V

    .line 717
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_19

    .line 718
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 719
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mUserActions:Ljava/util/List;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    goto :goto_1c

    .line 721
    :cond_19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    :goto_1c
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mCloseAction:Landroid/app/RemoteAction;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 726
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz p2, :cond_2e

    .line 727
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_31

    .line 730
    :cond_2e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    :goto_31
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    if-eqz p2, :cond_42

    .line 733
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mAutoEnterEnabled:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_45

    .line 736
    :cond_42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 738
    :goto_45
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    if-eqz p2, :cond_56

    .line 739
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 740
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mSeamlessResizeEnabled:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_59

    .line 742
    :cond_56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    :goto_59
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz p2, :cond_66

    .line 745
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 746
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_69

    .line 748
    :cond_66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    :goto_69
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz p2, :cond_76

    .line 751
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_79

    .line 754
    :cond_76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 756
    :goto_79
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    if-eqz p2, :cond_8a

    .line 757
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget-object p2, p0, Landroid/app/PictureInPictureParams;->mIsLaunchIntoPip:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_8d

    .line 760
    :cond_8a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    :goto_8d
    return-void
.end method
