.class public final Landroid/app/timezonedetector/TelephonySignal;
.super Ljava/lang/Object;
.source "TelephonySignal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezonedetector/TelephonySignal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCountryIsoCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDefaultCountryIsoCode:Ljava/lang/String;

.field private final blacklist mMcc:Ljava/lang/String;

.field private final blacklist mMnc:Ljava/lang/String;

.field private final blacklist mNitzSignal:Landroid/app/timezonedetector/NitzSignal;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 169
    new-instance v0, Landroid/app/timezonedetector/TelephonySignal$1;

    invoke-direct {v0}, Landroid/app/timezonedetector/TelephonySignal$1;-><init>()V

    sput-object v0, Landroid/app/timezonedetector/TelephonySignal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/app/timezonedetector/NitzSignal;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/timezonedetector/NitzSignal;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/timezonedetector/TelephonySignal;->mMcc:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Landroid/app/timezonedetector/TelephonySignal;->mMnc:Ljava/lang/String;

    .line 71
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/app/timezonedetector/TelephonySignal;->mDefaultCountryIsoCode:Ljava/lang/String;

    .line 72
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Ljava/util/Set;->copyOf(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroid/app/timezonedetector/TelephonySignal;->mCountryIsoCodes:Ljava/util/Set;

    .line 73
    iput-object p5, p0, Landroid/app/timezonedetector/TelephonySignal;->mNitzSignal:Landroid/app/timezonedetector/NitzSignal;

    .line 74
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 108
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 109
    return v0

    .line 111
    :cond_4
    instance-of v1, p1, Landroid/app/timezonedetector/TelephonySignal;

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    check-cast p1, Landroid/app/timezonedetector/TelephonySignal;

    .line 112
    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mMcc:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/timezonedetector/TelephonySignal;->mMcc:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mMnc:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/timezonedetector/TelephonySignal;->mMnc:Ljava/lang/String;

    .line 113
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mDefaultCountryIsoCode:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/timezonedetector/TelephonySignal;->mDefaultCountryIsoCode:Ljava/lang/String;

    .line 114
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mCountryIsoCodes:Ljava/util/Set;

    iget-object v3, p1, Landroid/app/timezonedetector/TelephonySignal;->mCountryIsoCodes:Ljava/util/Set;

    .line 115
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mNitzSignal:Landroid/app/timezonedetector/NitzSignal;

    iget-object p1, p1, Landroid/app/timezonedetector/TelephonySignal;->mNitzSignal:Landroid/app/timezonedetector/NitzSignal;

    .line 116
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v2

    .line 112
    :goto_3f
    return v0

    .line 118
    :cond_40
    return v2
.end method

.method public blacklist getCountryIsoCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mCountryIsoCodes:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getDefaultCountryIsoCode()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mDefaultCountryIsoCode:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMcc()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMnc()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNitzSignal()Landroid/app/timezonedetector/NitzSignal;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mNitzSignal:Landroid/app/timezonedetector/NitzSignal;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 123
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mMcc:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mMnc:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/timezonedetector/TelephonySignal;->mDefaultCountryIsoCode:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/timezonedetector/TelephonySignal;->mCountryIsoCodes:Ljava/util/Set;

    iget-object v4, p0, Landroid/app/timezonedetector/TelephonySignal;->mNitzSignal:Landroid/app/timezonedetector/NitzSignal;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonySignal{mcc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mnc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/timezonedetector/TelephonySignal;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", defaultCountryIsoCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/app/timezonedetector/TelephonySignal;->mDefaultCountryIsoCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryIsoCodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mCountryIsoCodes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNitzSignal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mNitzSignal:Landroid/app/timezonedetector/NitzSignal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 160
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mDefaultCountryIsoCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/timezonedetector/TelephonySignal;->mCountryIsoCodes:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 165
    iget-object v0, p0, Landroid/app/timezonedetector/TelephonySignal;->mNitzSignal:Landroid/app/timezonedetector/NitzSignal;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 166
    return-void
.end method
