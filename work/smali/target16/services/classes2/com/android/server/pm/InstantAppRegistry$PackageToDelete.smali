.class public final Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;
.super Ljava/lang/Record;
.source "InstantAppRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "packageName",
        "lastUsedAtMillis",
        "earliestFirstInstallTimeMillis"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        J,
        J
    }
.end annotation


# instance fields
.field public final earliestFirstInstallTimeMillis:J

.field public final lastUsedAtMillis:J

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .registers 6

    .line 1382
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->packageName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->lastUsedAtMillis:J

    iput-wide p4, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->earliestFirstInstallTimeMillis:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJLcom/android/server/pm/InstantAppRegistry-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    instance-of v0, p1, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;

    if-eqz v0, :cond_22

    check-cast p1, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;

    iget-wide v0, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->lastUsedAtMillis:J

    iget-wide v2, p1, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->lastUsedAtMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-wide v0, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->earliestFirstInstallTimeMillis:J

    iget-wide v2, p1, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->earliestFirstInstallTimeMillis:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->packageName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->packageName:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->lastUsedAtMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->earliestFirstInstallTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p0, v2, v0

    return-object v2
.end method

.method public earliestFirstInstallTimeMillis()J
    .registers 3

    .line 1382
    iget-wide v0, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->earliestFirstInstallTimeMillis:J

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 1382
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 5

    .line 1382
    iget-wide v0, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->lastUsedAtMillis:J

    iget-wide v2, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->earliestFirstInstallTimeMillis:J

    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete$$ExternalSyntheticRecord0;->m(JJLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public lastUsedAtMillis()J
    .registers 3

    .line 1382
    iget-wide v0, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->lastUsedAtMillis:J

    return-wide v0
.end method

.method public packageName()Ljava/lang/String;
    .registers 1

    .line 1382
    iget-object p0, p0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1382
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/pm/InstantAppRegistry$PackageToDelete;

    const-string/jumbo v1, "packageName;lastUsedAtMillis;earliestFirstInstallTimeMillis"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
