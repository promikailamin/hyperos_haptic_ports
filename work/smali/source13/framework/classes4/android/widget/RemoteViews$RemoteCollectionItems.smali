.class public final Landroid/widget/RemoteViews$RemoteCollectionItems;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteCollectionItems"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mHasStableIds:Z

.field private blacklist mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

.field private final blacklist mIds:[J

.field private final blacklist mViewTypeCount:I

.field private final blacklist mViews:[Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mvisitUris(Landroid/widget/RemoteViews$RemoteCollectionItems;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;->visitUris(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RemoteViews$RemoteCollectionItems;->writeToParcel(Landroid/os/Parcel;IZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 6941
    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews$RemoteCollectionItems;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 15
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "hierarchyRootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 6809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6810
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    .line 6811
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    .line 6812
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 6813
    .local v0, "length":I
    new-array v1, v0, [J

    iput-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    .line 6814
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readLongArray([J)V

    .line 6816
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 6817
    .local v1, "attached":Z
    new-array v2, v0, [Landroid/widget/RemoteViews;

    iput-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    .line 6819
    if-eqz v1, :cond_32

    .line 6820
    if-eqz p2, :cond_2a

    .line 6825
    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    .line 6826
    const/4 v2, 0x0

    .local v2, "firstChildIndex":I
    goto :goto_41

    .line 6821
    .end local v2    # "firstChildIndex":I
    :cond_2a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot unparcel a RemoteCollectionItems that was parceled as attached without providing data for a root RemoteViews"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6828
    :cond_32
    const/4 v3, 0x0

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-direct {v4, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    aput-object v4, v2, v3

    .line 6829
    invoke-static {v4}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    .line 6830
    const/4 v2, 0x1

    .line 6833
    .restart local v2    # "firstChildIndex":I
    :goto_41
    move v3, v2

    .local v3, "i":I
    :goto_42
    if-ge v3, v0, :cond_57

    .line 6834
    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    new-instance v11, Landroid/widget/RemoteViews;

    iget-object v7, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;Landroid/content/pm/ApplicationInfo;ILandroid/widget/RemoteViews-IA;)V

    aput-object v11, v4, v3

    .line 6833
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 6840
    .end local v3    # "i":I
    :cond_57
    return-void
.end method

.method constructor blacklist <init>([J[Landroid/widget/RemoteViews;ZI)V
    .registers 9
    .param p1, "ids"    # [J
    .param p2, "views"    # [Landroid/widget/RemoteViews;
    .param p3, "hasStableIds"    # Z
    .param p4, "viewTypeCount"    # I

    .line 6779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6780
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    .line 6781
    iput-object p2, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    .line 6782
    iput-boolean p3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    .line 6783
    iput p4, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    .line 6784
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_6e

    .line 6788
    const/4 v0, 0x1

    if-lt p4, v0, :cond_66

    .line 6791
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$$ExternalSyntheticLambda0;-><init>()V

    .line 6792
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    .line 6793
    invoke-interface {v1}, Ljava/util/stream/IntStream;->distinct()Ljava/util/stream/IntStream;

    move-result-object v1

    .line 6794
    invoke-interface {v1}, Ljava/util/stream/IntStream;->count()J

    move-result-wide v1

    long-to-int v1, v1

    .line 6795
    .local v1, "layoutIdCount":I
    if-gt v1, p4, :cond_3d

    .line 6803
    array-length v2, p2

    if-lez v2, :cond_3c

    .line 6804
    const/4 v2, 0x0

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6805
    aget-object v2, p2, v2

    invoke-static {v2, v0}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    .line 6807
    :cond_3c
    return-void

    .line 6796
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View type count is set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but the collection contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " different layout ids"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6789
    .end local v1    # "layoutIdCount":I
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "View type count must be >= 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6785
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RemoteCollectionItems has different number of ids and views"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist visitUris(Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 7036
    .local p1, "visitor":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 7037
    .local v3, "view":Landroid/widget/RemoteViews;
    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 7036
    .end local v3    # "view":Landroid/widget/RemoteViews;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 7039
    :cond_e
    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;IZ)V
    .registers 11
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "attached"    # Z

    .line 6860
    invoke-virtual {p1}, Landroid/os/Parcel;->allowSquashing()Z

    move-result v0

    .line 6862
    .local v0, "prevAllowSquashing":Z
    iget-boolean v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6863
    iget v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6864
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6865
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 6867
    if-eqz p3, :cond_28

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    if-eqz v1, :cond_20

    goto :goto_28

    .line 6868
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot call writeToParcelAttached for a RemoteCollectionItems without first calling setHierarchyRootData()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6874
    :cond_28
    :goto_28
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6875
    const/4 v1, 0x0

    .line 6876
    .local v1, "restoreRoot":Z
    const/4 v2, 0x0

    if-nez p3, :cond_45

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v4, v3

    if-lez v4, :cond_45

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/widget/RemoteViews;->-$$Nest$fgetmIsRoot(Landroid/widget/RemoteViews;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 6879
    const/4 v1, 0x1

    .line 6880
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    .line 6883
    :cond_45
    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v4, v3

    move v5, v2

    :goto_49
    if-ge v5, v4, :cond_53

    aget-object v6, v3, v5

    .line 6884
    .local v6, "view":Landroid/widget/RemoteViews;
    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 6883
    .end local v6    # "view":Landroid/widget/RemoteViews;
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 6887
    :cond_53
    if-eqz v1, :cond_5c

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v3, v3, v2

    invoke-static {v3, v2}, Landroid/widget/RemoteViews;->-$$Nest$fputmIsRoot(Landroid/widget/RemoteViews;Z)V

    .line 6888
    :cond_5c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowSquashing(Z)V

    .line 6889
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 6851
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getItemCount()I
    .registers 2

    .line 6917
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    array-length v0, v0

    return v0
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 6898
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mIds:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public whitelist getItemView(I)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "position"    # I

    .line 6908
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 6927
    iget v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViewTypeCount:I

    return v0
.end method

.method public whitelist hasStableIds()Z
    .registers 2

    .line 6937
    iget-boolean v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHasStableIds:Z

    return v0
.end method

.method blacklist setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V
    .registers 6
    .param p1, "rootData"    # Landroid/widget/RemoteViews$HierarchyRootData;

    .line 6843
    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mHierarchyRootData:Landroid/widget/RemoteViews$HierarchyRootData;

    .line 6844
    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionItems;->mViews:[Landroid/widget/RemoteViews;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 6845
    .local v3, "view":Landroid/widget/RemoteViews;
    invoke-static {v3, p1}, Landroid/widget/RemoteViews;->-$$Nest$mconfigureAsChild(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$HierarchyRootData;)V

    .line 6844
    .end local v3    # "view":Landroid/widget/RemoteViews;
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6847
    :cond_10
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6856
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->writeToParcel(Landroid/os/Parcel;IZ)V

    .line 6857
    return-void
.end method
