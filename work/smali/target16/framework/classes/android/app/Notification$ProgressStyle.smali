.class public Landroid/app/Notification$ProgressStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$ProgressStyle$Segment;,
        Landroid/app/Notification$ProgressStyle$Point;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_PROGRESS_MAX:I = 0x64

.field private static final blacklist KEY_ELEMENT_COLOR:Ljava/lang/String; = "colorInt"

.field private static final blacklist KEY_ELEMENT_ID:Ljava/lang/String; = "id"

.field private static final blacklist KEY_POINT_POSITION:Ljava/lang/String; = "position"

.field private static final blacklist KEY_SEGMENT_LENGTH:Ljava/lang/String; = "length"

.field private static final blacklist MAX_PROGRESS_POINT_LIMIT:I = 0x4

.field private static final blacklist MAX_PROGRESS_SEGMENT_LIMIT:I = 0xa


# instance fields
.field private blacklist mEndIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mIndeterminate:Z

.field private blacklist mIsStyledByProgress:Z

.field private blacklist mProgress:I

.field private blacklist mProgressPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProgressSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mStartIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mTrackerIcon:Landroid/graphics/drawable/Icon;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 13021
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 13031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 13032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 13034
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    .line 13038
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    return-void
.end method

.method public static blacklist getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 13584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13585
    if-eqz p0, :cond_48

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 13586
    const/4 v1, 0x0

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 13587
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Point;

    .line 13588
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v3

    if-gez v3, :cond_21

    .line 13589
    goto :goto_45

    .line 13592
    :cond_21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 13593
    const-string/jumbo v4, "position"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13594
    const-string v4, "id"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13595
    const-string v4, "colorInt"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13597
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13586
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 13601
    :cond_48
    return-object v0
.end method

