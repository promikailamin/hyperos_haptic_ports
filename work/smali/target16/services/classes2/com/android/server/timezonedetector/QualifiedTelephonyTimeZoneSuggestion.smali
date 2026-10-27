.class public final Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;
.super Ljava/lang/Record;
.source "QualifiedTelephonyTimeZoneSuggestion.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "suggestion",
        "score"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;,
        I
    }
.end annotation


# instance fields
.field public final score:I

.field public final suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;


# direct methods
.method public constructor <init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;I)V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    iput p2, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score:I

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;

    iget v0, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget v1, p1, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score:I

    if-ne v0, v1, :cond_18

    iget-object p0, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    iget-object p1, p1, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    iget p0, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 28
    iget v0, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget-object p0, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-static {v0, p0}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public score()I
    .registers 1

    .line 28
    iget p0, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score:I

    return p0
.end method

.method public suggestion()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 28
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;

    const-string/jumbo v1, "suggestion;score"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
