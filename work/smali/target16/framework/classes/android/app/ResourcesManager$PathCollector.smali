.class Landroid/app/ResourcesManager$PathCollector;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathCollector"
.end annotation


# instance fields
.field public final blacklist libsSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist orderedLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist orderedOverlays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist originalKey:Landroid/content/res/ResourcesKey;

.field public final blacklist overlaysSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/content/res/ResourcesKey;)V
    .registers 3

    .line 1723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    .line 1704
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    .line 1705
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    .line 1706
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    .line 1724
    iput-object p1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    .line 1725
    iget-object p1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-eqz p1, :cond_2a

    .line 1726
    iget-object p1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    invoke-virtual {p0, p1}, Landroid/app/ResourcesManager$PathCollector;->appendKey(Landroid/content/res/ResourcesKey;)V

    .line 1728
    :cond_2a
    return-void
.end method

.method static blacklist appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1717
    if-nez p0, :cond_3

    return-void

    .line 1718
    :cond_3
    array-length v0, p0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    .line 1719
    aget-object v2, p0, v1

    invoke-static {v2, p1, p2}, Landroid/app/ResourcesManager$PathCollector;->appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 1718
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1721
    :cond_f
    return-void
.end method

.method static blacklist appendNewPath(Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1710
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1711
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1713
    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist appendKey(Landroid/content/res/ResourcesKey;)V
    .registers 5

    .line 1731
    iget-object v0, p1, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->libsSet:Landroid/util/ArraySet;

    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 1732
    iget-object p1, p1, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->overlaysSet:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Landroid/app/ResourcesManager$PathCollector;->appendAllNewPaths([Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/ArrayList;)V

    .line 1733
    return-void
.end method

.method blacklist collectedKey()Landroid/content/res/ResourcesKey;
    .registers 13

    .line 1748
    new-instance v0, Landroid/content/res/ResourcesKey;

    .line 1749
    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    const/4 v2, 0x0

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_d

    :cond_9
    iget-object v1, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget v1, v1, Landroid/content/res/ResourcesKey;->mTokenIdentity:I

    .line 1750
    :goto_d
    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    const/4 v4, 0x0

    if-nez v3, :cond_14

    move-object v3, v4

    goto :goto_18

    :cond_14
    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v3, v3, Landroid/content/res/ResourcesKey;->mResDir:Ljava/lang/String;

    .line 1751
    :goto_18
    iget-object v5, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v5, :cond_1e

    move-object v5, v4

    goto :goto_22

    :cond_1e
    iget-object v5, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v5, v5, Landroid/content/res/ResourcesKey;->mSplitResDirs:[Ljava/lang/String;

    :goto_22
    iget-object v6, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    new-array v7, v2, [Ljava/lang/String;

    .line 1752
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    iget-object v7, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    new-array v8, v2, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 1753
    iget-object v8, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v8, :cond_3b

    goto :goto_3f

    :cond_3b
    iget-object v2, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget v2, v2, Landroid/content/res/ResourcesKey;->mDisplayId:I

    .line 1754
    :goto_3f
    iget-object v8, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v8, :cond_45

    move-object v8, v4

    goto :goto_49

    :cond_45
    iget-object v8, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v8, v8, Landroid/content/res/ResourcesKey;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 1755
    :goto_49
    iget-object v9, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v9, :cond_4f

    move-object v9, v4

    goto :goto_53

    :cond_4f
    iget-object v9, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v9, v9, Landroid/content/res/ResourcesKey;->mCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 1756
    :goto_53
    iget-object v10, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    if-nez v10, :cond_58

    goto :goto_5c

    :cond_58
    iget-object v4, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v4, v4, Landroid/content/res/ResourcesKey;->mLoaders:[Landroid/content/res/loader/ResourcesLoader;

    :goto_5c
    move-object v11, v6

    move v6, v2

    move-object v2, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v4

    move-object v4, v11

    invoke-direct/range {v0 .. v9}, Landroid/content/res/ResourcesKey;-><init>(ILjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;[Landroid/content/res/loader/ResourcesLoader;)V

    .line 1748
    return-object v0
.end method

.method blacklist isSameAsOriginal()Z
    .registers 5

    .line 1736
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_19

    .line 1737
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1

    .line 1739
    :cond_19
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_27
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mLibDirs:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->orderedLibs:Ljava/util/ArrayList;

    .line 1741
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_5c

    :cond_3a
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-nez v0, :cond_48

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    .line 1742
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    :cond_48
    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Landroid/app/ResourcesManager$PathCollector;->originalKey:Landroid/content/res/ResourcesKey;

    iget-object v0, v0, Landroid/content/res/ResourcesKey;->mOverlayPaths:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p0, Landroid/app/ResourcesManager$PathCollector;->orderedOverlays:Ljava/util/ArrayList;

    .line 1744
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v0, v3, :cond_5c

    :cond_5b
    goto :goto_5d

    :cond_5c
    move v1, v2

    .line 1739
    :goto_5d
    return v1
.end method
