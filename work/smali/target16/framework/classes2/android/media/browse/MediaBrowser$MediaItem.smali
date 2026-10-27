.class public Landroid/media/browse/MediaBrowser$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/browse/MediaBrowser$MediaItem$Flags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_BROWSABLE:I = 0x1

.field public static final whitelist FLAG_PLAYABLE:I = 0x2


# instance fields
.field private final greylist-max-o mDescription:Landroid/media/MediaDescription;

.field private final greylist-max-o mFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 837
    new-instance v0, Landroid/media/browse/MediaBrowser$MediaItem$1;

    invoke-direct {v0}, Landroid/media/browse/MediaBrowser$MediaItem$1;-><init>()V

    sput-object v0, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/MediaDescription;I)V
    .registers 4

    .line 798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 799
    if-eqz p1, :cond_1c

    .line 802
    invoke-virtual {p1}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 805
    iput p2, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    .line 806
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    .line 807
    return-void

    .line 803
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "description must have a non-empty media id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 800
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "description cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 813
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    .line 814
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaDescription;

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    .line 815
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/browse/MediaBrowser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDescription()Landroid/media/MediaDescription;
    .registers 2

    .line 877
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    return-object v0
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 854
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    return v0
.end method

.method public whitelist getMediaId()Ljava/lang/String;
    .registers 2

    .line 885
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isBrowsable()Z
    .registers 3

    .line 862
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist isPlayable()Z
    .registers 2

    .line 870
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MediaItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 831
    const-string v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 832
    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 833
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 824
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 825
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 826
    return-void
.end method
