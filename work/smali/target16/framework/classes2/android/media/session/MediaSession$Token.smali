.class public final Landroid/media/session/MediaSession$Token;
.super Ljava/lang/Object;
.source "MediaSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/session/MediaSession$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mBinder:Landroid/media/session/ISessionController;

.field private final blacklist mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 899
    new-instance v0, Landroid/media/session/MediaSession$Token$1;

    invoke-direct {v0}, Landroid/media/session/MediaSession$Token$1;-><init>()V

    sput-object v0, Landroid/media/session/MediaSession$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/media/session/ISessionController;)V
    .registers 3

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput p1, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    .line 837
    iput-object p2, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    .line 838
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    .line 842
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/media/session/ISessionController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;

    move-result-object p1

    iput-object p1, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    .line 843
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 866
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 867
    return v0

    .line 868
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 869
    return v1

    .line 870
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 871
    return v1

    .line 872
    :cond_13
    check-cast p1, Landroid/media/session/MediaSession$Token;

    .line 873
    iget v2, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    iget v3, p1, Landroid/media/session/MediaSession$Token;->mUid:I

    if-eq v2, v3, :cond_1c

    .line 874
    return v1

    .line 876
    :cond_1c
    iget-object v2, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-eqz v2, :cond_36

    iget-object v2, p1, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-nez v2, :cond_25

    goto :goto_36

    .line 879
    :cond_25
    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v0}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p1, p1, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {p1}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 877
    :cond_36
    :goto_36
    iget-object v2, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    iget-object p1, p1, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-ne v2, p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    :goto_3e
    return v0
.end method

.method public greylist-max-o getBinder()Landroid/media/session/ISessionController;
    .registers 2

    .line 896
    iget-object v0, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    return-object v0
.end method

.method public blacklist getUid()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 888
    iget v0, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 859
    iget v0, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    .line 860
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_14

    :cond_a
    iget-object v1, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {v1}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    .line 861
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 852
    iget p2, p0, Landroid/media/session/MediaSession$Token;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget-object p2, p0, Landroid/media/session/MediaSession$Token;->mBinder:Landroid/media/session/ISessionController;

    invoke-interface {p2}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 854
    return-void
.end method
