.class public Landroid/content/ClipDescription;
.super Ljava/lang/Object;
.source "ClipDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipDescription$ClassificationStatus;
    }
.end annotation


# static fields
.field public static final whitelist CLASSIFICATION_COMPLETE:I = 0x3

.field public static final whitelist CLASSIFICATION_NOT_COMPLETE:I = 0x1

.field public static final whitelist CLASSIFICATION_NOT_PERFORMED:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ClipDescription;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_ACTIVITY_OPTIONS:Ljava/lang/String; = "android.intent.extra.ACTIVITY_OPTIONS"

.field public static final blacklist EXTRA_HIDE_DRAG_SOURCE_TASK_ID:Ljava/lang/String; = "android.intent.extra.HIDE_DRAG_SOURCE_TASK_ID"

.field public static final whitelist EXTRA_IS_REMOTE_DEVICE:Ljava/lang/String; = "android.content.extra.IS_REMOTE_DEVICE"

.field public static final whitelist EXTRA_IS_SENSITIVE:Ljava/lang/String; = "android.content.extra.IS_SENSITIVE"

.field public static final blacklist EXTRA_LOGGING_INSTANCE_ID:Ljava/lang/String; = "android.intent.extra.LOGGING_INSTANCE_ID"

.field public static final blacklist EXTRA_PENDING_INTENT:Ljava/lang/String; = "android.intent.extra.PENDING_INTENT"

.field public static final blacklist MIMETYPE_APPLICATION_ACTIVITY:Ljava/lang/String; = "application/vnd.android.activity"

.field public static final blacklist MIMETYPE_APPLICATION_SHORTCUT:Ljava/lang/String; = "application/vnd.android.shortcut"

.field public static final blacklist MIMETYPE_APPLICATION_TASK:Ljava/lang/String; = "application/vnd.android.task"

.field public static final whitelist MIMETYPE_TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final whitelist MIMETYPE_TEXT_INTENT:Ljava/lang/String; = "text/vnd.android.intent"

.field public static final whitelist MIMETYPE_TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final whitelist MIMETYPE_TEXT_URILIST:Ljava/lang/String; = "text/uri-list"

.field public static final whitelist MIMETYPE_UNKNOWN:Ljava/lang/String; = "application/octet-stream"


# instance fields
.field private blacklist mClassificationStatus:I

.field private final blacklist mEntityConfidence:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mExtras:Landroid/os/PersistableBundle;

.field private blacklist mIsStyledText:Z

