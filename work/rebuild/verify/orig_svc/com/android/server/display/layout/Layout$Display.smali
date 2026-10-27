.class public Lcom/android/server/display/layout/Layout$Display;
.super Ljava/lang/Object;
.source "Layout.java"


# instance fields
.field public final mAddress:Landroid/view/DisplayAddress;

.field public final mDisplayGroupName:Ljava/lang/String;

.field public final mIsEnabled:Z

.field public final mLeadDisplayAddress:Landroid/view/DisplayAddress;

.field public mLeadDisplayId:I

.field public final mLogicalDisplayId:I

.field public final mPosition:I

.field public final mPowerThrottlingMapId:Ljava/lang/String;

.field public final mRefreshRateZoneId:Ljava/lang/String;

.field public final mThermalBrightnessThrottlingMapId:Ljava/lang/String;

.field public final mThermalRefreshRateThrottlingMapId:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$msetLeadDisplayId(Lcom/android/server/display/layout/Layout$Display;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/layout/Layout$Display;->setLeadDisplayId(I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayAddress;IZLjava/lang/String;Ljava/lang/String;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 336
    iput p2, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    .line 337
    iput-boolean p3, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    .line 338
    iput-object p4, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 339
    iput p6, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    .line 340
    iput-object p5, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    .line 341
    iput-object p7, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    .line 342
    iput-object p8, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    .line 343
    iput-object p9, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    .line 344
    iput-object p10, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    const/4 p1, -0x1

    .line 345
    iput p1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/DisplayAddress;IZLjava/lang/String;Ljava/lang/String;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/layout/Layout-IA;)V
    .registers 12

    .line 0
    invoke-direct/range {p0 .. p10}, Lcom/android/server/display/layout/Layout$Display;-><init>(Landroid/view/DisplayAddress;IZLjava/lang/String;Ljava/lang/String;ILandroid/view/DisplayAddress;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 367
    instance-of v0, p1, Lcom/android/server/display/layout/Layout$Display;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 371
    :cond_6
    check-cast p1, Lcom/android/server/display/layout/Layout$Display;

    .line 373
    iget-boolean v0, p1, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    iget-boolean v2, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    if-ne v0, v2, :cond_68

    iget v0, p1, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    if-ne v0, v2, :cond_68

    iget v0, p1, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    if-ne v0, v2, :cond_68

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    .line 378
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p1, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    .line 380
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget v0, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    iget v2, p1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    if-ne v0, v2, :cond_68

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    .line 382
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    .line 383
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    .line 385
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_68

    const/4 p0, 0x1

    return p0

    :cond_68
    return v1
.end method

.method public getAddress()Landroid/view/DisplayAddress;
    .registers 1

    .line 407
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    return-object p0
.end method

.method public getDisplayGroupName()Ljava/lang/String;
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getLeadDisplayAddress()Landroid/view/DisplayAddress;
    .registers 1

    .line 455
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    return-object p0
.end method

.method public getLeadDisplayId()I
    .registers 1

    .line 447
    iget p0, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    return p0
.end method

.method public getLogicalDisplayId()I
    .registers 1

    .line 411
    iget p0, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    return p0
.end method

.method public getPosition()I
    .registers 1

    .line 440
    iget p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    return p0
.end method

.method public getPowerThrottlingMapId()Ljava/lang/String;
    .registers 1

    .line 468
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshRateThermalThrottlingMapId()Ljava/lang/String;
    .registers 1

    .line 459
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    return-object p0
.end method

.method public getRefreshRateZoneId()Ljava/lang/String;
    .registers 1

    .line 424
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    return-object p0
.end method

.method public getThermalBrightnessThrottlingMapId()Ljava/lang/String;
    .registers 1

    .line 433
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 392
    iget-boolean v0, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 393
    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 394
    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 395
    iget-object v2, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 396
    iget-object v2, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 397
    iget-object v2, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 398
    iget-object v2, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 399
    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 400
    iget-object v2, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 401
    iget-object v2, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 402
    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isEnabled()Z
    .registers 1

    .line 415
    iget-boolean p0, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    return p0
.end method

.method public final setLeadDisplayId(I)V
    .registers 2

    .line 472
    iput p1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{dispId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLogicalDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget-boolean v1, p0, Lcom/android/server/display/layout/Layout$Display;->mIsEnabled:Z

    if-eqz v1, :cond_1c

    const-string v1, "ON"

    goto :goto_1e

    :cond_1c
    const-string v1, "OFF"

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), displayGroupName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3d

    const-string v1, ""

    goto :goto_50

    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/layout/Layout$Display;->mPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThermalBrightnessThrottlingMapId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalBrightnessThrottlingMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateZoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mRefreshRateZoneId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLeadDisplayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLeadDisplayAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mLeadDisplayAddress:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThermalRefreshRateThrottlingMapId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/layout/Layout$Display;->mThermalRefreshRateThrottlingMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerThrottlingMapId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/layout/Layout$Display;->mPowerThrottlingMapId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
