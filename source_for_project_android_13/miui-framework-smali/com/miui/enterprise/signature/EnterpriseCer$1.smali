.class Lcom/miui/enterprise/signature/EnterpriseCer$1;
.super Ljava/lang/Object;
.source "EnterpriseCer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/signature/EnterpriseCer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/miui/enterprise/signature/EnterpriseCer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/miui/enterprise/signature/EnterpriseCer;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 168
    new-instance v0, Lcom/miui/enterprise/signature/EnterpriseCer;

    invoke-direct {v0, p1}, Lcom/miui/enterprise/signature/EnterpriseCer;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/enterprise/signature/EnterpriseCer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/enterprise/signature/EnterpriseCer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/miui/enterprise/signature/EnterpriseCer;
    .registers 3
    .param p1, "size"    # I

    .line 173
    new-array v0, p1, [Lcom/miui/enterprise/signature/EnterpriseCer;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 165
    invoke-virtual {p0, p1}, Lcom/miui/enterprise/signature/EnterpriseCer$1;->newArray(I)[Lcom/miui/enterprise/signature/EnterpriseCer;

    move-result-object p1

    return-object p1
.end method
