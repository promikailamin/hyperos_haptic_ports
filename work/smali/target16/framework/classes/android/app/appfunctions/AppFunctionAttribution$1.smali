.class Landroid/app/appfunctions/AppFunctionAttribution$1;
.super Ljava/lang/Object;
.source "AppFunctionAttribution.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/AppFunctionAttribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appfunctions/AppFunctionAttribution;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/AppFunctionAttribution;
    .registers 4

    .line 50
    new-instance v0, Landroid/app/appfunctions/AppFunctionAttribution;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/appfunctions/AppFunctionAttribution;-><init>(Landroid/os/Parcel;Landroid/app/appfunctions/AppFunctionAttribution-IA;)V

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

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/AppFunctionAttribution$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/AppFunctionAttribution;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/appfunctions/AppFunctionAttribution;
    .registers 2

    .line 55
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/app/appfunctions/AppFunctionAttribution;

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

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/AppFunctionAttribution$1;->newArray(I)[Landroid/app/appfunctions/AppFunctionAttribution;

    move-result-object p1

    return-object p1
.end method
