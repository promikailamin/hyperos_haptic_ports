.class public final Landroid/media/MediaMetadata$Builder;
.super Ljava/lang/Object;
.source "MediaMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBitmapDimensionLimit:I

.field private final greylist-max-o mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    const v0, 0x7fffffff

    iput v0, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    .line 788
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    .line 789
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/MediaMetadata;)V
    .registers 4

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    const v0, 0x7fffffff

    iput v0, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    .line 799
    new-instance v0, Landroid/os/Bundle;

    invoke-static {p1}, Landroid/media/MediaMetadata;->-$$Nest$fgetmBundle(Landroid/media/MediaMetadata;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    .line 800
    invoke-static {p1}, Landroid/media/MediaMetadata;->-$$Nest$fgetmBitmapDimensionLimit(Landroid/media/MediaMetadata;)I

    move-result p1

    iput p1, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    .line 801
    return-void
.end method

.method private greylist-max-o scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 5

    .line 1011
    int-to-float p2, p2

    .line 1012
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p2, v0

    .line 1013
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 1014
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1015
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    .line 1016
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int p2, v1

    .line 1017
    const-string v1, "Downscaling oversized MediaMetadata Bitmap"

    invoke-static {v1}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    .line 1018
    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public whitelist build()Landroid/media/MediaMetadata;
    .registers 6

    .line 995
    iget v0, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_43

    .line 996
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 997
    iget-object v2, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 998
    instance-of v3, v2, Landroid/graphics/Bitmap;

    if-eqz v3, :cond_42

    .line 999
    check-cast v2, Landroid/graphics/Bitmap;

    .line 1000
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    if-gt v3, v4, :cond_39

    .line 1001
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    if-le v3, v4, :cond_42

    .line 1002
    :cond_39
    iget v3, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    invoke-direct {p0, v2, v3}, Landroid/media/MediaMetadata$Builder;->scaleBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 1005
    :cond_42
    goto :goto_11

    .line 1007
    :cond_43
    new-instance v0, Landroid/media/MediaMetadata;

    iget-object v1, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    iget v2, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Bundle;ILandroid/media/MediaMetadata-IA;)V

    return-object v0
.end method

.method public whitelist putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;
    .registers 5

    .line 956
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 957
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 958
    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " key cannot be used to put a Bitmap"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 962
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 963
    return-object p0
.end method

.method public whitelist putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;
    .registers 5

    .line 900
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 901
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_3a

    .line 902
    :cond_1b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " key cannot be used to put a long"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 906
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 907
    return-object p0
.end method

.method public whitelist putRating(Ljava/lang/String;Landroid/media/Rating;)Landroid/media/MediaMetadata$Builder;
    .registers 5

    .line 925
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 926
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 927
    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " key cannot be used to put a Rating"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 931
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 932
    return-object p0
.end method

.method public whitelist putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;
    .registers 5

    .line 873
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 874
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 875
    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " key cannot be used to put a String"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 879
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 880
    return-object p0
.end method

.method public whitelist putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/media/MediaMetadata$Builder;
    .registers 5

    .line 831
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 832
    invoke-static {}, Landroid/media/MediaMetadata;->-$$Nest$sfgetMETADATA_KEYS_TYPE()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    goto :goto_3b

    .line 833
    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " key cannot be used to put a CharSequence"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 837
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/media/MediaMetadata$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 838
    return-object p0
.end method

.method public whitelist setBitmapDimensionLimit(I)Landroid/media/MediaMetadata$Builder;
    .registers 4

    .line 980
    if-lez p1, :cond_5

    .line 981
    iput p1, p0, Landroid/media/MediaMetadata$Builder;->mBitmapDimensionLimit:I

    goto :goto_1d

    .line 983
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBitmapDimensionLimit(): Ignoring non-positive bitmapDimensionLimit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaMetadata"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :goto_1d
    return-object p0
.end method
