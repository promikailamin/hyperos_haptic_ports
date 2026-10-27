.class public final Landroid/companion/DevicePresenceEvent$Builder;
.super Ljava/lang/Object;
.source "DevicePresenceEvent.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/DevicePresenceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAssociationId:Ljava/lang/Integer;

.field private blacklist mEvent:Ljava/lang/Integer;

.field private blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAssociationId(Landroid/companion/DevicePresenceEvent$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/companion/DevicePresenceEvent$Builder;->mAssociationId:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEvent(Landroid/companion/DevicePresenceEvent$Builder;)Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Landroid/companion/DevicePresenceEvent$Builder;->mEvent:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUuid(Landroid/companion/DevicePresenceEvent$Builder;)Landroid/os/ParcelUuid;
    .registers 1

    iget-object p0, p0, Landroid/companion/DevicePresenceEvent$Builder;->mUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/companion/DevicePresenceEvent;
    .registers 5

    .line 320
    iget-object v0, p0, Landroid/companion/DevicePresenceEvent$Builder;->mEvent:Ljava/lang/Integer;

    if-eqz v0, :cond_2b

    .line 324
    iget-object v0, p0, Landroid/companion/DevicePresenceEvent$Builder;->mAssociationId:Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 325
    :goto_d
    iget-object v3, p0, Landroid/companion/DevicePresenceEvent$Builder;->mUuid:Landroid/os/ParcelUuid;

    if-eqz v3, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    .line 328
    :goto_13
    if-eqz v0, :cond_17

    if-nez v1, :cond_1c

    :cond_17
    if-nez v0, :cond_24

    if-eqz v1, :cond_1c

    goto :goto_24

    .line 329
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Exactly one of associationId or UUID must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_24
    :goto_24
    new-instance v0, Landroid/companion/DevicePresenceEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/companion/DevicePresenceEvent;-><init>(Landroid/companion/DevicePresenceEvent$Builder;Landroid/companion/DevicePresenceEvent-IA;)V

    return-object v0

    .line 321
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Event must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setAssociationId(I)Landroid/companion/DevicePresenceEvent$Builder;
    .registers 2

    .line 281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/DevicePresenceEvent$Builder;->mAssociationId:Ljava/lang/Integer;

    .line 282
    return-object p0
.end method

.method public blacklist setEvent(I)Landroid/companion/DevicePresenceEvent$Builder;
    .registers 2

    .line 293
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/companion/DevicePresenceEvent$Builder;->mEvent:Ljava/lang/Integer;

    .line 294
    return-object p0
.end method

.method public blacklist setUuid(Landroid/os/ParcelUuid;)Landroid/companion/DevicePresenceEvent$Builder;
    .registers 2

    .line 307
    iput-object p1, p0, Landroid/companion/DevicePresenceEvent$Builder;->mUuid:Landroid/os/ParcelUuid;

    .line 308
    return-object p0
.end method
