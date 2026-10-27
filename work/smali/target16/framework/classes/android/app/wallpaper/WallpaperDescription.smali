.class public final Landroid/app/wallpaper/WallpaperDescription;
.super Ljava/lang/Object;
.source "WallpaperDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/wallpaper/WallpaperDescription$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/wallpaper/WallpaperDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WallpaperDescription"

.field private static final blacklist XML_TAG_CONTENT:Ljava/lang/String; = "content"

.field private static final blacklist XML_TAG_DESCRIPTION:Ljava/lang/String; = "description"


# instance fields
.field private final blacklist mComponent:Landroid/content/ComponentName;

.field private final blacklist mContent:Landroid/os/PersistableBundle;

.field private final blacklist mContextDescription:Ljava/lang/CharSequence;

.field private final blacklist mContextUri:Landroid/net/Uri;

.field private final blacklist mCropHints:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDescription:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mSampleSize:F

.field private final blacklist mThumbnail:Landroid/net/Uri;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public static synthetic blacklist $r8$lambda$SJjydMtP7lVlIyL2p9b8fQyzjFc(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;Landroid/util/Pair;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription;->lambda$new$1(Landroid/os/Parcel;Landroid/util/Pair;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qLyMJewk5i-jk61el0hS27e3fpQ(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;ILandroid/util/Pair;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/wallpaper/WallpaperDescription;->lambda$writeToParcel$2(Landroid/os/Parcel;ILandroid/util/Pair;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 329
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$1;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$1;-><init>()V

    sput-object v0, Landroid/app/wallpaper/WallpaperDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;F)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/CharSequence;",
            "Landroid/os/PersistableBundle;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;F)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    .line 88
    iput-object p2, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    .line 90
    iput-object p4, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    .line 91
    if-eqz p5, :cond_e

    goto :goto_13

    :cond_e
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :goto_13
    iput-object p5, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    .line 92
    iput-object p6, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    .line 93
    iput-object p7, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    .line 94
    if-eqz p8, :cond_1c

    goto :goto_21

    :cond_1c
    new-instance p8, Landroid/os/PersistableBundle;

    invoke-direct {p8}, Landroid/os/PersistableBundle;-><init>()V

    :goto_21
    iput-object p8, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    .line 95
    iput-object p9, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    .line 96
    iput p10, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    .line 97
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;FLandroid/app/wallpaper/WallpaperDescription-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/app/wallpaper/WallpaperDescription;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;F)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    .line 313
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    .line 316
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    .line 318
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    .line 319
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    .line 320
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda0;-><init>(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    .line 326
    return-void
.end method

.method private static blacklist fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2

    .line 288
    if-nez p0, :cond_4

    .line 289
    const/4 p0, 0x0

    return-object p0

    .line 291
    :cond_4
    const/16 v0, 0x3f

    invoke-static {p0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    invoke-static {p0}, Landroid/app/wallpaper/WallpaperDescription;->removeTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$new$1(Landroid/os/Parcel;Landroid/util/Pair;)V
    .registers 4

    .line 321
    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 322
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 323
    if-eqz p1, :cond_17

    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    :cond_17
    return-void
.end method

.method static synthetic blacklist lambda$restoreFromXml$0(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;Landroid/util/Pair;)V
    .registers 12

    .line 249
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 250
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 251
    new-instance v1, Landroid/graphics/Rect;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cropLeft"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p0, v3, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cropTop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 253
    invoke-interface {p0, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cropRight"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 254
    invoke-interface {p0, v3, v6, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cropBottom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 255
    invoke-interface {p0, v3, p2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v1, v2, v5, v6, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_78

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 257
    :cond_78
    return-void
.end method

.method private synthetic blacklist lambda$writeToParcel$2(Landroid/os/Parcel;ILandroid/util/Pair;)V
    .registers 5

    .line 357
    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 358
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Rect;

    invoke-virtual {p1, p3, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 359
    return-void
.end method

.method private static blacklist removeTrailingWhitespace(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3

    .line 298
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 300
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 301
    :goto_8
    if-lez v0, :cond_19

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 302
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 305
    :cond_19
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/wallpaper/WallpaperDescription;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 234
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 235
    const-string v1, "component"

    const/4 v2, 0x0

    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_13

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    move-object v4, v1

    goto :goto_14

    .line 237
    :cond_13
    move-object v4, v2

    .line 238
    :goto_14
    const-string v1, "id"

    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 239
    const-string/jumbo v1, "thumbnail"

    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_29

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v6, v1

    goto :goto_2a

    :cond_29
    move-object v6, v2

    .line 241
    :goto_2a
    const-string/jumbo v1, "title"

    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 242
    const-string v1, "contexturi"

    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_43

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v9, v1

    goto :goto_44

    :cond_43
    move-object v9, v2

    .line 244
    :goto_44
    nop

    .line 245
    const-string v1, "contextdescription"

    invoke-interface {p0, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 247
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 248
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v1

    new-instance v3, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v12}, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda1;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/SparseArray;)V

    invoke-interface {v1, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 258
    const-string/jumbo v1, "sampleSize"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {p0, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v13

    .line 260
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 261
    move-object v11, v2

    .line 263
    :cond_6f
    :goto_6f
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7f

    .line 264
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_b4

    .line 265
    :cond_7f
    if-eq v1, v2, :cond_6f

    const/4 v2, 0x4

    if-ne v1, v2, :cond_85

    .line 266
    goto :goto_6f

    .line 268
    :cond_85
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, "description"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 270
    const/4 v1, 0x0

    :goto_92
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_b3

    .line 271
    invoke-interface {p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/app/wallpaper/WallpaperDescription;->fromHtml(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_92

    .line 273
    :cond_a6
    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 274
    invoke-static {p0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v1

    move-object v11, v1

    .line 276
    :cond_b3
    goto :goto_6f

    .line 278
    :cond_b4
    new-instance v3, Landroid/app/wallpaper/WallpaperDescription;

    invoke-direct/range {v3 .. v13}, Landroid/app/wallpaper/WallpaperDescription;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;Ljava/util/List;Landroid/net/Uri;Ljava/lang/CharSequence;Landroid/os/PersistableBundle;Landroid/util/SparseArray;F)V

    return-object v3
.end method

.method private static blacklist screenDimensionPairs()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 562
    new-instance v0, Landroid/util/Pair;

    .line 563
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    .line 564
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Portrait"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    .line 565
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Landscape"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    .line 566
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "SquarePortrait"

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    .line 567
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SquareLandscape"

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 562
    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    .line 283
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/text/Spanned;

    goto :goto_d

    :cond_7
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    .line 284
    :goto_d
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 177
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 178
    :cond_4
    instance-of v1, p1, Landroid/app/wallpaper/WallpaperDescription;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    check-cast p1, Landroid/app/wallpaper/WallpaperDescription;

    .line 179
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0

    .line 178
    :cond_22
    return v2
.end method

.method public whitelist getComponent()Landroid/content/ComponentName;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getContent()Landroid/os/PersistableBundle;
    .registers 2

    .line 145
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getContextDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getContextUri()Landroid/net/Uri;
    .registers 2

    .line 133
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getCropHints()Landroid/util/SparseArray;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getDescription()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSampleSize()F
    .registers 2

    .line 164
    iget v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    return v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 118
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 185
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 192
    const-string v0, "content"

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 193
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "component"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    :cond_12
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    if-eqz v1, :cond_1d

    const-string v1, "id"

    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    :cond_1d
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "thumbnail"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    :cond_2d
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "title"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    :cond_3d
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    if-eqz v1, :cond_4c

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "contexturi"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    :cond_4c
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5b

    .line 200
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/app/wallpaper/WallpaperDescription;->toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "contextdescription"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    :cond_5b
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 204
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 205
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 206
    iget-object v5, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 207
    if-nez v4, :cond_86

    goto :goto_63

    .line 208
    :cond_86
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cropLeft"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cropTop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cropRight"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    invoke-interface {p1, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cropBottom"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    goto/16 :goto_63

    .line 213
    :cond_e8
    const-string/jumbo v1, "sampleSize"

    iget v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    invoke-interface {p1, v2, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const-string v1, "description"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    iget-object v3, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_fb
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_111

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string v5, "descriptionline"

    invoke-static {v4}, Landroid/app/wallpaper/WallpaperDescription;->toHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_fb

    .line 217
    :cond_111
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    :try_start_114
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_11c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_114 .. :try_end_11c} :catch_122
    .catchall {:try_start_114 .. :try_end_11c} :catchall_120

    .line 227
    :goto_11c
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    goto :goto_12c

    .line 227
    :catchall_120
    move-exception v1

    goto :goto_12d

    .line 222
    :catch_122
    move-exception v1

    .line 225
    :try_start_123
    const-string v1, "WallpaperDescription"

    const-string/jumbo v3, "unable to convert wallpaper content to XML"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12b
    .catchall {:try_start_123 .. :try_end_12b} :catchall_120

    goto :goto_11c

    .line 229
    :goto_12c
    return-void

    .line 227
    :goto_12d
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    throw v1
.end method

.method public whitelist toBuilder()Landroid/app/wallpaper/WallpaperDescription$Builder;
    .registers 3

    .line 371
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    .line 372
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    .line 373
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setId(Ljava/lang/String;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    .line 374
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setThumbnail(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    .line 375
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    .line 376
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setDescription(Ljava/util/List;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    .line 377
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setContextUri(Landroid/net/Uri;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    .line 378
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setContextDescription(Ljava/lang/CharSequence;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    .line 379
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setContent(Landroid/os/PersistableBundle;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mCropHints:Landroid/util/SparseArray;

    .line 380
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setCropHints(Landroid/util/SparseArray;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    iget v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    .line 381
    invoke-virtual {v0, v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setSampleSize(F)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object v0

    .line 371
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_b
    const-string/jumbo v0, "{null}"

    .line 170
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 348
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 349
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mThumbnail:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 351
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mDescription:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    .line 353
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 354
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContextDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Landroid/app/wallpaper/WallpaperDescription;->mContent:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 356
    invoke-static {}, Landroid/app/wallpaper/WallpaperDescription;->screenDimensionPairs()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Landroid/app/wallpaper/WallpaperDescription$$ExternalSyntheticLambda2;-><init>(Landroid/app/wallpaper/WallpaperDescription;Landroid/os/Parcel;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 360
    iget p2, p0, Landroid/app/wallpaper/WallpaperDescription;->mSampleSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 361
    return-void
.end method
