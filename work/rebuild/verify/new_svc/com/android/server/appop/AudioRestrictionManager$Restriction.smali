.class public final Lcom/android/server/appop/AudioRestrictionManager$Restriction;
.super Ljava/lang/Record;
.source "AudioRestrictionManager.java"


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
        "mode",
        "exceptionPackages"
    }
    componentSignatures = {
        null,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Set<",
                "Ljava/lang/String;",
                ">;"
            }
        .end subannotation
    }
    componentTypes = {
        I,
        Ljava/util/Set;
    }
.end annotation


# instance fields
.field public final exceptionPackages:Ljava/util/Set;

.field public final mode:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetexceptionPackages(Lcom/android/server/appop/AudioRestrictionManager$Restriction;)Ljava/util/Set;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmode(Lcom/android/server/appop/AudioRestrictionManager$Restriction;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    return p0
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .registers 6

    .line 89
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    .line 90
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v1, 0x3

    if-eq p1, v1, :cond_14

    const/4 v1, 0x2

    if-eq p1, v1, :cond_14

    const/4 v1, 0x4

    if-ne p1, v1, :cond_13

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 94
    :cond_14
    :goto_14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 92
    const-string v2, "Invalid mode for restriction %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 89
    iput p1, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    iput-object p2, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    if-eqz v0, :cond_18

    check-cast p1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;

    iget v0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    iget v1, p1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    if-ne v0, v1, :cond_18

    iget-object p0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Ljava/util/Set;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    iget-object p0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Ljava/util/Set;

    invoke-static {v0, p0}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restriction[mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->mode:I

    .line 99
    invoke-static {v1}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", exceptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/appop/AudioRestrictionManager$Restriction;->exceptionPackages:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
