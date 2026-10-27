.class public Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;
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
    name = "MemOom"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist name:Ljava/lang/String;

.field public blacklist totalPss:J

.field public blacklist totalSwapPss:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 186
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->name:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->totalPss:J

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->totalSwapPss:J

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->items:Ljava/util/List;

    .line 183
    sget-object v1, Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 184
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->name:Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->items:Ljava/util/List;

    .line 176
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sort()V
    .registers 3

    .line 222
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->items:Ljava/util/List;

    new-instance v1, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom$2;

    invoke-direct {v1, p0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom$2;-><init>(Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 233
    return-void
.end method

.method public blacklist subItems()V
    .registers 4

    .line 236
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->items:Ljava/util/List;

    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_14

    .line 237
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->items:Ljava/util/List;

    .line 239
    :cond_14
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemOom{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalPss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->totalPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSwapPss="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->totalSwapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    .line 205
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->totalPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->totalSwapPss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 208
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->items:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 209
    return-void
.end method
