.class public final Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
.super Ljava/lang/Object;
.source "QueryFeatureSettingParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;-><init>(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter-IA;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    .line 82
    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    return-object v0
.end method

.method public blacklist setActiveCameraId(I)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    .registers 3
    .param p1, "activeCameraId"    # I

    .line 104
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->-$$Nest$fputmActiveCameraId(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;I)V

    .line 105
    return-object p0
.end method

.method public blacklist setExposureTime(J)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    .registers 4
    .param p1, "exposureTime"    # J

    .line 99
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->-$$Nest$fputmExposureTime(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;J)V

    .line 100
    return-object p0
.end method

.method public blacklist setFeatureType(I)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    .registers 3
    .param p1, "featureType"    # I

    .line 89
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->-$$Nest$fputmFeatureType(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;I)V

    .line 90
    return-object p0
.end method

.method public blacklist setISO(I)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    .registers 3
    .param p1, "iso"    # I

    .line 94
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->-$$Nest$fputmISO(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;I)V

    .line 95
    return-object p0
.end method

.method public blacklist setQuickShot(Z)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;
    .registers 3
    .param p1, "isQuickShot"    # Z

    .line 109
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$Builder;->mParameter:Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-static {v0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;->-$$Nest$fputmIsQuickShot(Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)V

    .line 110
    return-object p0
.end method
