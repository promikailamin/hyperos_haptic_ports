.class Landroid/app/appfunctions/GenericDocumentWrapper$1;
.super Ljava/lang/Object;
.source "GenericDocumentWrapper.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/GenericDocumentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/appfunctions/GenericDocumentWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/GenericDocumentWrapper;
    .registers 5

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 65
    invoke-static {v1, v0}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 68
    invoke-virtual {v2, p1, v1, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 69
    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    new-instance p1, Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-direct {p1, v2}, Landroid/app/appfunctions/GenericDocumentWrapper;-><init>(Landroid/os/Parcel;)V

    return-object p1
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

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/GenericDocumentWrapper$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/appfunctions/GenericDocumentWrapper;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/appfunctions/GenericDocumentWrapper;
    .registers 2

    .line 75
    new-array p1, p1, [Landroid/app/appfunctions/GenericDocumentWrapper;

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

    .line 60
    invoke-virtual {p0, p1}, Landroid/app/appfunctions/GenericDocumentWrapper$1;->newArray(I)[Landroid/app/appfunctions/GenericDocumentWrapper;

    move-result-object p1

    return-object p1
.end method
