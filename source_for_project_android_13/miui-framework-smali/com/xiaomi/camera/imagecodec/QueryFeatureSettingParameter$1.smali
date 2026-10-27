.class Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$1;
.super Ljava/lang/Object;
.source "QueryFeatureSettingParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    new-instance v0, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    invoke-direct {v0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
    .registers 3
    .param p1, "size"    # I

    .line 56
    new-array v0, p1, [Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 48
    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter$1;->newArray(I)[Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;

    move-result-object p1

    return-object p1
.end method
