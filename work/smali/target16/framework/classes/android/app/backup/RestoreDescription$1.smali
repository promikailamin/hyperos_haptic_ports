.class Landroid/app/backup/RestoreDescription$1;
.super Ljava/lang/Object;
.source "RestoreDescription.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/RestoreDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/backup/RestoreDescription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreDescription;
    .registers 4

    .line 97
    new-instance v0, Landroid/app/backup/RestoreDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/backup/RestoreDescription;-><init>(Landroid/os/Parcel;Landroid/app/backup/RestoreDescription-IA;)V

    .line 98
    const-string p1, "NO_MORE_PACKAGES"

    invoke-static {v0}, Landroid/app/backup/RestoreDescription;->-$$Nest$fgetmPackageName(Landroid/app/backup/RestoreDescription;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 99
    sget-object v0, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    goto :goto_16

    .line 100
    :cond_15
    nop

    .line 98
    :goto_16
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

    .line 95
    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreDescription$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/backup/RestoreDescription;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/backup/RestoreDescription;
    .registers 2

    .line 104
    new-array p1, p1, [Landroid/app/backup/RestoreDescription;

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

    .line 95
    invoke-virtual {p0, p1}, Landroid/app/backup/RestoreDescription$1;->newArray(I)[Landroid/app/backup/RestoreDescription;

    move-result-object p1

    return-object p1
.end method
