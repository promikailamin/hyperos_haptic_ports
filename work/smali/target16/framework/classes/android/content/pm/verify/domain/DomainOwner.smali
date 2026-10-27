.class public final Landroid/content/pm/verify/domain/DomainOwner;
.super Ljava/lang/Object;
.source "DomainOwner.java"

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
            "Landroid/content/pm/verify/domain/DomainOwner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOverrideable:Z

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 178
    new-instance v0, Landroid/content/pm/verify/domain/DomainOwner$1;

    invoke-direct {v0}, Landroid/content/pm/verify/domain/DomainOwner$1;-><init>()V

    sput-object v0, Landroid/content/pm/verify/domain/DomainOwner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 166
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 167
    :goto_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 169
    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    .line 170
    const-class p1, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 172
    iput-boolean v0, p0, Landroid/content/pm/verify/domain/DomainOwner;->mOverrideable:Z

    .line 175
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Z)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    .line 76
    const-class p1, Landroid/annotation/NonNull;

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 78
    iput-boolean p2, p0, Landroid/content/pm/verify/domain/DomainOwner;->mOverrideable:Z

    .line 81
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 120
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 121
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 123
    :cond_12
    check-cast p1, Landroid/content/pm/verify/domain/DomainOwner;

    .line 125
    iget-object v2, p0, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    .line 126
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-boolean v2, p0, Landroid/content/pm/verify/domain/DomainOwner;->mOverrideable:Z

    iget-boolean p1, p1, Landroid/content/pm/verify/domain/DomainOwner;->mOverrideable:Z

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    .line 125
    :goto_26
    return v0

    .line 121
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 136
    nop

    .line 137
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 138
    mul-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/content/pm/verify/domain/DomainOwner;->mOverrideable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    return v0
.end method

.method public whitelist isOverrideable()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Landroid/content/pm/verify/domain/DomainOwner;->mOverrideable:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DomainOwner { packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", overrideable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/verify/domain/DomainOwner;->mOverrideable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 148
    nop

    .line 149
    iget-boolean p2, p0, Landroid/content/pm/verify/domain/DomainOwner;->mOverrideable:Z

    if-eqz p2, :cond_8

    const/4 p2, 0x2

    int-to-byte p2, p2

    goto :goto_9

    :cond_8
    const/4 p2, 0x0

    .line 150
    :goto_9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 151
    iget-object p2, p0, Landroid/content/pm/verify/domain/DomainOwner;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    return-void
.end method
