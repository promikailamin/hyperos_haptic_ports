.class public final Landroid/app/admin/DevicePolicyStringResource;
.super Ljava/lang/Object;
.source "DevicePolicyStringResource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mResource:Landroid/app/admin/ParcelableResource;

.field private final blacklist mResourceIdInCallingPackage:I

.field private final blacklist mStringId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Landroid/app/admin/DevicePolicyStringResource$1;

    invoke-direct {v0}, Landroid/app/admin/DevicePolicyStringResource$1;-><init>()V

    sput-object v0, Landroid/app/admin/DevicePolicyStringResource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    .line 59
    new-instance v0, Landroid/app/admin/ParcelableResource;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p3, v1}, Landroid/app/admin/ParcelableResource;-><init>(Landroid/content/Context;II)V

    invoke-direct {p0, p2, p3, v0}, Landroid/app/admin/DevicePolicyStringResource;-><init>(Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V

    .line 61
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-string/jumbo v0, "stringId must be provided."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    const-string v0, "ParcelableResource must be provided."

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    .line 71
    iput p2, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    .line 72
    iput-object p3, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;ILandroid/app/admin/ParcelableResource;Landroid/app/admin/DevicePolicyStringResource-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/admin/DevicePolicyStringResource;-><init>(Ljava/lang/String;ILandroid/app/admin/ParcelableResource;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 104
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 105
    :cond_12
    check-cast p1, Landroid/app/admin/DevicePolicyStringResource;

    .line 106
    iget-object v2, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    if-ne v2, v3, :cond_2b

    iget v2, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    iget v3, p1, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    if-ne v2, v3, :cond_2b

    iget-object v2, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    iget-object p1, p1, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    .line 108
    invoke-virtual {v2, p1}, Landroid/app/admin/ParcelableResource;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 106
    :goto_2c
    return v0

    .line 104
    :cond_2d
    :goto_2d
    return v1
.end method

.method public blacklist getResource()Landroid/app/admin/ParcelableResource;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    return-object v0
.end method

.method public whitelist getResourceIdInCallingPackage()I
    .registers 2

    .line 88
    iget v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    return v0
.end method

.method public whitelist getStringId()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 113
    iget-object v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    iget v1, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 123
    iget-object v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mStringId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mResourceIdInCallingPackage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-object v0, p0, Landroid/app/admin/DevicePolicyStringResource;->mResource:Landroid/app/admin/ParcelableResource;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 126
    return-void
.end method
