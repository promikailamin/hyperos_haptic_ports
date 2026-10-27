.class public final Lcom/android/server/content/ContentService$ObserverNode;
.super Ljava/lang/Object;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserverNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    }
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    .line 1760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    .line 1763
    iput-object p1, p0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    .line 1764
    return-void
.end method

.method private addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 29
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "notifyForDescendants"    # Z
    .param p5, "observersLock"    # Ljava/lang/Object;
    .param p6, "uid"    # I
    .param p7, "pid"    # I
    .param p8, "userHandle"    # I

    .line 1828
    move-object/from16 v9, p0

    move/from16 v10, p2

    invoke-static/range {p1 .. p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v0

    if-ne v10, v0, :cond_26

    .line 1829
    iget-object v11, v9, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;-><init>(Lcom/android/server/content/ContentService$ObserverNode;Landroid/database/IContentObserver;ZLjava/lang/Object;IIILandroid/net/Uri;)V

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    return-void

    .line 1835
    :cond_26
    invoke-static/range {p1 .. p2}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    .line 1836
    .local v0, "segment":Ljava/lang/String;
    if-eqz v0, :cond_7c

    .line 1839
    iget-object v1, v9, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1840
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v1, :cond_5d

    .line 1841
    iget-object v3, v9, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1842
    .local v3, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 1843
    add-int/lit8 v13, v10, 0x1

    move-object v11, v3

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1845
    return-void

    .line 1840
    .end local v3    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    .line 1850
    .end local v2    # "i":I
    :cond_5d
    new-instance v2, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-direct {v2, v0}, Lcom/android/server/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    .line 1851
    .local v2, "node":Lcom/android/server/content/ContentService$ObserverNode;
    iget-object v3, v9, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1852
    add-int/lit8 v13, v10, 0x1

    move-object v11, v2

    move-object/from16 v12, p1

    move-object/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    invoke-direct/range {v11 .. v19}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1854
    return-void

    .line 1837
    .end local v1    # "N":I
    .end local v2    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_7c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Uri ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") used for observer"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .registers 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "leaf"    # Z
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"    # Z
    .param p5, "flags"    # I
    .param p6, "targetUserHandle"    # I
    .param p7, "collector"    # Lcom/android/server/content/ContentService$ObserverCollector;

    .line 1888
    move-object v0, p0

    move/from16 v8, p6

    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1889
    .local v9, "N":I
    if-nez p3, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_11
    move-object v10, v1

    .line 1890
    .local v10, "observerBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    move v11, v1

    .local v11, "i":I
    :goto_14
    if-ge v11, v9, :cond_61

    .line 1891
    iget-object v1, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1895
    .local v12, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v1, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, v10, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    move v13, v1

    .line 1896
    .local v13, "selfChange":Z
    if-eqz v13, :cond_30

    if-nez p4, :cond_30

    .line 1897
    goto :goto_5e

    .line 1901
    :cond_30
    const/4 v1, -0x1

    if-eq v8, v1, :cond_3f

    invoke-static {v12}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->-$$Nest$fgetuserHandle(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v2

    if-eq v2, v1, :cond_3f

    invoke-static {v12}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->-$$Nest$fgetuserHandle(Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;)I

    move-result v1

    if-ne v8, v1, :cond_5e

    .line 1905
    :cond_3f
    if-eqz p2, :cond_4a

    .line 1909
    and-int/lit8 v1, p5, 0x2

    if-eqz v1, :cond_4f

    iget-boolean v1, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-eqz v1, :cond_4f

    .line 1913
    goto :goto_5e

    .line 1918
    :cond_4a
    iget-boolean v1, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->notifyForDescendants:Z

    if-nez v1, :cond_4f

    .line 1921
    goto :goto_5e

    .line 1927
    :cond_4f
    iget-object v2, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    iget v3, v12, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->uid:I

    move-object/from16 v1, p7

    move v4, v13

    move-object v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/content/ContentService$ObserverCollector;->collect(Landroid/database/IContentObserver;IZLandroid/net/Uri;II)V

    .line 1890
    .end local v12    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    .end local v13    # "selfChange":Z
    :cond_5e
    :goto_5e
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 1931
    .end local v11    # "i":I
    :cond_61
    return-void
.end method

.method public static countUriSegments(Landroid/net/Uri;)I
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1810
    if-nez p0, :cond_4

    .line 1811
    const/4 v0, 0x0

    return v0

    .line 1813
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "index"    # I

    .line 1798
    if-eqz p0, :cond_16

    .line 1799
    if-nez p1, :cond_9

    .line 1800
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1802
    :cond_9
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1805
    :cond_16
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;III)V
    .registers 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/IContentObserver;
    .param p3, "notifyForDescendants"    # Z
    .param p4, "observersLock"    # Ljava/lang/Object;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # I

    .line 1820
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/lang/Object;III)V

    .line 1822
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .registers 27
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "segmentCount"    # I
    .param p3, "index"    # I
    .param p4, "observer"    # Landroid/database/IContentObserver;
    .param p5, "observerWantsSelfNotifications"    # Z
    .param p6, "flags"    # I
    .param p7, "targetUserHandle"    # I
    .param p8, "collector"    # Lcom/android/server/content/ContentService$ObserverCollector;

    .line 1947
    move-object/from16 v8, p0

    move/from16 v15, p2

    move/from16 v14, p3

    const/4 v9, 0x0

    .line 1948
    .local v9, "segment":Ljava/lang/String;
    if-lt v14, v15, :cond_1e

    .line 1951
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    move-object/from16 v13, p1

    goto :goto_3c

    .line 1953
    :cond_1e
    if-ge v14, v15, :cond_3a

    .line 1954
    move-object/from16 v13, p1

    invoke-static {v13, v14}, Lcom/android/server/content/ContentService$ObserverNode;->getUriSegment(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v9

    .line 1958
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/ContentService$ObserverNode;->collectMyObserversLocked(Landroid/net/Uri;ZLandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    move-object v0, v9

    goto :goto_3d

    .line 1953
    :cond_3a
    move-object/from16 v13, p1

    .line 1962
    :goto_3c
    move-object v0, v9

    .end local v9    # "segment":Ljava/lang/String;
    .local v0, "segment":Ljava/lang/String;
    :goto_3d
    iget-object v1, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1963
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_44
    if-ge v2, v1, :cond_78

    .line 1964
    iget-object v3, v8, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    .line 1965
    .local v3, "node":Lcom/android/server/content/ContentService$ObserverNode;
    if-eqz v0, :cond_58

    iget-object v4, v3, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1967
    :cond_58
    add-int/lit8 v12, v14, 0x1

    move-object v9, v3

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    invoke-virtual/range {v9 .. v17}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 1969
    if-eqz v0, :cond_6f

    .line 1970
    goto :goto_78

    .line 1963
    .end local v3    # "node":Lcom/android/server/content/ContentService$ObserverNode;
    :cond_6f
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, p1

    move/from16 v15, p2

    move/from16 v14, p3

    goto :goto_44

    .line 1974
    .end local v2    # "i":I
    :cond_78
    :goto_78
    return-void
.end method

.method public collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V
    .registers 17
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "index"    # I
    .param p3, "observer"    # Landroid/database/IContentObserver;
    .param p4, "observerWantsSelfNotifications"    # Z
    .param p5, "flags"    # I
    .param p6, "targetUserHandle"    # I
    .param p7, "collector"    # Lcom/android/server/content/ContentService$ObserverCollector;

    .line 1937
    invoke-static {p1}, Lcom/android/server/content/ContentService$ObserverNode;->countUriSegments(Landroid/net/Uri;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;IILandroid/database/IContentObserver;ZIILcom/android/server/content/ContentService$ObserverCollector;)V

    .line 1939
    return-void
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V
    .registers 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "prefix"    # Ljava/lang/String;
    .param p6, "counts"    # [I
    .param p7, "pidCounts"    # Landroid/util/SparseIntArray;

    .line 1768
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    const/4 v2, 0x0

    .line 1769
    .local v2, "innerName":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-string v4, "/"

    const-string v5, ""

    const/4 v10, 0x1

    if-lez v3, :cond_5a

    .line 1770
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1771
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    goto :goto_32

    .line 1773
    :cond_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1775
    :goto_32
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_33
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5a

    .line 1776
    aget v6, p6, v10

    add-int/2addr v6, v10

    aput v6, p6, v10

    .line 1777
    iget-object v6, v0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object v15, v2

    move-object/from16 v16, p5

    move-object/from16 v17, p7

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 1775
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1781
    .end local v3    # "i":I
    :cond_5a
    iget-object v3, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b4

    .line 1782
    if-nez v2, :cond_87

    .line 1783
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1784
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    move-object v11, v2

    goto :goto_88

    .line 1786
    :cond_6e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/content/ContentService$ObserverNode;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_88

    .line 1782
    :cond_87
    move-object v11, v2

    .line 1789
    .end local v2    # "innerName":Ljava/lang/String;
    .local v11, "innerName":Ljava/lang/String;
    :goto_88
    const/4 v2, 0x0

    move v12, v2

    .local v12, "i":I
    :goto_8a
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_b3

    .line 1790
    const/4 v2, 0x0

    aget v3, p6, v2

    add-int/2addr v3, v10

    aput v3, p6, v2

    .line 1791
    iget-object v2, v0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/content/ContentService$ObserverNode;

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    .line 1789
    add-int/lit8 v12, v12, 0x1

    goto :goto_8a

    :cond_b3
    move-object v2, v11

    .line 1795
    .end local v11    # "innerName":Ljava/lang/String;
    .end local v12    # "i":I
    .restart local v2    # "innerName":Ljava/lang/String;
    :cond_b4
    return-void
.end method

.method public removeObserverLocked(Landroid/database/IContentObserver;)Z
    .registers 8
    .param p1, "observer"    # Landroid/database/IContentObserver;

    .line 1857
    iget-object v0, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1858
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v2, 0x1

    if-ge v1, v0, :cond_23

    .line 1859
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/content/ContentService$ObserverNode;

    invoke-virtual {v3, p1}, Lcom/android/server/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    move-result v3

    .line 1860
    .local v3, "empty":Z
    if-eqz v3, :cond_21

    .line 1861
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1862
    add-int/lit8 v1, v1, -0x1

    .line 1863
    add-int/lit8 v0, v0, -0x1

    .line 1858
    .end local v3    # "empty":Z
    :cond_21
    add-int/2addr v1, v2

    goto :goto_7

    .line 1867
    .end local v1    # "i":I
    :cond_23
    invoke-interface {p1}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1868
    .local v1, "observerBinder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1869
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2e
    if-ge v3, v0, :cond_50

    .line 1870
    iget-object v4, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;

    .line 1871
    .local v4, "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    iget-object v5, v4, Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v5}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v1, :cond_4d

    .line 1872
    iget-object v5, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1874
    invoke-static {}, Lcom/android/server/content/ContentService;->-$$Nest$sfgetsObserverDeathDispatcher()Lcom/android/internal/os/BinderDeathDispatcher;

    move-result-object v5

    invoke-virtual {v5, p1, v4}, Lcom/android/internal/os/BinderDeathDispatcher;->unlinkToDeath(Landroid/os/IInterface;Landroid/os/IBinder$DeathRecipient;)V

    .line 1875
    goto :goto_50

    .line 1869
    .end local v4    # "entry":Lcom/android/server/content/ContentService$ObserverNode$ObserverEntry;
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 1879
    .end local v3    # "i":I
    :cond_50
    :goto_50
    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, p0, Lcom/android/server/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_61

    .line 1880
    return v2

    .line 1882
    :cond_61
    const/4 v2, 0x0

    return v2
.end method
