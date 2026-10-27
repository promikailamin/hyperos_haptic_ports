.class Lcom/android/internal/widget/LockscreenCredential$1;
.super Ljava/lang/Object;
.source "LockscreenCredential.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockscreenCredential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/internal/widget/LockscreenCredential;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 9

    .line 427
    new-instance v0, Lcom/android/internal/widget/LockscreenCredential;

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/widget/LockscreenCredential;-><init>(I[BZZZLcom/android/internal/widget/LockscreenCredential-IA;)V

    .line 427
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockscreenCredential$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/android/internal/widget/LockscreenCredential;
    .registers 2

    .line 437
    new-array p1, p1, [Lcom/android/internal/widget/LockscreenCredential;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockscreenCredential$1;->newArray(I)[Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    return-object p1
.end method
