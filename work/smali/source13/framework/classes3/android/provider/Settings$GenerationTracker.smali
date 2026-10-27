.class final Landroid/provider/Settings$GenerationTracker;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GenerationTracker"
.end annotation


# instance fields
.field private final greylist-max-o mArray:Landroid/util/MemoryIntArray;

.field private greylist-max-o mCurrentGeneration:I

.field private final greylist-max-o mErrorHandler:Ljava/lang/Runnable;

.field private final greylist-max-o mIndex:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V
    .registers 5
    .param p1, "array"    # Landroid/util/MemoryIntArray;
    .param p2, "index"    # I
    .param p3, "generation"    # I
    .param p4, "errorHandler"    # Ljava/lang/Runnable;

    .line 2864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2865
    iput-object p1, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    .line 2866
    iput p2, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    .line 2867
    iput-object p4, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    .line 2868
    iput p3, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 2869
    return-void
.end method

.method private greylist-max-o readCurrentGeneration()I
    .registers 4

    .line 2888
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MemoryIntArray;->get(I)I

    move-result v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2889
    :catch_9
    move-exception v0

    .line 2890
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Settings"

    const-string v2, "Error getting current generation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2891
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz v1, :cond_18

    .line 2892
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2895
    .end local v0    # "e":Ljava/io/IOException;
    :cond_18
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o destroy()V
    .registers 4

    .line 2900
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$GenerationTracker;->mArray:Landroid/util/MemoryIntArray;

    invoke-virtual {v0}, Landroid/util/MemoryIntArray;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 2906
    goto :goto_15

    .line 2901
    :catch_6
    move-exception v0

    .line 2902
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Settings"

    const-string v2, "Error closing backing array"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2903
    iget-object v1, p0, Landroid/provider/Settings$GenerationTracker;->mErrorHandler:Ljava/lang/Runnable;

    if-eqz v1, :cond_15

    .line 2904
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2907
    .end local v0    # "e":Ljava/io/IOException;
    :cond_15
    :goto_15
    return-void
.end method

.method public greylist-max-o getCurrentGeneration()I
    .registers 2

    .line 2883
    iget v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    return v0
.end method

.method public greylist-max-o isGenerationChanged()Z
    .registers 3

    .line 2872
    invoke-direct {p0}, Landroid/provider/Settings$GenerationTracker;->readCurrentGeneration()I

    move-result v0

    .line 2873
    .local v0, "currentGeneration":I
    if-ltz v0, :cond_e

    .line 2874
    iget v1, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    if-ne v0, v1, :cond_c

    .line 2875
    const/4 v1, 0x0

    return v1

    .line 2877
    :cond_c
    iput v0, p0, Landroid/provider/Settings$GenerationTracker;->mCurrentGeneration:I

    .line 2879
    :cond_e
    const/4 v1, 0x1

    return v1
.end method
