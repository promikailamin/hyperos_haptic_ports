.class public final Landroid/content/res/Resources$Theme;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Theme"
.end annotation


# static fields
.field private static final blacklist MAX_NUMBER_OF_TRACING_PARENT_THEME:I = 0x64


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

.field final synthetic blacklist this$0:Landroid/content/res/Resources;


# direct methods
.method private constructor blacklist <init>(Landroid/content/res/Resources;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1558
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1552
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    .line 1559
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/res/Resources;Landroid/content/res/Resources-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method

.method private greylist-max-o getResourceNameFromHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1862
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public whitelist applyStyle(IZ)V
    .registers 5

    .line 1585
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1586
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->applyStyle(IZ)V

    .line 1587
    monitor-exit v0

    .line 1588
    return-void

    .line 1587
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public whitelist dump(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1827
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1828
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->dump(ILjava/lang/String;Ljava/lang/String;)V

    .line 1829
    monitor-exit v0

    .line 1830
    return-void

    .line 1829
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public greylist-max-o encode(Landroid/view/ViewHierarchyEncoder;)V
    .registers 6

    .line 1881
    invoke-virtual {p1, p0}, Landroid/view/ViewHierarchyEncoder;->beginObject(Ljava/lang/Object;)V

    .line 1882
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    move-result-object v0

    .line 1883
    const/4 v1, 0x0

    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 1884
    aget-object v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v0, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 1886
    :cond_17
    invoke-virtual {p1}, Landroid/view/ViewHierarchyEncoder;->endObject()V

    .line 1887
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1983
    if-ne p0, p1, :cond_4

    .line 1984
    const/4 p1, 0x1

    return p1

    .line 1987
    :cond_4
    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2a

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1b

    goto :goto_2a

    .line 1991
    :cond_1b
    check-cast p1, Landroid/content/res/Resources$Theme;

    .line 1992
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources$ThemeKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1988
    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    return p1
.end method

.method public greylist-max-o getAllAttributes()[I
    .registers 3

    .line 1776
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1777
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAllAttributes()[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1778
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method greylist-max-o getAppliedStyleResId()I
    .registers 3

    .line 1840
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1841
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAppliedStyleResId()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1842
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getAttributeResolutionStack(III)[I
    .registers 6

    .line 1965
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1966
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getAttributeResolutionStack(III)[I

    move-result-object p1

    .line 1968
    if-nez p1, :cond_10

    .line 1969
    const/4 p1, 0x0

    new-array p1, p1, [I

    monitor-exit v0

    return-object p1

    .line 1971
    :cond_10
    monitor-exit v0

    return-object p1

    .line 1973
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public whitelist getChangingConfigurations()I
    .registers 3

    .line 1814
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1815
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getChangingConfigurations()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1816
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1802
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getExplicitStyle(Landroid/util/AttributeSet;)I
    .registers 5

    .line 1924
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1925
    return v0

    .line 1927
    :cond_4
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    .line 1928
    if-nez p1, :cond_b

    .line 1929
    return v0

    .line 1931
    :cond_b
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1932
    const-string v2, "attr"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1933
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1934
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    .line 1935
    if-eqz p1, :cond_34

    .line 1936
    iget p1, v1, Landroid/util/TypedValue;->resourceId:I

    return p1

    .line 1938
    :cond_2a
    const-string/jumbo v2, "style"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1939
    return p1

    .line 1938
    :cond_34
    nop

    .line 1941
    return v0
.end method

.method public greylist-max-o getKey()Landroid/content/res/Resources$ThemeKey;
    .registers 3

    .line 1856
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1857
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1858
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method greylist-max-o getNativeTheme()J
    .registers 4

    .line 1834
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1835
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getNativeTheme()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1836
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method blacklist getParentThemeIdentifier(I)I
    .registers 4

    .line 1847
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1848
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getParentThemeIdentifier(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 1849
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 1787
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    return-object v0
.end method

.method public greylist-max-o getTheme()[Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "theme"
        hasAdjacentMapping = true
    .end annotation

    .line 1874
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1875
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->getTheme()[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1876
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1978
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources$ThemeKey;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1659
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1660
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v7, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1661
    :catchall_10
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    throw p1
.end method

.method public whitelist obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .registers 13

    .line 1717
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1718
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1720
    :catchall_10
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    throw p1
.end method

.method public whitelist obtainStyledAttributes([I)Landroid/content/res/TypedArray;
    .registers 10

    .line 1629
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1630
    :try_start_3
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/res/ResourcesImpl$ThemeImpl;->obtainStyledAttributes(Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    monitor-exit v1

    return-object p1

    .line 1631
    :catchall_10
    move-exception v0

    move-object p1, v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_10

    throw p1
.end method

.method public whitelist rebase()V
    .registers 3

    .line 1895
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1896
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase()V

    .line 1897
    monitor-exit v0

    .line 1898
    return-void

    .line 1897
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method blacklist rebase(Landroid/content/res/ResourcesImpl;)V
    .registers 4

    .line 1901
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1902
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    iget-object p1, p1, Landroid/content/res/ResourcesImpl;->mAssets:Landroid/content/res/AssetManager;

    invoke-virtual {v1, p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->rebase(Landroid/content/res/AssetManager;)V

    .line 1903
    monitor-exit v0

    .line 1904
    return-void

    .line 1903
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public whitelist resolveAttribute(ILandroid/util/TypedValue;Z)Z
    .registers 6

    .line 1764
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1765
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1766
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public greylist resolveAttributes([I[I)Landroid/content/res/TypedArray;
    .registers 5

    .line 1741
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1742
    :try_start_3
    iget-object v1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v1, p0, p1, p2}, Landroid/content/res/ResourcesImpl$ThemeImpl;->resolveAttributes(Landroid/content/res/Resources$Theme;[I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1743
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method greylist-max-o setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    .registers 3

    .line 1562
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1563
    :try_start_3
    iput-object p1, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    .line 1564
    monitor-exit v0

    .line 1565
    return-void

    .line 1564
    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public whitelist setTo(Landroid/content/res/Resources$Theme;)V
    .registers 5

    .line 1600
    iget-object v0, p0, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1601
    :try_start_3
    iget-object v1, p1, Landroid/content/res/Resources$Theme;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_13

    .line 1602
    :try_start_6
    iget-object v2, p0, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    iget-object p1, p1, Landroid/content/res/Resources$Theme;->mThemeImpl:Landroid/content/res/ResourcesImpl$ThemeImpl;

    invoke-virtual {v2, p1}, Landroid/content/res/ResourcesImpl$ThemeImpl;->setTo(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    .line 1603
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_10

    .line 1604
    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_13

    .line 1605
    return-void

    .line 1603
    :catchall_10
    move-exception p1

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw p1

    .line 1604
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1998
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1999
    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getAppliedStyleResId()I

    move-result v1

    .line 2000
    nop

    .line 2001
    const-string v2, "InheritanceMap=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 2002
    :goto_15
    if-lez v1, :cond_65

    .line 2003
    const/16 v3, 0x64

    if-le v2, v3, :cond_21

    .line 2004
    const-string v1, ",..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2005
    goto :goto_65

    .line 2008
    :cond_21
    if-lez v2, :cond_28

    .line 2009
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    :cond_28
    const-string v3, "id=0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    iget-object v3, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2013
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2014
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/res/Resources$Theme;->this$0:Landroid/content/res/Resources;

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2016
    add-int/lit8 v2, v2, 0x1

    .line 2017
    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->getParentThemeIdentifier(I)I

    move-result v1

    goto :goto_15

    .line 2019
    :cond_65
    :goto_65
    const-string v1, "], Themes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/res/Resources$Theme;->getTheme()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2020
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2021
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
