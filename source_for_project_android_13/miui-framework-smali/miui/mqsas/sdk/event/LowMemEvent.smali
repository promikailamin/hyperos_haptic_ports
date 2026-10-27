.class public Lmiui/mqsas/sdk/event/LowMemEvent;
.super Ljava/lang/Object;
.source "LowMemEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/sdk/event/LowMemEvent$ProcessMemItem;,
        Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/mqsas/sdk/event/LowMemEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

.field public blacklist visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/LowMemEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "nativeMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 38
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "systemMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 39
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "persistentMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 40
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "persistentServiceMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 41
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "foregroundMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 42
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "visibleMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 43
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "perceptibleMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 44
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "perceptibleLowMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 45
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "heavyWeightMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 46
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "backupMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 47
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "aServicesMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 48
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "homeMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 49
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "previousMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 50
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "bServicesMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 51
    new-instance v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    const-string v1, "cachedMemOom"

    invoke-direct {v0, v1}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 52
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 56
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 57
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 58
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 59
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 60
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 61
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 62
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 63
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 64
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 65
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 66
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 67
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 68
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 69
    const-class v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    iput-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist sortAndSub()V
    .registers 2

    .line 133
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 134
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 135
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 136
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 137
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 138
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 139
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 140
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 141
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 142
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 143
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 144
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 145
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 146
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 147
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->sort()V

    .line 149
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 150
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 151
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 152
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 153
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 154
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 155
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 156
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 157
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 158
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 159
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 160
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 161
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 162
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 163
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0}, Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;->subItems()V

    .line 164
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LowMemEvent{nativeMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persistentMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", persistentServiceMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", foregroundMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", visibleMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", perceptibleMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", perceptibleLowMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heavyWeightMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", backupMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aServicesMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", homeMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", previousMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bServicesMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cachedMemOom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

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
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 91
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->nativeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->systemMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 93
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->persistentServiceMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->foregroundMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 96
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->visibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 97
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 98
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->perceptibleLowMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->heavyWeightMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 100
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->backupMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->aServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->homeMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 103
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->previousMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 104
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->bServicesMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Lmiui/mqsas/sdk/event/LowMemEvent;->cachedMemOom:Lmiui/mqsas/sdk/event/LowMemEvent$MemOom;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    return-void
.end method
