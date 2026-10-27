.class public final Landroid/content/pm/Capability;
.super Ljava/lang/Object;
.source "Capability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/Capability$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/Capability;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 100
    new-instance v0, Landroid/content/pm/Capability$1;

    invoke-direct {v0}, Landroid/content/pm/Capability$1;-><init>()V

    sput-object v0, Landroid/content/pm/Capability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/pm/Capability$Builder;)V
    .registers 2

    .line 62
    invoke-static {p1}, Landroid/content/pm/Capability$Builder;->-$$Nest$fgetmName(Landroid/content/pm/Capability$Builder;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/Capability;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/Capability$Builder;Landroid/content/pm/Capability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/Capability;-><init>(Landroid/content/pm/Capability$Builder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/pm/Capability;)V
    .registers 2

    .line 58
    iget-object p1, p1, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/content/pm/Capability;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/Capability-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/Capability;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 49
    iput-object p1, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    .line 50
    return-void

    .line 47
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'/\' is not permitted in the capability name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    .line 79
    instance-of v0, p1, Landroid/content/pm/Capability;

    if-nez v0, :cond_6

    .line 80
    const/4 p1, 0x0

    return p1

    .line 82
    :cond_6
    iget-object v0, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    check-cast p1, Landroid/content/pm/Capability;

    iget-object p1, p1, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 92
    iget-object p2, p0, Landroid/content/pm/Capability;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return-void
.end method
