.class public abstract Lmiui/imagefilters/IImageFilter$AbstractImageFilter;
.super Ljava/lang/Object;
.source "IImageFilter.java"

# interfaces
.implements Lmiui/imagefilters/IImageFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/imagefilters/IImageFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractImageFilter"
.end annotation


# instance fields
.field private blacklist mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist fillRandomParams(Lmiui/imagefilters/ImageData;)V
    .registers 8
    .param p1, "imageData"    # Lmiui/imagefilters/ImageData;

    .line 45
    iget-object v0, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    if-eqz v0, :cond_34

    .line 47
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 48
    .local v1, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, "paramName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 50
    .local v3, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Lmiui/imagefilters/ImageData;->generalRandomNum(I)I

    move-result v4

    .line 51
    .local v4, "valueIndex":I
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v2, v5}, Lmiui/imagefilters/ImageFilterUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 52
    .end local v1    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    .end local v2    # "paramName":Ljava/lang/String;
    .end local v3    # "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v4    # "valueIndex":I
    goto :goto_c

    .line 54
    :cond_34
    return-void
.end method


# virtual methods
.method public whitelist canConcurrence()Z
    .registers 3

    .line 63
    iget-object v0, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v1, :cond_d

    .line 64
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_d
    return v1
.end method

.method public whitelist initParams(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .param p1, "paramName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 20
    .local p2, "paramValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_2c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2c

    .line 22
    :cond_a
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/imagefilters/ImageFilterUtils;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    .line 23
    .local v0, "success":Z
    if-eqz v0, :cond_2b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2b

    .line 25
    iget-object v1, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    if-nez v1, :cond_26

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    .line 26
    :cond_26
    iget-object v1, p0, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->mParams:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :cond_2b
    return v0

    .line 20
    .end local v0    # "success":Z
    :cond_2c
    :goto_2c
    return v0
.end method

.method public whitelist process(Lmiui/imagefilters/ImageData;)V
    .registers 3
    .param p1, "imageData"    # Lmiui/imagefilters/ImageData;

    .line 33
    invoke-virtual {p0}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->canConcurrence()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    invoke-direct {p0, p1}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->fillRandomParams(Lmiui/imagefilters/ImageData;)V

    .line 35
    invoke-virtual {p0, p1}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->processData(Lmiui/imagefilters/ImageData;)V

    goto :goto_15

    .line 37
    :cond_d
    monitor-enter p0

    .line 38
    :try_start_e
    invoke-direct {p0, p1}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->fillRandomParams(Lmiui/imagefilters/ImageData;)V

    .line 39
    invoke-virtual {p0, p1}, Lmiui/imagefilters/IImageFilter$AbstractImageFilter;->processData(Lmiui/imagefilters/ImageData;)V

    .line 40
    monitor-exit p0

    .line 42
    :goto_15
    return-void

    .line 40
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_16

    throw v0
.end method

.method public abstract whitelist processData(Lmiui/imagefilters/ImageData;)V
.end method

.method public whitelist putOriginalImage(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "originalBitmap"    # Landroid/graphics/Bitmap;

    .line 59
    return-void
.end method
