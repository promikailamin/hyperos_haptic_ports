.class Landroid/content/pm/PackageParser$SigningDetails$1;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser$SigningDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageParser$SigningDetails;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 6610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 3

    .line 6613
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6614
    sget-object p1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    return-object p1

    .line 6616
    :cond_9
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageParser$SigningDetails;-><init>(Landroid/os/Parcel;)V

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

    .line 6610
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/content/pm/PackageParser$SigningDetails;
    .registers 2

    .line 6621
    new-array p1, p1, [Landroid/content/pm/PackageParser$SigningDetails;

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

    .line 6610
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$SigningDetails$1;->newArray(I)[Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1

    return-object p1
.end method
