.class public final Landroid/hardware/soundtrigger/KeyphraseMetadata;
.super Ljava/lang/Object;
.source "KeyphraseMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/KeyphraseMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mId:I

.field private final blacklist mKeyphrase:Ljava/lang/String;

.field private final blacklist mRecognitionModeFlags:I

.field private final blacklist mSupportedLocales:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 193
    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseMetadata$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/KeyphraseMetadata$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/util/Set;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;I)V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    .line 52
    iput-object p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    .line 53
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1, p3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    .line 54
    iput p4, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    .line 55
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 177
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v3

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 180
    iput v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    .line 181
    iput-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    .line 182
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 184
    iput-object v3, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    .line 185
    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 187
    iput p1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    .line 190
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 212
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 126
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 127
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 129
    :cond_12
    check-cast p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;

    .line 131
    iget v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    iget v3, p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    if-ne v2, v3, :cond_35

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    .line 133
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    iget-object v3, p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    .line 134
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    iget v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    iget p1, p1, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    if-ne v2, p1, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    .line 131
    :goto_36
    return v0

    .line 127
    :cond_37
    :goto_37
    return v1
.end method

.method public blacklist getId()I
    .registers 2

    .line 58
    iget v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    return v0
.end method

.method public blacklist getKeyphrase()Ljava/lang/String;
    .registers 2

    .line 63
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRecognitionModeFlags()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    return v0
.end method

.method public blacklist getSupportedLocales()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 144
    nop

    .line 145
    iget v0, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    .line 146
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 147
    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 148
    mul-int/2addr v0, v1

    iget v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    add-int/2addr v0, v1

    .line 149
    return v0
.end method

.method public greylist-max-o supportsLocale(Ljava/util/Locale;)Z
    .registers 3

    .line 86
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getSupportedLocales()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getSupportedLocales()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method public greylist-max-o supportsPhrase(Ljava/lang/String;)Z
    .registers 3

    .line 79
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getKeyphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Landroid/hardware/soundtrigger/KeyphraseMetadata;->getKeyphrase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    :goto_18
    return p1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyphraseMetadata { id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyphrase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedLocales = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recognitionModeFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

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
    .registers 3

    .line 158
    iget p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mKeyphrase:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mSupportedLocales:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 161
    iget p2, p0, Landroid/hardware/soundtrigger/KeyphraseMetadata;->mRecognitionModeFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return-void
.end method