.field final greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private final greylist-max-o mMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTimeStamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 620
    new-instance v0, Landroid/content/ClipDescription$1;

    invoke-direct {v0}, Landroid/content/ClipDescription$1;-><init>()V

    sput-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/ClipDescription;)V
    .registers 4

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 225
    iget-object v0, p1, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    .line 227
    iget-wide v0, p1, Landroid/content/ClipDescription;->mTimeStamp:J

    iput-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    .line 228
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 611
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    .line 614
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    .line 615
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ClipDescription;->mIsStyledText:Z

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ClipDescription;->readBundleToConfidences(Landroid/os/Bundle;)V

    .line 618
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .registers 4

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 214
    if-eqz p2, :cond_1d

    .line 217
    iput-object p1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    .line 218
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    .line 219
    return-void

    .line 215
    :cond_1d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "mimeTypes is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static whitelist compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 237
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 238
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_11

    const-string v1, "*/*"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 239
    return v2

    .line 242
    :cond_11
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 243
    const/4 v3, 0x0

    if-lez v1, :cond_35

    .line 244
    add-int/lit8 v4, v1, 0x2

    if-ne v0, v4, :cond_2e

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2a

    if-ne v0, v4, :cond_2e

    .line 245
    invoke-virtual {p1, v3, p0, v3, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 246
    return v2

    .line 248
    :cond_2e
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 249
    return v2

    .line 253
    :cond_35
    return v3
.end method

.method private blacklist confidencesToBundle()Landroid/os/Bundle;
    .registers 6

    .line 596
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 597
    iget-object v1, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 598
    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_28

    .line 599
    iget-object v3, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 598
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 601
    :cond_28
    return-object v0
.end method

.method private blacklist readBundleToConfidences(Landroid/os/Bundle;)V
    .registers 6

    .line 605
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 606
    iget-object v2, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    goto :goto_8

    .line 608
    :cond_22
    return-void
.end method


# virtual methods
.method greylist-max-o addMimeTypes([Ljava/lang/String;)V
    .registers 5

    .line 366
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-eq v0, v1, :cond_16

    .line 367
    aget-object v1, p1, v0

    .line 368
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 369
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_16
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    .line 559
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 561
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 562
    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_20

    .line 563
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide v3, 0x20900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 566
    :cond_20
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_32

    .line 567
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 569
    :cond_32
    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_40

    .line 570
    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/PersistableBundle;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 572
    :cond_40
    iget-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_52

    .line 573
    const-wide v0, 0x10300000004L

    iget-wide v2, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 576
    :cond_52
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 577
    return-void
.end method

.method public whitelist filterMimeTypes(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    .line 330
    nop

    .line 331
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 332
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_a
    if-ge v2, v0, :cond_2f

    .line 333
    iget-object v4, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 334
    if-nez v3, :cond_21

    .line 335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 337
    :cond_21
    iget-object v4, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 340
    :cond_2f
    if-nez v3, :cond_32

    .line 341
    return-object v1

    .line 343
    :cond_32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 344
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 345
    return-object p1
.end method

.method public whitelist getClassificationStatus()I
    .registers 2

    .line 474
    iget v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    return v0
.end method

.method public whitelist getConfidenceScore(Ljava/lang/String;)F
    .registers 4

    .line 459
    iget v0, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_17

    .line 462
    iget-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 460
    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Classification not complete"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 383
    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getMimeType(I)Ljava/lang/String;
    .registers 3

    .line 359
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public whitelist getMimeTypeCount()I
    .registers 2

    .line 352
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getTimestamp()J
    .registers 3

    .line 276
    iget-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    return-wide v0
.end method

.method public whitelist hasMimeType(Ljava/lang/String;)Z
    .registers 6

    .line 294
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 296
    iget-object v3, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 297
    const/4 p1, 0x1

    return p1

    .line 295
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 300
    :cond_1d
    return v1
.end method

.method public blacklist hasMimeType([Ljava/lang/String;)Z
    .registers 6

    .line 313
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget-object v3, p1, v2

    .line 314
    invoke-virtual {p0, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 315
    const/4 p1, 0x1

    return p1

    .line 313
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 318
    :cond_12
    return v1
.end method

.method public whitelist isStyledText()Z
    .registers 2

    .line 419
    iget-boolean v0, p0, Landroid/content/ClipDescription;->mIsStyledText:Z

    return v0
.end method

.method public blacklist setClassificationStatus(I)V
    .registers 2

    .line 437
    iput p1, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 438
    return-void
.end method

.method public blacklist setConfidenceScores(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 482
    iget-object v0, p0, Landroid/content/ClipDescription;->mEntityConfidence:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 483
    const/4 p1, 0x3

    iput p1, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    .line 484
    return-void
.end method

.method public whitelist setExtras(Landroid/os/PersistableBundle;)V
    .registers 3

    .line 392
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    .line 393
    return-void
.end method

.method blacklist setIsStyledText(Z)V
    .registers 2

    .line 428
    iput-boolean p1, p0, Landroid/content/ClipDescription;->mIsStyledText:Z

    .line 429
    return-void
.end method

.method public greylist-max-o setTimestamp(J)V
    .registers 3

    .line 265
    iput-wide p1, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    .line 266
    return-void
.end method

.method public blacklist toShortString(Ljava/lang/StringBuilder;Z)Z
    .registers 11

    .line 503
    invoke-virtual {p0, p1}, Landroid/content/ClipDescription;->toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z

    move-result v0

    .line 504
    xor-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    const/16 v3, 0x29

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-eqz v2, :cond_3b

    .line 505
    if-eqz v0, :cond_14

    .line 506
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :cond_14
    nop

    .line 509
    if-eqz p2, :cond_2b

    .line 510
    const-string v0, "hasLabel("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3a

    .line 512
    :cond_2b
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    :goto_3a
    move v1, v5

    :cond_3b
    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_73

    .line 516
    if-nez v1, :cond_44

    .line 517
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 519
    :cond_44
    nop

    .line 520
    if-eqz p2, :cond_69

    .line 521
    iget-object p2, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/PersistableBundle;->isParcelled()Z

    move-result p2

    if-eqz p2, :cond_55

    .line 523
    const-string p2, "hasExtras"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 525
    :cond_55
    const-string p2, "hasExtras("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_72

    .line 528
    :cond_69
    iget-object p2, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p2}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :goto_72
    move v1, v5

    :cond_73
    iget-wide v2, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long p2, v2, v6

    if-lez p2, :cond_95

    .line 532
    if-nez v1, :cond_80

    .line 533
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 535
    :cond_80
    nop

    .line 536
    const/16 p2, 0x3c

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    iget-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    const/16 p2, 0x3e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_96

    .line 531
    :cond_95
    move v5, v1

    .line 540
    :goto_96
    xor-int/lit8 p1, v5, 0x1

    return p1
.end method

.method public greylist-max-o toShortStringTypesOnly(Ljava/lang/StringBuilder;)Z
    .registers 7

    .line 545
    nop

    .line 546
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 547
    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_24

    .line 548
    if-nez v4, :cond_14

    .line 549
    const/16 v4, 0x20

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    :cond_14
    nop

    .line 552
    iget-object v4, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    add-int/lit8 v3, v3, 0x1

    move v4, v2

    goto :goto_b

    .line 554
    :cond_24
    xor-int/lit8 p1, v4, 0x1

    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 490
    const-string v1, "ClipDescription { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/ClipDescription;->toShortString(Ljava/lang/StringBuilder;Z)Z

    .line 492
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o validate()V
    .registers 5

    .line 397
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    if-eqz v0, :cond_44

    .line 400
    iget-object v0, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 401
    if-lez v0, :cond_3b

    .line 404
    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_3a

    .line 405
    iget-object v2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 406
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mime type at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_3a
    return-void

    .line 402
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must have at least 1 mime type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null mime types"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 586
    iget-object v0, p0, Landroid/content/ClipDescription;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 587
    iget-object p2, p0, Landroid/content/ClipDescription;->mMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 588
    iget-object p2, p0, Landroid/content/ClipDescription;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 589
    iget-wide v0, p0, Landroid/content/ClipDescription;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 590
    iget-boolean p2, p0, Landroid/content/ClipDescription;->mIsStyledText:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 591
    iget p2, p0, Landroid/content/ClipDescription;->mClassificationStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 592
    invoke-direct {p0}, Landroid/content/ClipDescription;->confidencesToBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 593
    return-void
.end method
