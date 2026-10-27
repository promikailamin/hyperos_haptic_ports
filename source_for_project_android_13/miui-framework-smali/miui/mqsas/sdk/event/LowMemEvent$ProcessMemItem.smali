.class public Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;
.super Ljava/lang/Object;
.source "LowMemEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/sdk/event/LowMemEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessMemItem"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist name:Ljava/lang/String;

.field public blacklist pss:J

.field public blacklist swapPss:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 275
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->name:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public constructor blacklist <init>(JJLjava/lang/String;)V
    .registers 6
    .param p1, "pss"    # J
    .param p3, "swapPss"    # J
    .param p5, "name"    # Ljava/lang/String;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->pss:J

    .line 253
    iput-wide p3, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->swapPss:J

    .line 254
    iput-object p5, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->name:Ljava/lang/String;

    .line 255
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->pss:J

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->swapPss:J

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->name:Ljava/lang/String;

    .line 261
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProcessMemItem{pss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->pss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", swapPss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->swapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 265
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->pss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 266
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->swapPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    return-void
.end method
