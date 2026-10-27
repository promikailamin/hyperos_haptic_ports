.class public final Landroid/app/admin/SystemAuthority;
.super Landroid/app/admin/Authority;
.source "SystemAuthority.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/SystemAuthority;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mSystemEntity:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Landroid/app/admin/SystemAuthority$1;

    invoke-direct {v0}, Landroid/app/admin/SystemAuthority$1;-><init>()V

    sput-object v0, Landroid/app/admin/SystemAuthority;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/app/admin/Authority;-><init>()V

    .line 47
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/admin/SystemAuthority;->mSystemEntity:Ljava/lang/String;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/SystemAuthority-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/SystemAuthority;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Landroid/app/admin/Authority;-><init>()V

    .line 42
    const-string/jumbo v0, "systemEntity must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Landroid/app/admin/SystemAuthority;->mSystemEntity:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 63
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 64
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 65
    :cond_11
    check-cast p1, Landroid/app/admin/SystemAuthority;

    .line 66
    iget-object v0, p0, Landroid/app/admin/SystemAuthority;->mSystemEntity:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/admin/SystemAuthority;->mSystemEntity:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 64
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getSystemEntity()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/app/admin/SystemAuthority;->mSystemEntity:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 71
    iget-object v0, p0, Landroid/app/admin/SystemAuthority;->mSystemEntity:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemAuthority { mSystemEntity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/SystemAuthority;->mSystemEntity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 81
    iget-object p2, p0, Landroid/app/admin/SystemAuthority;->mSystemEntity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 82
    return-void
.end method
