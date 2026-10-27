.class public final Landroid/media/audiofx/DynamicsProcessing$Mbc;
.super Landroid/media/audiofx/DynamicsProcessing$BandStage;
.source "DynamicsProcessing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/DynamicsProcessing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mbc"
.end annotation


# instance fields
.field private final greylist-max-o mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;


# direct methods
.method public constructor whitelist <init>(Landroid/media/audiofx/DynamicsProcessing$Mbc;)V
    .registers 6

    .line 833
    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v0

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isEnabled()Z

    move-result v1

    invoke-virtual {p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->getBandCount()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 834
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 835
    iget-object v0, p1, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v0, v0

    new-array v0, v0, [Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    iput-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 836
    const/4 v0, 0x0

    :goto_1d
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v1, v1

    if-ge v0, v1, :cond_35

    .line 837
    iget-object v1, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    new-instance v2, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    iget-object v3, p1, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    aput-object v2, v1, v0

    .line 836
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 840
    :cond_32
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 842
    :cond_35
    return-void
.end method

.method public constructor whitelist <init>(ZZI)V
    .registers 16

    .line 809
    invoke-direct {p0, p1, p2, p3}, Landroid/media/audiofx/DynamicsProcessing$BandStage;-><init>(ZZI)V

    .line 810
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result p1

    if-eqz p1, :cond_52

    .line 811
    new-array p1, p3, [Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 812
    const/4 p1, 0x0

    :goto_e
    if-ge p1, p3, :cond_55

    .line 813
    nop

    .line 814
    const/4 p2, 0x1

    if-le p3, p2, :cond_32

    .line 815
    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMinFreqLog()F

    move-result p2

    int-to-float v0, p1

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMaxFreqLog()F

    move-result v1

    invoke-static {}, Landroid/media/audiofx/DynamicsProcessing;->-$$Nest$sfgetmMinFreqLog()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-int/lit8 v1, p3, -0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    float-to-double v0, p2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p2, v0

    move v2, p2

    goto :goto_36

    .line 814
    :cond_32
    const p2, 0x469c4000    # 20000.0f

    move v2, p2

    .line 818
    :goto_36
    iget-object p2, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    new-instance v0, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x3dcc0000    # -45.0f

    const/4 v7, 0x0

    const/high16 v8, -0x3d4c0000    # -90.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct/range {v0 .. v11}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(ZFFFFFFFFFF)V

    aput-object v0, p2, p1

    .line 812
    add-int/lit8 p1, p1, 0x1

    goto :goto_e

    .line 825
    :cond_52
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    .line 827
    :cond_55
    return-void
.end method

.method private greylist-max-o checkBand(I)V
    .registers 5

    .line 862
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    if-eqz v0, :cond_c

    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 865
    return-void

    .line 863
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "band index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " out of bounds"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getBand(I)Landroid/media/audiofx/DynamicsProcessing$MbcBand;
    .registers 3

    .line 881
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->checkBand(I)V

    .line 882
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public whitelist setBand(ILandroid/media/audiofx/DynamicsProcessing$MbcBand;)V
    .registers 5

    .line 872
    invoke-direct {p0, p1}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->checkBand(I)V

    .line 873
    iget-object v0, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    new-instance v1, Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    invoke-direct {v1, p2}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;-><init>(Landroid/media/audiofx/DynamicsProcessing$MbcBand;)V

    aput-object v1, v0, p1

    .line 874
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    invoke-super {p0}, Landroid/media/audiofx/DynamicsProcessing$BandStage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    invoke-virtual {p0}, Landroid/media/audiofx/DynamicsProcessing$Mbc;->isInUse()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->MbcBands: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    const/4 v1, 0x0

    :goto_32
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    array-length v2, v2

    if-ge v1, v2, :cond_56

    .line 851
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "  Band %d\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    iget-object v2, p0, Landroid/media/audiofx/DynamicsProcessing$Mbc;->mBands:[Landroid/media/audiofx/DynamicsProcessing$MbcBand;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/audiofx/DynamicsProcessing$MbcBand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 855
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
