.class public Landroid/content/pm/verify/domain/DomainSet;
.super Ljava/lang/Object;
.source "DomainSet.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/verify/domain/DomainSet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDomains:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 135
    new-instance v0, Landroid/content/pm/verify/domain/DomainSet$1;

    invoke-direct {v0}, Landroid/content/pm/verify/domain/DomainSet$1;-><init>()V

    sput-object v0, Landroid/content/pm/verify/domain/DomainSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-direct {p0, p1}, Landroid/content/pm/verify/domain/DomainSet;->unparcelDomains(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    .line 127
    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    .line 128
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    .line 67
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    return-void
.end method

.method private blacklist parcelDomains(Landroid/os/Parcel;I)V
    .registers 3

    .line 40
    iget-object p2, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    invoke-static {p1, p2}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->writeHostSet(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 41
    return-void
.end method

.method private blacklist unparcelDomains(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->readHostSet(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 85
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 86
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 88
    :cond_11
    check-cast p1, Landroid/content/pm/verify/domain/DomainSet;

    .line 90
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    iget-object p1, p1, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    .line 91
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    .line 90
    return p1

    .line 86
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist getDomains()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 100
    nop

    .line 101
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainSet;->mDomains:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 102
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/content/pm/verify/domain/DomainSet;->parcelDomains(Landroid/os/Parcel;I)V

    .line 112
    return-void
.end method
