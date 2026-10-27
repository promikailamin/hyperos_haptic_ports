.class public final Landroid/app/admin/LockTaskPolicy;
.super Landroid/app/admin/PolicyValue;
.source "LockTaskPolicy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/admin/PolicyValue<",
        "Landroid/app/admin/LockTaskPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/LockTaskPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT_LOCK_TASK_FLAG:I = 0x10


# instance fields
.field private blacklist mFlags:I

.field private blacklist mPackages:Ljava/util/Set;
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

    .line 178
    new-instance v0, Landroid/app/admin/LockTaskPolicy$1;

    invoke-direct {v0}, Landroid/app/admin/LockTaskPolicy$1;-><init>()V

    sput-object v0, Landroid/app/admin/LockTaskPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3

    .line 86
    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    .line 46
    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 87
    iput p1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 88
    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/admin/LockTaskPolicy;)V
    .registers 4

    .line 115
    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    .line 46
    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 116
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    .line 117
    iget p1, p1, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    iput p1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 118
    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 102
    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    .line 46
    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    .line 105
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_28

    .line 106
    iget-object v2, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 108
    :cond_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 109
    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/LockTaskPolicy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/admin/LockTaskPolicy;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    .line 46
    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 77
    if-eqz p1, :cond_13

    .line 78
    invoke-direct {p0, p1}, Landroid/app/admin/LockTaskPolicy;->setPackagesInternal(Ljava/util/Set;)V

    .line 80
    :cond_13
    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Landroid/app/admin/PolicyValue;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    .line 46
    const/16 v0, 0x10

    iput v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 95
    if-eqz p1, :cond_13

    .line 96
    invoke-direct {p0, p1}, Landroid/app/admin/LockTaskPolicy;->setPackagesInternal(Ljava/util/Set;)V

    .line 98
    :cond_13
    iput p2, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 99
    invoke-virtual {p0, p0}, Landroid/app/admin/LockTaskPolicy;->setValue(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method private blacklist setPackagesInternal(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 138
    invoke-static {v1}, Landroid/app/admin/PolicySizeVerifier;->enforceMaxPackageNameLength(Ljava/lang/String;)V

    .line 139
    goto :goto_4

    .line 140
    :cond_14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    .line 141
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 145
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 146
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    .line 147
    :cond_12
    check-cast p1, Landroid/app/admin/LockTaskPolicy;

    .line 148
    iget-object v2, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    iget-object v3, p1, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget v2, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    iget p1, p1, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    if-ne v2, p1, :cond_25

    goto :goto_26

    :cond_25
    move v0, v1

    :goto_26
    return v0

    .line 146
    :cond_27
    :goto_27
    return v1
.end method

.method public whitelist getFlags()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    return v0
.end method

.method public whitelist getPackages()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getValue()Landroid/app/admin/LockTaskPolicy;
    .registers 1

    .line 70
    return-object p0
.end method

.method public bridge synthetic blacklist getValue()Ljava/lang/Object;
    .registers 2

    .line 36
    invoke-virtual {p0}, Landroid/app/admin/LockTaskPolicy;->getValue()Landroid/app/admin/LockTaskPolicy;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 154
    iget-object v0, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    iget v1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setFlags(I)V
    .registers 2

    .line 133
    iput p1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    .line 134
    return-void
.end method

.method public blacklist setPackages(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-direct {p0, p1}, Landroid/app/admin/LockTaskPolicy;->setPackagesInternal(Ljava/util/Set;)V

    .line 127
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockTaskPolicy {mPackages= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    iget-object v2, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mFlags= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 170
    iget-object p2, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object p2, p0, Landroid/app/admin/LockTaskPolicy;->mPackages:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 172
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    goto :goto_f

    .line 174
    :cond_1f
    iget p2, p0, Landroid/app/admin/LockTaskPolicy;->mFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return-void
.end method
