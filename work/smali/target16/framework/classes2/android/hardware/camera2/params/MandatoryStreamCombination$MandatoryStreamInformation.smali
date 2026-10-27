.class public final Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;
.super Ljava/lang/Object;
.source "MandatoryStreamCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/MandatoryStreamCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MandatoryStreamInformation"
.end annotation


# instance fields
.field private final blacklist mAvailableSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mFormat:I

.field private final blacklist mIs10BitCapable:Z

.field private final blacklist mIsInput:Z

.field private final blacklist mIsMaximumSize:Z

.field private final blacklist mIsUltraHighResolution:Z

.field private final blacklist mStreamUseCase:J


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;IZ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZ)V"
        }
    .end annotation

    .line 85
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    .line 87
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;IZZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZZ)V"
        }
    .end annotation

    .line 104
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZ)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;IZZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZZZ)V"
        }
    .end annotation

    .line 125
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZ)V

    .line 127
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;IZZZZ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZZZZ)V"
        }
    .end annotation

    .line 148
    const-wide/16 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;-><init>(Ljava/util/List;IZZZZJ)V

    .line 150
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;IZZZZJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;IZZZZJ)V"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    .line 172
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 175
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    invoke-static {p2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->checkArgumentFormat(I)I

    move-result p1

    iput p1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    .line 177
    iput-boolean p3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsMaximumSize:Z

    .line 178
    iput-boolean p4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    .line 179
    iput-boolean p5, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    .line 180
    iput-boolean p6, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIs10BitCapable:Z

    .line 181
    iput-wide p7, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    .line 182
    return-void

    .line 173
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No available sizes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7

    .line 328
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 329
    return v0

    .line 331
    :cond_4
    if-ne p0, p1, :cond_8

    .line 332
    const/4 p1, 0x1

    return p1

    .line 334
    :cond_8
    instance-of v1, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    if-eqz v1, :cond_41

    .line 335
    check-cast p1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;

    .line 336
    iget v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    iget v2, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    if-ne v1, v2, :cond_40

    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    iget-boolean v2, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    if-ne v1, v2, :cond_40

    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    iget-boolean v2, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    if-ne v1, v2, :cond_40

    iget-wide v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    iget-wide v3, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_40

    iget-object v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    .line 339
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_37

    goto :goto_40

    .line 343
    :cond_37
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 340
    :cond_40
    :goto_40
    return v0

    .line 346
    :cond_41
    return v0
.end method

.method public whitelist get10BitFormat()I
    .registers 3

    .line 297
    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIs10BitCapable:Z

    if-eqz v0, :cond_7

    .line 300
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    return v0

    .line 298
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "10-bit output is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getAvailableSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFormat()I
    .registers 3

    .line 278
    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIs10BitCapable:Z

    if-eqz v0, :cond_d

    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    const/16 v1, 0x36

    if-ne v0, v1, :cond_d

    .line 279
    const/16 v0, 0x23

    return v0

    .line 281
    :cond_d
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    return v0
.end method

.method public whitelist getStreamUseCase()J
    .registers 3

    .line 314
    iget-wide v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8

    .line 354
    iget v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mFormat:I

    int-to-float v0, v0

    iget-boolean v1, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    int-to-float v1, v1

    iget-boolean v2, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    .line 355
    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mAvailableSizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->hashCode()I

    move-result v3

    int-to-float v3, v3

    iget-wide v4, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mStreamUseCase:J

    long-to-float v4, v4

    const/4 v5, 0x5

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v0, 0x1

    aput v1, v5, v0

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v3, v5, v0

    const/4 v0, 0x4

    aput v4, v5, v0

    .line 354
    invoke-static {v5}, Landroid/hardware/camera2/utils/HashCodeHelpers;->hashCode([F)I

    move-result v0

    return v0
.end method

.method public whitelist is10BitCapable()Z
    .registers 2

    .line 252
    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIs10BitCapable:Z

    return v0
.end method

.method public whitelist isInput()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsInput:Z

    return v0
.end method

.method public whitelist isMaximumSize()Z
    .registers 2

    .line 231
    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsMaximumSize:Z

    return v0
.end method

.method public whitelist isUltraHighResolution()Z
    .registers 2

    .line 203
    iget-boolean v0, p0, Landroid/hardware/camera2/params/MandatoryStreamCombination$MandatoryStreamInformation;->mIsUltraHighResolution:Z

    return v0
.end method
