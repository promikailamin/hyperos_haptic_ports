.class public final Landroid/credentials/CredentialDescription;
.super Ljava/lang/Object;
.source "CredentialDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/credentials/CredentialDescription;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_ALLOWED_ENTRIES_PER_DESCRIPTION:I = 0x10


# instance fields
.field private final blacklist mCredentialEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedElementKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Landroid/credentials/CredentialDescription$1;

    invoke-direct {v0}, Landroid/credentials/CredentialDescription$1;-><init>()V

    sput-object v0, Landroid/credentials/CredentialDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    sget-object v3, Landroid/service/credentials/CredentialEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 90
    iput-object v0, p0, Landroid/credentials/CredentialDescription;->mType:Ljava/lang/String;

    .line 91
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mType:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 92
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/credentials/CredentialDescription;->mSupportedElementKeys:Ljava/util/Set;

    .line 93
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mSupportedElementKeys:Ljava/util/Set;

    invoke-static {p1, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 95
    iput-object v2, p0, Landroid/credentials/CredentialDescription;->mCredentialEntries:Ljava/util/List;

    .line 96
    const-class p1, Landroid/annotation/NonNull;

    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mCredentialEntries:Ljava/util/List;

    invoke-static {p1, v3, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 98
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/credentials/CredentialDescription-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/credentials/CredentialDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string/jumbo v0, "type must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/CredentialDescription;->mType:Ljava/lang/String;

    .line 75
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Landroid/credentials/CredentialDescription;->mSupportedElementKeys:Ljava/util/Set;

    .line 76
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Landroid/credentials/CredentialDescription;->mCredentialEntries:Ljava/util/List;

    .line 77
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const/16 v0, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt p2, v0, :cond_2a

    move p2, v1

    goto :goto_2b

    :cond_2a
    move p2, v2

    :goto_2b
    const-string v0, "The number of Credential Entries exceed 16."

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 80
    invoke-static {p1, p3}, Landroid/credentials/CredentialDescription;->compareEntryTypes(Ljava/lang/String;Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_37

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    const-string p1, "Credential Entry type(s) do not match the request type."

    invoke-static {v1, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 82
    return-void
.end method

.method private static blacklist compareEntryTypes(Ljava/lang/String;Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;)I"
        }
    .end annotation

    .line 102
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/credentials/CredentialDescription$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/credentials/CredentialDescription$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 104
    invoke-interface {p0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    .line 102
    return p0
.end method

.method static synthetic blacklist lambda$compareEntryTypes$0(Ljava/lang/String;Landroid/service/credentials/CredentialEntry;)Z
    .registers 2

    .line 104
    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 172
    instance-of v0, p1, Landroid/credentials/CredentialDescription;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 173
    return v1

    .line 175
    :cond_6
    check-cast p1, Landroid/credentials/CredentialDescription;

    .line 176
    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mType:Ljava/lang/String;

    iget-object v2, p1, Landroid/credentials/CredentialDescription;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mSupportedElementKeys:Ljava/util/Set;

    iget-object p1, p1, Landroid/credentials/CredentialDescription;->mSupportedElementKeys:Ljava/util/Set;

    .line 177
    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 176
    :goto_1f
    return v1
.end method

.method public whitelist getCredentialEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/credentials/CredentialEntry;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mCredentialEntries:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getSupportedElementKeys()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Landroid/credentials/CredentialDescription;->mSupportedElementKeys:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 138
    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mType:Ljava/lang/String;

    iget-object v1, p0, Landroid/credentials/CredentialDescription;->mSupportedElementKeys:Ljava/util/Set;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 128
    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mSupportedElementKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 130
    iget-object v0, p0, Landroid/credentials/CredentialDescription;->mCredentialEntries:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 131
    return-void
.end method