.method public static blacklist getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    .line 13609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13611
    if-eqz p0, :cond_44

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 13612
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 13613
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 13614
    const-string/jumbo v4, "position"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 13615
    if-gez v4, :cond_25

    .line 13616
    goto :goto_41

    .line 13618
    :cond_25
    const-string v5, "id"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 13619
    const-string v6, "colorInt"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 13621
    new-instance v6, Landroid/app/Notification$ProgressStyle$Point;

    invoke-direct {v6, v4}, Landroid/app/Notification$ProgressStyle$Point;-><init>(I)V

    invoke-virtual {v6, v5}, Landroid/app/Notification$ProgressStyle$Point;->setId(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$ProgressStyle$Point;->setColor(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v3

    .line 13622
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13612
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 13626
    :cond_44
    return-object v0
.end method

.method public static blacklist getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 13533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13534
    if-eqz p0, :cond_48

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_48

    .line 13535
    const/4 v1, 0x0

    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 13536
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    .line 13537
    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v3

    if-gtz v3, :cond_21

    .line 13538
    goto :goto_45

    .line 13541
    :cond_21
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 13542
    const-string/jumbo v4, "length"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13543
    const-string v4, "id"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13544
    const-string v4, "colorInt"

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13546
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13535
    :goto_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 13550
    :cond_48
    return-object v0
.end method

.method public static blacklist getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 13558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13559
    if-eqz p0, :cond_44

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_44

    .line 13560
    const/4 v1, 0x0

    move v2, v1

    :goto_f
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 13561
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 13562
    const-string/jumbo v4, "length"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 13563
    if-gtz v4, :cond_25

    .line 13564
    goto :goto_41

    .line 13567
    :cond_25
    const-string v5, "id"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 13568
    const-string v6, "colorInt"

    invoke-virtual {v3, v6, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 13570
    new-instance v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v6, v4}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 13571
    invoke-virtual {v6, v5}, Landroid/app/Notification$ProgressStyle$Segment;->setId(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v3

    .line 13573
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13560
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 13577
    :cond_44
    return-object v0
.end method

.method private blacklist sanitizePoint(Landroid/app/Notification$ProgressStyle$Point;II)Landroid/app/Notification$ProgressStyle$Point;
    .registers 6

    .line 13749
    new-instance v0, Landroid/app/Notification$ProgressStyle$Point;

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/Notification$ProgressStyle$Point;-><init>(I)V

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Point;->setId(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v0

    .line 13750
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getColor()I

    move-result p1

    invoke-static {p1, p2, p3}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$ProgressStyle$Point;->setColor(I)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object p1

    .line 13749
    return-object p1
.end method

.method public static blacklist sanitizeProgressColor(III)I
    .registers 5

    .line 13765
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_7

    move p0, p2

    .line 13764
    :cond_7
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {p0, p1, v0, v1}, Landroid/app/Notification$Builder;->-$$Nest$smensureColorContrast(IID)I

    move-result p0

    return p0
.end method

.method private blacklist sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;
    .registers 6

    .line 13741
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 13742
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$ProgressStyle$Segment;->setId(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    .line 13743
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result p1

    invoke-static {p1, p2, p3}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object p1

    .line 13741
    return-object p1
.end method


# virtual methods
.method public blacklist addExtras(Landroid/os/Bundle;)V
    .registers 4

    .line 13400
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 13401
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 13402
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 13401
    const-string v1, "android.progressSegments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 13403
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 13404
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressPointsAsBundleList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 13403
    const-string v1, "android.progressPoints"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 13406
    const-string v0, "android.progress"

    iget v1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13407
    const-string v0, "android.progressIndeterminate"

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13408
    const-string v0, "android.progressMax"

    invoke-virtual {p0}, Landroid/app/Notification$ProgressStyle;->getProgressMax()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13409
    const-string v0, "android.styledByProgress"

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13411
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressTrackerIcon"

    if-eqz v0, :cond_43

    .line 13412
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_46

    .line 13414
    :cond_43
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 13417
    :goto_46
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressStartIcon"

    if-eqz v0, :cond_52

    .line 13418
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_55

    .line 13420
    :cond_52
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 13423
    :goto_55
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.progressEndIcon"

    if-eqz v0, :cond_61

    .line 13424
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_64

    .line 13426
    :cond_61
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 13428
    :goto_64
    return-void
.end method

.method public whitelist addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;
    .registers 4

    .line 13173
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    if-nez v0, :cond_b

    .line 13174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 13176
    :cond_b
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v0

    const-string v1, "Notification"

    if-lez v0, :cond_27

    .line 13177
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13179
    iget-object p1, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-le p1, v0, :cond_2c

    .line 13180
    const-string p1, "Progress points limit is reached. First4 points will be rendered."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 13185
    :cond_27
    const-string p1, "Dropped the point. The position is a negative or zero integer."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13188
    :cond_2c
    :goto_2c
    return-object p0
.end method

.method public whitelist addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;
    .registers 4

    .line 13115
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    if-nez v0, :cond_b

    .line 13116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 13118
    :cond_b
    invoke-virtual {p1}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v0

    const-string v1, "Notification"

    if-lez v0, :cond_28

    .line 13119
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13120
    iget-object p1, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_2d

    .line 13121
    const-string p1, "Progress segments limit (10) is reached. All segments will be merged into one segment."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 13126
    :cond_28
    const-string p1, "Dropped the segment. The length is not a positive integer."

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13129
    :cond_2d
    :goto_2d
    return-object p0
.end method

.method public blacklist areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 7

    .line 13052
    const/4 v0, 0x1

    if-eqz p1, :cond_8d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto/16 :goto_8d

    .line 13056
    :cond_f
    check-cast p1, Landroid/app/Notification$ProgressStyle;

    .line 13059
    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p1, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 13060
    return v0

    .line 13062
    :cond_24
    nop

    .line 13063
    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    const/4 v2, 0x0

    if-nez v1, :cond_71

    .line 13064
    iget v1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, p1, Landroid/app/Notification$ProgressStyle;->mProgress:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-boolean v1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    .line 13065
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v3, p1, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    iget-object v3, p1, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 13066
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    iget-object v3, p1, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 13067
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6f

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, p1, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    .line 13068
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_6f

    :cond_6d
    move v1, v2

    goto :goto_72

    :cond_6f
    :goto_6f
    move v1, v0

    goto :goto_72

    .line 13063
    :cond_71
    move v1, v2

    .line 13071
    :goto_72
    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, p1, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    iget-object p1, p1, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    .line 13072
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8b

    if-eqz v1, :cond_89

    goto :goto_8b

    :cond_89
    move v0, v2

    goto :goto_8c

    :cond_8b
    :goto_8b
    nop

    .line 13071
    :goto_8c
    return v0

    .line 13053
    :cond_8d
    :goto_8d
    return v0
.end method

.method public blacklist createProgressModel(II)Lcom/android/internal/widget/NotificationProgressModel;
    .registers 11

    .line 13635
    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 13637
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 13638
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-static {v0}, Landroid/app/Notification$ProgressStyle$Segment;->-$$Nest$fgetmColor(Landroid/app/Notification$ProgressStyle$Segment;)I

    move-result v0

    goto :goto_1b

    .line 13640
    :cond_1a
    move v0, p1

    .line 13643
    :goto_1b
    new-instance v1, Lcom/android/internal/widget/NotificationProgressModel;

    .line 13644
    invoke-static {v0, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(I)V

    .line 13646
    goto/16 :goto_129

    .line 13648
    :cond_26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 13649
    nop

    .line 13650
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_33
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x64

    if-eqz v4, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$ProgressStyle$Segment;

    .line 13651
    invoke-virtual {v4}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v6

    .line 13652
    if-gtz v6, :cond_48

    goto :goto_33

    .line 13655
    :cond_48
    :try_start_48
    invoke-static {v2, v6}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    .line 13656
    invoke-direct {p0, v4, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Ljava/lang/ArithmeticException; {:try_start_48 .. :try_end_53} :catch_55

    .line 13662
    nop

    .line 13663
    goto :goto_33

    .line 13658
    :catch_55
    move-exception v0

    .line 13659
    nop

    .line 13660
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 13661
    move v2, v5

    .line 13666
    :cond_5b
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_70

    .line 13667
    nop

    .line 13668
    new-instance v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v0, v5}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    invoke-direct {p0, v0, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    .line 13670
    :cond_70
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/16 v5, 0xa

    if-le v0, v5, :cond_b3

    .line 13673
    nop

    .line 13674
    invoke-interface {v3}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v0}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v0

    .line 13676
    move v5, v4

    :goto_84
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_9c

    .line 13677
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v6}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v6

    if-eq v6, v0, :cond_99

    .line 13678
    nop

    .line 13679
    move v5, v1

    goto :goto_9d

    .line 13676
    :cond_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_84

    :cond_9c
    move v5, v4

    .line 13684
    :goto_9d
    new-instance v6, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-direct {v6, v2}, Landroid/app/Notification$ProgressStyle$Segment;-><init>(I)V

    .line 13687
    if-eqz v5, :cond_a5

    goto :goto_a6

    .line 13688
    :cond_a5
    move v0, v1

    .line 13687
    :goto_a6
    invoke-virtual {v6, v0}, Landroid/app/Notification$ProgressStyle$Segment;->setColor(I)Landroid/app/Notification$ProgressStyle$Segment;

    .line 13690
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 13691
    invoke-direct {p0, v6, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeSegment(Landroid/app/Notification$ProgressStyle$Segment;II)Landroid/app/Notification$ProgressStyle$Segment;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13697
    :cond_b3
    move v5, v2

    :goto_b4
    move v0, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13698
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c0
    :goto_c0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$ProgressStyle$Point;

    .line 13699
    invoke-virtual {v6}, Landroid/app/Notification$ProgressStyle$Point;->getPosition()I

    move-result v7

    .line 13702
    if-lez v7, :cond_c0

    if-lt v7, v5, :cond_d5

    goto :goto_c0

    .line 13703
    :cond_d5
    invoke-direct {p0, v6, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizePoint(Landroid/app/Notification$ProgressStyle$Point;II)Landroid/app/Notification$ProgressStyle$Point;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13704
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_e4

    .line 13705
    goto :goto_e5

    .line 13707
    :cond_e4
    goto :goto_c0

    .line 13712
    :cond_e5
    :goto_e5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v0, :cond_ed

    .line 13713
    move v7, v1

    goto :goto_11a

    .line 13716
    :cond_ed
    nop

    .line 13717
    invoke-interface {v3}, Ljava/util/List;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v2}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v2

    .line 13718
    move v6, v0

    :goto_f9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_111

    .line 13719
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v7}, Landroid/app/Notification$ProgressStyle$Segment;->getColor()I

    move-result v7

    if-eq v7, v2, :cond_10e

    .line 13720
    nop

    .line 13721
    move v0, v1

    goto :goto_111

    .line 13718
    :cond_10e
    add-int/lit8 v6, v6, 0x1

    goto :goto_f9

    .line 13726
    :cond_111
    :goto_111
    if-eqz v0, :cond_115

    move p1, v1

    goto :goto_119

    .line 13727
    :cond_115
    invoke-static {v1, p2, p1}, Landroid/app/Notification$ProgressStyle;->sanitizeProgressColor(III)I

    move-result p1

    :goto_119
    move v7, p1

    .line 13731
    :goto_11a
    new-instance v2, Lcom/android/internal/widget/NotificationProgressModel;

    iget p1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    int-to-long p1, p1

    .line 13732
    invoke-static {p1, p2, v1, v5}, Ljava/lang/Math;->clamp(JII)I

    move-result v5

    iget-boolean v6, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/widget/NotificationProgressModel;-><init>(Ljava/util/List;Ljava/util/List;IZI)V

    move-object v1, v2

    .line 13735
    :goto_129
    return-object v1
.end method

.method public blacklist displayCustomViewInline()Z
    .registers 2

    .line 13456
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getProgress()I
    .registers 2

    .line 13197
    iget v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    return v0
.end method

.method public whitelist getProgressEndIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 13339
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getProgressMax()I
    .registers 7

    .line 13218
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 13219
    const/16 v1, 0x64

    if-eqz v0, :cond_3b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_3b

    .line 13222
    :cond_d
    nop

    .line 13223
    nop

    .line 13224
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_37

    .line 13225
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/Notification$ProgressStyle$Segment;

    invoke-virtual {v5}, Landroid/app/Notification$ProgressStyle$Segment;->getLength()I

    move-result v5

    .line 13226
    if-lez v5, :cond_34

    .line 13228
    :try_start_24
    invoke-static {v4, v5}, Ljava/lang/Math;->addExact(II)I

    move-result v4
    :try_end_28
    .catch Ljava/lang/ArithmeticException; {:try_start_24 .. :try_end_28} :catch_2b

    .line 13229
    add-int/lit8 v3, v3, 0x1

    .line 13234
    goto :goto_34

    .line 13230
    :catch_2b
    move-exception v0

    .line 13231
    const-string v2, "Notification"

    const-string v3, "Notification.ProgressStyle segment total overflowed."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13233
    return v1

    .line 13224
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 13238
    :cond_37
    if-nez v3, :cond_3a

    .line 13239
    return v1

    .line 13242
    :cond_3a
    return v4

    .line 13220
    :cond_3b
    :goto_3b
    return v1
.end method

.method public whitelist getProgressPoints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;"
        }
    .end annotation

    .line 13139
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getProgressSegments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;"
        }
    .end annotation

    .line 13086
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getProgressStartIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 13321
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getProgressTrackerIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 13301
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist isProgressIndeterminate()Z
    .registers 2

    .line 13252
    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    return v0
.end method

.method public whitelist isStyledByProgress()Z
    .registers 2

    .line 13277
    iget-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    return v0
.end method

.method public blacklist makeContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 13463
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 13464
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 13465
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 13466
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 13468
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetCollapsedBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeExpandedContentView()Landroid/widget/RemoteViews;
    .registers 7

    .line 13487
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_EXPANDED:I

    .line 13488
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 13489
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 13490
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 13491
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 13494
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetProgressLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 13498
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v5, 0x1020444

    if-eqz v2, :cond_3b

    .line 13499
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13500
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_3e

    .line 13502
    :cond_3b
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13505
    :goto_3e
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    const v5, 0x1020443

    if-eqz v2, :cond_4e

    .line 13506
    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13507
    iget-object v2, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    goto :goto_51

    .line 13509
    :cond_4e
    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13512
    :goto_51
    const v2, 0x102000d

    invoke-virtual {v1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13514
    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetColors(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)Landroid/app/Notification$Colors;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Colors;->getBackgroundColor()I

    move-result v3

    .line 13515
    iget-object v4, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v0}, Landroid/app/Notification$Builder;->-$$Nest$mgetPrimaryAccentColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v0

    .line 13516
    invoke-virtual {p0, v0, v3}, Landroid/app/Notification$ProgressStyle;->createProgressModel(II)Lcom/android/internal/widget/NotificationProgressModel;

    move-result-object v0

    .line 13518
    nop

    .line 13519
    invoke-virtual {v0}, Lcom/android/internal/widget/NotificationProgressModel;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 13518
    const-string/jumbo v3, "setProgressModel"

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 13521
    const-string/jumbo v0, "setProgressTrackerIcon"

    iget-object v3, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v2, v0, v3}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 13525
    return-object v1
.end method

.method public blacklist makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .registers 4

    .line 13475
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 13476
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 13477
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 13478
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 13480
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$ProgressStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist purgeResources()V
    .registers 2

    .line 13357
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 13358
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_c

    .line 13359
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 13361
    :cond_c
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_15

    .line 13362
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 13364
    :cond_15
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1e

    .line 13365
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 13367
    :cond_1e
    return-void
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .registers 4

    .line 13374
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 13376
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 13378
    nop

    .line 13379
    const v0, 0x10502ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13380
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_18

    .line 13381
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 13383
    :cond_18
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_21

    .line 13384
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 13386
    :cond_21
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_38

    .line 13387
    const v0, 0x10502fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13389
    const v1, 0x10502fb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 13391
    iget-object v1, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 13393
    :cond_38
    return-void
.end method

.method protected blacklist restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4

    .line 13435
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 13436
    const-class v0, Landroid/os/Bundle;

    .line 13437
    const-string v1, "android.progressSegments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 13436
    invoke-static {v0}, Landroid/app/Notification$ProgressStyle;->getProgressSegmentsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 13438
    const-string v0, "android.progress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    .line 13439
    const-string v0, "android.progressIndeterminate"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    .line 13440
    const-string v0, "android.styledByProgress"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    .line 13441
    const-string v0, "android.progressTrackerIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    .line 13442
    const-string v0, "android.progressStartIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    .line 13443
    const-string v0, "android.progressEndIcon"

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    .line 13444
    const-class v0, Landroid/os/Bundle;

    .line 13445
    const-string v1, "android.progressPoints"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 13444
    invoke-static {p1}, Landroid/app/Notification$ProgressStyle;->getProgressPointsFromBundleList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 13446
    return-void
.end method

.method public whitelist setProgress(I)Landroid/app/Notification$ProgressStyle;
    .registers 2

    .line 13208
    iput p1, p0, Landroid/app/Notification$ProgressStyle;->mProgress:I

    .line 13209
    return-object p0
.end method

.method public whitelist setProgressEndIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .registers 2

    .line 13348
    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mEndIcon:Landroid/graphics/drawable/Icon;

    .line 13349
    return-object p0
.end method

.method public whitelist setProgressIndeterminate(Z)Landroid/app/Notification$ProgressStyle;
    .registers 2

    .line 13268
    iput-boolean p1, p0, Landroid/app/Notification$ProgressStyle;->mIndeterminate:Z

    .line 13269
    return-object p0
.end method

.method public whitelist setProgressPoints(Ljava/util/List;)Landroid/app/Notification$ProgressStyle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Point;",
            ">;)",
            "Landroid/app/Notification$ProgressStyle;"
        }
    .end annotation

    .line 13150
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    if-nez v0, :cond_b

    .line 13151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    .line 13153
    :cond_b
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Point;

    .line 13156
    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle;->addProgressPoint(Landroid/app/Notification$ProgressStyle$Point;)Landroid/app/Notification$ProgressStyle;

    .line 13157
    goto :goto_14

    .line 13158
    :cond_24
    return-object p0
.end method

.method public whitelist setProgressSegments(Ljava/util/List;)Landroid/app/Notification$ProgressStyle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$ProgressStyle$Segment;",
            ">;)",
            "Landroid/app/Notification$ProgressStyle;"
        }
    .end annotation

    .line 13097
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    if-nez v0, :cond_b

    .line 13098
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    .line 13100
    :cond_b
    iget-object v0, p0, Landroid/app/Notification$ProgressStyle;->mProgressSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 13101
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$ProgressStyle$Segment;

    .line 13102
    invoke-virtual {p0, v0}, Landroid/app/Notification$ProgressStyle;->addProgressSegment(Landroid/app/Notification$ProgressStyle$Segment;)Landroid/app/Notification$ProgressStyle;

    .line 13103
    goto :goto_14

    .line 13104
    :cond_24
    return-object p0
.end method

.method public whitelist setProgressStartIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .registers 2

    .line 13330
    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mStartIcon:Landroid/graphics/drawable/Icon;

    .line 13331
    return-object p0
.end method

.method public whitelist setProgressTrackerIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$ProgressStyle;
    .registers 2

    .line 13312
    iput-object p1, p0, Landroid/app/Notification$ProgressStyle;->mTrackerIcon:Landroid/graphics/drawable/Icon;

    .line 13313
    return-object p0
.end method

.method public whitelist setStyledByProgress(Z)Landroid/app/Notification$ProgressStyle;
    .registers 2

    .line 13292
    iput-boolean p1, p0, Landroid/app/Notification$ProgressStyle;->mIsStyledByProgress:Z

    .line 13293
    return-object p0
.end method
