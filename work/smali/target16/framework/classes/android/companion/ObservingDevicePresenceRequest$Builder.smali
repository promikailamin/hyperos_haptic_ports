.class public final Landroid/companion/ObservingDevicePresenceRequest$Builder;
.super Ljava/lang/Object;
.source "ObservingDevicePresenceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ObservingDevicePresenceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAssociationId:I

.field private blacklist mDeviceId:Landroid/companion/DeviceId;

.field private blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    .line 181
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/companion/ObservingDevicePresenceRequest;
    .registers 6

    .line 258
    nop

    .line 259
    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mDeviceId:Landroid/companion/DeviceId;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 260
    move v0, v1

    goto :goto_9

    .line 259
    :cond_8
    const/4 v0, 0x0

    .line 262
    :goto_9
    iget-object v2, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    if-eqz v2, :cond_f

    .line 263
    add-int/lit8 v0, v0, 0x1

    .line 265
    :cond_f
    iget v2, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 266
    add-int/lit8 v0, v0, 0x1

    .line 269
    :cond_16
    if-ne v0, v1, :cond_25

    .line 274
    new-instance v0, Landroid/companion/ObservingDevicePresenceRequest;

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    iget-object v2, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    iget-object v3, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mDeviceId:Landroid/companion/DeviceId;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(ILandroid/os/ParcelUuid;Landroid/companion/DeviceId;Landroid/companion/ObservingDevicePresenceRequest-IA;)V

    return-object v0

    .line 270
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must provide exactly one of device id, parcel uuid, or association id to observe device presence."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;
    .registers 2

    .line 200
    iput p1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    .line 201
    return-object p0
.end method

.method public whitelist setDeviceId(Landroid/companion/DeviceId;)Landroid/companion/ObservingDevicePresenceRequest$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 252
    iput-object p1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mDeviceId:Landroid/companion/DeviceId;

    .line 253
    return-object p0
.end method

.method public whitelist setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;
    .registers 2

    .line 230
    iput-object p1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    .line 231
    return-object p0
.end method
