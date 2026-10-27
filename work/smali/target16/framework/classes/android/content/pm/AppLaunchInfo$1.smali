.class Landroid/content/pm/AppLaunchInfo$1;
.super Ljava/lang/Object;
.source "AppLaunchInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/AppLaunchInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/AppLaunchInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/AppLaunchInfo;
    .registers 3

    .line 71
    new-instance v0, Landroid/content/pm/AppLaunchInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/AppLaunchInfo;-><init>(Landroid/os/Parcel;)V

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

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/pm/AppLaunchInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/AppLaunchInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/AppLaunchInfo;
    .registers 2

    .line 76
    new-array p1, p1, [Landroid/content/pm/AppLaunchInfo;

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

    .line 68
    invoke-virtual {p0, p1}, Landroid/content/pm/AppLaunchInfo$1;->newArray(I)[Landroid/content/pm/AppLaunchInfo;

    move-result-object p1

    return-object p1
.end method
