.class public final Landroid/media/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Rating$StarStyle;,
        Landroid/media/Rating$Style;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RATING_3_STARS:I = 0x3

.field public static final whitelist RATING_4_STARS:I = 0x4

.field public static final whitelist RATING_5_STARS:I = 0x5

.field public static final whitelist RATING_HEART:I = 0x1

.field public static final whitelist RATING_NONE:I = 0x0

.field private static final greylist-max-o RATING_NOT_RATED:F = -1.0f

.field public static final whitelist RATING_PERCENTAGE:I = 0x6

.field public static final whitelist RATING_THUMB_UP_DOWN:I = 0x2

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private final greylist-max-o mRatingStyle:I

.field private final greylist-max-o mRatingValue:F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 119
    new-instance v0, Landroid/media/Rating$1;

    invoke-direct {v0}, Landroid/media/Rating$1;-><init>()V

    sput-object v0, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(IF)V
    .registers 3

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Landroid/media/Rating;->mRatingStyle:I

    .line 99
    iput p2, p0, Landroid/media/Rating;->mRatingValue:F

    .line 100
    return-void
.end method

.method synthetic constructor blacklist <init>(IFLandroid/media/Rating-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/Rating;-><init>(IF)V

    return-void
.end method

.method public static whitelist newHeartRating(Z)Landroid/media/Rating;
    .registers 3

    .line 167
    new-instance v0, Landroid/media/Rating;

    if-eqz p0, :cond_7

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/media/Rating;-><init>(IF)V

    return-object v0
.end method

.method public static whitelist newPercentageRating(F)Landroid/media/Rating;
    .registers 3

    .line 225
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_12

    const/high16 v0, 0x42c80000    # 100.0f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_12

    .line 226
    new-instance v0, Landroid/media/Rating;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/media/Rating;-><init>(IF)V

    return-object v0

    .line 228
    :cond_12
    const-string p0, "Rating"

    const-string v0, "Invalid percentage-based rating value"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 p0, 0x0

    return-object p0
.end method

.method public static whitelist newStarRating(IF)Landroid/media/Rating;
    .registers 6

    .line 194
    nop

    .line 195
    const/4 v0, 0x0

    const-string v1, "Rating"

    packed-switch p0, :pswitch_data_44

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rating style ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ") for a star rating"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-object v0

    .line 203
    :pswitch_24
    nop

    .line 204
    const/high16 v2, 0x40a00000    # 5.0f

    goto :goto_2f

    .line 200
    :pswitch_28
    nop

    .line 201
    const/high16 v2, 0x40800000    # 4.0f

    goto :goto_2f

    .line 197
    :pswitch_2c
    nop

    .line 198
    const/high16 v2, 0x40400000    # 3.0f

    .line 209
    :goto_2f
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_3e

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_3e

    .line 210
    new-instance v0, Landroid/media/Rating;

    invoke-direct {v0, p0, p1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0

    .line 212
    :cond_3e
    const-string p0, "Trying to set out of range star-based rating"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-object v0

    :pswitch_data_44
    .packed-switch 0x3
        :pswitch_2c
        :pswitch_28
        :pswitch_24
    .end packed-switch
.end method

.method public static whitelist newThumbRating(Z)Landroid/media/Rating;
    .registers 3

    .line 178
    new-instance v0, Landroid/media/Rating;

    if-eqz p0, :cond_7

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/media/Rating;-><init>(IF)V

    return-object v0
.end method

.method public static whitelist newUnratedRating(I)Landroid/media/Rating;
    .registers 3

    .line 146
    packed-switch p0, :pswitch_data_e

    .line 155
    const/4 p0, 0x0

    return-object p0

    .line 153
    :pswitch_5
    new-instance v0, Landroid/media/Rating;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public whitelist getPercentRating()F
    .registers 3

    .line 302
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_f

    .line 305
    :cond_c
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    return v0

    .line 303
    :cond_f
    :goto_f
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public whitelist getRatingStyle()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public whitelist getStarRating()F
    .registers 2

    .line 284
    nop

    .line 285
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    packed-switch v0, :pswitch_data_14

    goto :goto_10

    .line 289
    :pswitch_7
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 290
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    goto :goto_12

    .line 293
    :cond_10
    :goto_10
    const/high16 v0, -0x40800000    # -1.0f

    :goto_12
    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public whitelist hasHeart()Z
    .registers 5

    .line 258
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 259
    return v1

    .line 261
    :cond_7
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_10

    move v1, v2

    :cond_10
    return v1
.end method

.method public whitelist isRated()Z
    .registers 3

    .line 238
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public whitelist isThumbUp()Z
    .registers 4

    .line 271
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    .line 272
    return v2

    .line 274
    :cond_7
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_10

    const/4 v2, 0x1

    :cond_10
    return v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    iget v1, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_21

    const-string v1, "unrated"

    goto :goto_27

    :cond_21
    iget v1, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 115
    iget p2, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget p2, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 117
    return-void
.end method
