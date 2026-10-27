.class Landroid/content/pm/PackageInfoNative$1;
.super Ljava/lang/Object;
.source "PackageInfoNative.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInfoNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageInfoNative;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfoNative;
    .registers 3

    .line 33
    new-instance v0, Landroid/content/pm/PackageInfoNative;

    invoke-direct {v0}, Landroid/content/pm/PackageInfoNative;-><init>()V

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInfoNative;->readFromParcel(Landroid/os/Parcel;)V

    .line 35
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

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInfoNative$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfoNative;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/PackageInfoNative;
    .registers 2

    .line 39
    new-array p1, p1, [Landroid/content/pm/PackageInfoNative;

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

    .line 30
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInfoNative$1;->newArray(I)[Landroid/content/pm/PackageInfoNative;

    move-result-object p1

    return-object p1
.end method
