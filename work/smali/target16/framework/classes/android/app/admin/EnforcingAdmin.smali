.class public final Landroid/app/admin/EnforcingAdmin;
.super Ljava/lang/Object;
.source "EnforcingAdmin.java"

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
            "Landroid/app/admin/EnforcingAdmin;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAuthority:Landroid/app/admin/Authority;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 151
    new-instance v0, Landroid/app/admin/EnforcingAdmin$1;

    invoke-direct {v0}, Landroid/app/admin/EnforcingAdmin$1;-><init>()V

    sput-object v0, Landroid/app/admin/EnforcingAdmin;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 75
    new-instance v0, Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mUserHandle:Landroid/os/UserHandle;

    .line 76
    const-class v0, Landroid/app/admin/Authority;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/admin/Authority;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/Authority;

    .line 76
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/Authority;

    iput-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mAuthority:Landroid/app/admin/Authority;

    .line 78
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Landroid/app/admin/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 80
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/EnforcingAdmin-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/EnforcingAdmin;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/app/admin/Authority;Landroid/os/UserHandle;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/admin/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 53
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/Authority;

    iput-object p1, p0, Landroid/app/admin/EnforcingAdmin;->mAuthority:Landroid/app/admin/Authority;

    .line 54
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Landroid/app/admin/EnforcingAdmin;->mUserHandle:Landroid/os/UserHandle;

    .line 55
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/admin/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 56
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/app/admin/Authority;Landroid/os/UserHandle;Landroid/content/ComponentName;)V
    .registers 5

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/admin/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    .line 68
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/Authority;

    iput-object p1, p0, Landroid/app/admin/EnforcingAdmin;->mAuthority:Landroid/app/admin/Authority;

    .line 69
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    iput-object p1, p0, Landroid/app/admin/EnforcingAdmin;->mUserHandle:Landroid/os/UserHandle;

    .line 70
    iput-object p4, p0, Landroid/app/admin/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 71
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 117
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 118
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3f

    .line 119
    :cond_12
    check-cast p1, Landroid/app/admin/EnforcingAdmin;

    .line 120
    iget-object v2, p0, Landroid/app/admin/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/admin/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/app/admin/EnforcingAdmin;->mAuthority:Landroid/app/admin/Authority;

    iget-object v3, p1, Landroid/app/admin/EnforcingAdmin;->mAuthority:Landroid/app/admin/Authority;

    .line 121
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/app/admin/EnforcingAdmin;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Landroid/app/admin/EnforcingAdmin;->mUserHandle:Landroid/os/UserHandle;

    .line 122
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Landroid/app/admin/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/app/admin/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    .line 123
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_3e

    :cond_3d
    move v0, v1

    .line 120
    :goto_3e
    return v0

    .line 118
    :cond_3f
    :goto_3f
    return v1
.end method

.method public whitelist getAuthority()Landroid/app/admin/Authority;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mAuthority:Landroid/app/admin/Authority;

    return-object v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 128
    iget-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/admin/EnforcingAdmin;->mAuthority:Landroid/app/admin/Authority;

    iget-object v2, p0, Landroid/app/admin/EnforcingAdmin;->mUserHandle:Landroid/os/UserHandle;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnforcingAdmin { mPackageName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAuthority= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/EnforcingAdmin;->mAuthority:Landroid/app/admin/Authority;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUserHandle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/EnforcingAdmin;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mComponentName= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 144
    iget-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mAuthority:Landroid/app/admin/Authority;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 147
    iget-object v0, p0, Landroid/app/admin/EnforcingAdmin;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    return-void
.end method
