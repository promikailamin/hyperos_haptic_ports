.class Lcom/xiaomi/protocol/IGraphDescriptorBean$1;
.super Ljava/lang/Object;
.source "IGraphDescriptorBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/protocol/IGraphDescriptorBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaomi/protocol/IGraphDescriptorBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/protocol/IGraphDescriptorBean;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 106
    new-instance v0, Lcom/xiaomi/protocol/IGraphDescriptorBean;

    invoke-direct {v0, p1}, Lcom/xiaomi/protocol/IGraphDescriptorBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/xiaomi/protocol/IGraphDescriptorBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaomi/protocol/IGraphDescriptorBean;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/xiaomi/protocol/IGraphDescriptorBean;
    .registers 3
    .param p1, "size"    # I

    .line 111
    new-array v0, p1, [Lcom/xiaomi/protocol/IGraphDescriptorBean;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 103
    invoke-virtual {p0, p1}, Lcom/xiaomi/protocol/IGraphDescriptorBean$1;->newArray(I)[Lcom/xiaomi/protocol/IGraphDescriptorBean;

    move-result-object p1

    return-object p1
.end method
